using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Datos.Daos;
using Datos.Modelo;

namespace IEL.Vistas
{
    public partial class AreaDePractica : System.Web.UI.Page
    {
        private int tema;
        private string usuario;
        public class Tematica
        {
            public string Oracion { get; set; }
            public string Buena { get; set; }
            public string mala1 { get; set; }
            public string mala2 { get; set; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }else
            {
                usuario = Session["usuario"].ToString();
                //Cambiar por la session
                tema = 1;
                GramaticaDAO dao = new GramaticaDAO();
                List<Gramatica> lista = dao.getByTema(tema);
                Gramatica gramatica = lista[new Random().Next(0, lista.Count)];
                string[] arr = gramatica.Formula.Split('_');
                //10 preguntas
                Tematica[] preguntas = new Tematica[10];
                SujetoDAO sujetoDao = new SujetoDAO();
                List<Sujeto> sujetos= sujetoDao.getAll();
                VerboDAO verboDao = new VerboDAO();
                for (int i=0; i>10; i++)
                {
                    Tematica tmt = new Tematica();
                    int no = new Random().Next(0, sujetos.Count);
                    for (int j=0; j<arr.Length; j++)
                    {
                        switch (arr[j])
                        {
                            case "sujeto":
                                tmt.Oracion = sujetos[no].sujeto+" ";
                                break;
                            case "tobe":
                                tmt.Oracion += "   ";
                                tmt.Buena = sujetos[no].ser;
                                if (tmt.Buena.Equals("am")){
                                    tmt.mala1 = "are";
                                    tmt.mala2 = "is";
                                }else if (tmt.Buena.Equals("is"))
                                {
                                    tmt.mala1 = "are";
                                    tmt.mala2 = "am";
                                }else
                                {
                                    tmt.mala1 = "am";
                                    tmt.mala2 = "is";
                                }
                                break;
                            case "verbo":

                                break;
                            default:
                                break;
                        }
                    }
                }
            }
        }
    }
}