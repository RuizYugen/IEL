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
    /// Summary description for wsTema
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsTema : System.Web.Services.WebService
    {

        [WebMethod]
        public string getAll()
        {
            TemaDAO dao = new TemaDAO();
            List<Tema> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getTemaByID(int ID)
        {
            TemaDAO dao = new TemaDAO();
            Tema res = dao.getTemaByID(ID);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String NombreTraduccion, String NombreIngles, String ContenidoTraduccion, String ContenidoIngles, int Dificultad)
        {
            bool result = false;
            TemaDAO dao = new TemaDAO();
            Tema obj = new Tema() {NombreTraduccion=NombreTraduccion,NombreIngles=NombreIngles,ContenidoIngles=ContenidoIngles,ContenidoTraduccion=ContenidoTraduccion,Dificultad=Dificultad };
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int idTema)
        {
            bool result = false;
            TemaDAO dao = new TemaDAO();
            //Tema obj = new Tema() { IdTema = idTema, NombreTraduccion = NombreTraduccion, NombreIngles = NombreIngles, ContenidoIngles = ContenidoIngles, ContenidoTraduccion = ContenidoTraduccion, Dificultad = Dificultad };
            result = dao.delete(idTema);
            return result;
        }

        [WebMethod]
        public bool update2(int idTema, String NombreTraduccion, String NombreIngles, String ContenidoTraduccion, String ContenidoIngles, int Dificultad)
        {
            bool result = false;
            TemaDAO dao = new TemaDAO();
            Tema obj = new Tema() { IdTema = idTema, NombreTraduccion = NombreTraduccion, NombreIngles = NombreIngles, ContenidoIngles = ContenidoIngles, ContenidoTraduccion = ContenidoTraduccion, Dificultad = Dificultad };
            result = dao.update(obj);
            return result;
        }
    }
}
