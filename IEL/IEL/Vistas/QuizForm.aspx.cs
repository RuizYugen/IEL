﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IEL.Vistas
{
    public partial class QuizForm : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] ==null)
            {
                Response.Redirect("Login.aspx");
            }else
            {                
               //logear.InnerHtml = Session["usuario"].ToString();               
            }
        }
    }
}