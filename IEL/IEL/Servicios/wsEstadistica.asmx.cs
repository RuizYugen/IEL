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
    /// Summary description for wsEstadistica
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class wsEstadistica : System.Web.Services.WebService
    {

        [WebMethod]
        public bool Insert(int id, string usuario,int dia, int mes, int anio,int nivel)
        {
            EstadisticaDAO dao = new EstadisticaDAO();
            Estadistica obj = new Estadistica()
            {
                IdEstadistica = id,
                User = usuario,
                Nivel = nivel,
                FechaInicio = new DateTime(anio, mes, dia)
            };
            return dao.insert(obj);
        }

        [WebMethod]
        public bool update(int id, string usuario, int dia, int mes, int anio, int nivel)
        {
            EstadisticaDAO dao = new EstadisticaDAO();
            Estadistica obj = new Estadistica()
            {
                IdEstadistica = id,
                User = usuario,
                Nivel = nivel,
                FechaInicio = new DateTime(anio, mes, dia)
            };
            return dao.update(obj);
        }

        [WebMethod]
        public bool delete(int id)
        {
            EstadisticaDAO dao = new EstadisticaDAO();
            Estadistica obj = new Estadistica()
            {
                IdEstadistica = id
            };
            return dao.delete(obj);
        }

        [WebMethod]
        public string getEstadisticaByUser(string user)
        {
            EstadisticaDAO dao = new EstadisticaDAO();
            string json = JsonConvert.SerializeObject(dao.getEstadisticaByUser(user), new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return json;
        }
    }
}
