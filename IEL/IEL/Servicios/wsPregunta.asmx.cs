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
    /// Summary description for wsPregunta
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsPregunta : System.Web.Services.WebService
    {

        [WebMethod]
        public string getAll()
        {
            PreguntaDAO dao = new PreguntaDAO();
            List<Pregunta> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getPreguntaByID(int idPregunta)
        {
            PreguntaDAO dao = new PreguntaDAO();
            Pregunta res = dao.getPreguntaByID(idPregunta);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String pregunta, String RespuestaCorrecta, String RespuestaIncorrecta1, String RespuestaIncorrecta2, String RespuestaIncorrecta3)
        {
            bool result = false;
            PreguntaDAO dao = new PreguntaDAO();
            Pregunta obj = new Pregunta() { pregunta=pregunta,RespuestaCorrecta=RespuestaCorrecta,RespuestaIncorrecta1=RespuestaIncorrecta1,RespuestaIncorrecta2=RespuestaIncorrecta2,RespuestaIncorrecta3=RespuestaIncorrecta3};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(int idPregunta)
        {
            bool result = false;
            PreguntaDAO dao = new PreguntaDAO();
            //Verbo obj = new Verbo() { IdVerbo = IdVerbo, VerboTraduccion = VerboTraduccion, VerboPresenteSimple = VerboPresenteSimple, VerboPasadoSimple = VerboPasadoSimple, VerboPasadoParticipio = VerboPasadoParticipio };
            result = dao.delete(idPregunta);
            return result;
        }

        [WebMethod]
        public bool update2(int idPregunta,String pregunta, String RespuestaCorrecta, String RespuestaIncorrecta1, String RespuestaIncorrecta2, String RespuestaIncorrecta3)
        {
            bool result = false;
            PreguntaDAO dao = new PreguntaDAO();
            Pregunta obj = new Pregunta() { idPregunta=idPregunta,pregunta = pregunta, RespuestaCorrecta = RespuestaCorrecta, RespuestaIncorrecta1 = RespuestaIncorrecta1, RespuestaIncorrecta2 = RespuestaIncorrecta2, RespuestaIncorrecta3 = RespuestaIncorrecta3 };
            result = dao.update(obj);
            return result;
        }
    }
}
