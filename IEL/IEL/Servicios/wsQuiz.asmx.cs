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
    /// Summary description for wsQuiz
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsQuiz : System.Web.Services.WebService
    {
        

        [WebMethod]
        public string getAll()
        {
            QuizDAO dao = new QuizDAO();
            List<Quiz> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getQuizByID(int ID)
        {
            QuizDAO dao = new QuizDAO();
            Quiz res = dao.getQuizByID(ID);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String Nombre)
        {
            bool result = false;
            QuizDAO dao = new QuizDAO();
            Quiz obj = new Quiz() { Nombre=Nombre};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int idQuiz)
        {
            bool result = false;
            QuizDAO dao = new QuizDAO();
            //Sujeto obj = new Sujeto() { IdSujeto = idSujeto, Objeto = Objeto, Posesivo = Posesivo, Sucesivo = Sucesivo, sujeto = sujeto, SujetoTraducido = sujetoTraducido };
            result = dao.delete(idQuiz);
            return result;
        }

        [WebMethod]
        public bool update2(int idQuiz,String Nombre)
        {
            bool result = false;
            QuizDAO dao = new QuizDAO();
            Quiz obj = new Quiz() { idQuiz=idQuiz,Nombre=Nombre};
            result = dao.update(obj);
            return result;
        }
    }
}
