using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Datos.Daos;
using Datos.Modelo;
using Newtonsoft.Json;
namespace IEL.Servicios
{
    /// <summary>
    /// Summary description for wsSujeto
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsSujeto : System.Web.Services.WebService
    {

        [WebMethod]
        public string getAll()
        {
            SujetoDAO dao = new SujetoDAO();
            List<Sujeto> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore});
            return strJSON;
        }

        [WebMethod]
        public String getSujetoByID(int ID)
        {
            SujetoDAO dao = new SujetoDAO();
            Sujeto res = dao.getSujetoByID(ID);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String Objeto, String Posesivo, String Sucesivo,String sujeto,String sujetoTraducido)
        {
            bool result = false;
            SujetoDAO dao = new SujetoDAO();
            Sujeto obj = new Sujeto() { Objeto=Objeto,Posesivo=Posesivo,Sucesivo=Sucesivo,sujeto=sujeto,SujetoTraducido=sujetoTraducido};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int idSujeto)
        {
            bool result = false;
            SujetoDAO dao = new SujetoDAO();
            //Sujeto obj = new Sujeto() { IdSujeto = idSujeto, Objeto = Objeto, Posesivo = Posesivo, Sucesivo = Sucesivo, sujeto = sujeto, SujetoTraducido = sujetoTraducido };
            result = dao.delete(idSujeto);
            return result;
        }

        [WebMethod]
        public bool update2(int idSujeto, String Objeto, String Posesivo, String Sucesivo, String sujeto, String sujetoTraducido)
        {
            bool result = false;
            SujetoDAO dao = new SujetoDAO();
            Sujeto obj = new Sujeto() { IdSujeto = idSujeto, Objeto = Objeto, Posesivo = Posesivo, Sucesivo = Sucesivo, sujeto = sujeto, SujetoTraducido = sujetoTraducido };
            result = dao.update(obj);
            return result;
        }
    }
}
