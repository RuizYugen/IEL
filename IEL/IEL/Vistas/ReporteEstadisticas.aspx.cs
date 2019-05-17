using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IEL.Vistas
{
    public partial class ReporteEstadisticas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String fecha = DateTime.Now.ToString();

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=print.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);


            GridViewEs.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            iTextSharp.text.Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.AddTitle("Reporte Verbos");
            pdfDoc.AddCreator("IEL");
            String rutaLogo = Server.MapPath("IMG/Nombre.png");
            iTextSharp.text.Image imagen = iTextSharp.text.Image.GetInstance(rutaLogo);
            imagen.BorderWidth = 0;
            imagen.Alignment = Element.ALIGN_RIGHT;
            float percentage = 0.0f;
            percentage = 150 / imagen.Width;
            imagen.ScalePercent(percentage * 100);
            pdfDoc.Open();
            pdfDoc.Add(imagen);
            pdfDoc.Add(new Paragraph("Reporte de Estadisticas"));
            pdfDoc.Add(Chunk.NEWLINE);
            pdfDoc.Add(new Paragraph("Reporge generado el " + fecha));
            pdfDoc.Add(Chunk.NEWLINE);

            htmlParser.Parse(sr);
            pdfDoc.Close();

            Response.Write(pdfDoc);
            Response.End();

        }



        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }

    }
}