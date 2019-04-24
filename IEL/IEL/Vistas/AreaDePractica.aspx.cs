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

            }
        }
    }
}