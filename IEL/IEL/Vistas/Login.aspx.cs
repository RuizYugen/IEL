using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IEL.Vistas
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario=user.Value;
            string pass = password.Value;
            if (pass.Equals("") == false && usuario.Equals("") == false)
            {

            }else
            {
                Response.Write("<script language=javascript>alert('Ingrese los todos los campos');</script>");
            }
        }
    }
}