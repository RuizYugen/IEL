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
    /// Summary description for wsVerbo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsVerbo : System.Web.Services.WebService
    {
        [WebMethod]
        public string getAll()
        {
            VerboDAO dao = new VerboDAO();
            List<Verbo> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getVerboByID(int  IdVerbo)
        {
            VerboDAO dao = new VerboDAO();
            Verbo res = dao.getVerboByID(IdVerbo);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String VerboTraduccion,String VerboPresenteSimple,String VerboPasadoSimple,String VerboPasadoParticipio)
        {
            bool result = false;
            VerboDAO dao = new VerboDAO();
            Verbo obj = new Verbo() {VerboTraduccion=VerboTraduccion,VerboPresenteSimple=VerboPresenteSimple,VerboPasadoSimple=VerboPasadoSimple,VerboPasadoParticipio=VerboPasadoParticipio};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int IdVerbo)
        {
            bool result = false;
            VerboDAO dao = new VerboDAO();
            //Verbo obj = new Verbo() { IdVerbo = IdVerbo, VerboTraduccion = VerboTraduccion, VerboPresenteSimple = VerboPresenteSimple, VerboPasadoSimple = VerboPasadoSimple, VerboPasadoParticipio = VerboPasadoParticipio };
            result = dao.delete(IdVerbo);
            return result;
        }

        [WebMethod]
        public bool update2(int IdVerbo, String VerboTraduccion, String VerboPresenteSimple, String VerboPasadoSimple, String VerboPasadoParticipio)
        {
            bool result = false;
            VerboDAO dao = new VerboDAO();
            Verbo obj = new Verbo() { IdVerbo = IdVerbo, VerboTraduccion = VerboTraduccion, VerboPresenteSimple = VerboPresenteSimple, VerboPasadoSimple = VerboPasadoSimple, VerboPasadoParticipio = VerboPasadoParticipio };
            result = dao.update(obj);
            return result;
        }
    }
}
