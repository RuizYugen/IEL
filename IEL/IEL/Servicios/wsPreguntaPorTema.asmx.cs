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
    /// Summary description for wsPreguntaPorTema
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsPreguntaPorTema : System.Web.Services.WebService
    {

        [WebMethod]
        public string getAll()
        {
            PreguntaPorTemaDAO dao = new PreguntaPorTemaDAO();
            List<PreguntaPorTema> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getPreguntaPorTemaByID(int ID)
        {
            PreguntaPorTemaDAO dao = new PreguntaPorTemaDAO();
            PreguntaPorTema res = dao.getPreguntaPorTemaByID(ID);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(int idPregunta,int idTema)
        {
            bool result = false;
            PreguntaPorTemaDAO dao = new PreguntaPorTemaDAO();
            PreguntaPorTema obj = new PreguntaPorTema() {IdPregunta=idPregunta,IdTema=idTema};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int idPregunta)
        {
            bool result = false;
            PreguntaPorTemaDAO dao = new PreguntaPorTemaDAO();
            //Sujeto obj = new Sujeto() { IdSujeto = idSujeto, Objeto = Objeto, Posesivo = Posesivo, Sucesivo = Sucesivo, sujeto = sujeto, SujetoTraducido = sujetoTraducido };
            result = dao.delete(idPregunta);
            return result;
        }

        [WebMethod]
        public bool update2(int idPregunta,int idTema)
        {
            bool result = false;
            PreguntaPorTemaDAO dao = new PreguntaPorTemaDAO();
            PreguntaPorTema obj = new PreguntaPorTema() { IdPregunta=idPregunta,IdTema=idTema};
            result = dao.update(obj);
            return result;
        }
    }
}
