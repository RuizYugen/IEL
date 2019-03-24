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
    /// Summary description for wsUsuario
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class wsUsuario : System.Web.Services.WebService
    {

        [WebMethod]
        public string getAll()
        {
            UsuarioDAO dao = new UsuarioDAO();
            List<Usuario> lista = dao.getAll();
            String strJSON = JsonConvert.SerializeObject(lista, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public String getUsuarioByID(string User)
        {
            UsuarioDAO dao = new UsuarioDAO();
            Usuario res = dao.getUsuarioByUser(User);
            String strJSON;
            strJSON = JsonConvert.SerializeObject(res, new JsonSerializerSettings { NullValueHandling = NullValueHandling.Ignore });
            return strJSON;
        }

        [WebMethod]
        public bool insert2(String User, String Password, String Nombre, String ApellidoPaterno, String ApellidoMaterno, String Correo,String Foto,String Privilegio)
        {
            bool result = false;
            UsuarioDAO dao = new UsuarioDAO();
            Usuario obj = new Usuario() {User=User,Password=Password,Nombre=Nombre,ApellidoPaterno=ApellidoPaterno,ApellidoMaterno=ApellidoMaterno,Correo=Correo,Foto=Foto,Privilegio=Privilegio};
            result = dao.insert(obj);
            return result;
        }

        [WebMethod]
        public bool delete2(String User)
        {
            bool result = false;
            UsuarioDAO dao = new UsuarioDAO();
            //Usuario obj = new Usuario() { User = User, Password = Password, Nombre = Nombre, ApellidoPaterno = ApellidoPaterno, ApellidoMaterno = ApellidoMaterno, Correo = Correo, Foto = Foto, Privilegio = Privilegio };
            result = dao.delete(User);
            return result;
        }

        [WebMethod]
        public bool update2(String User, String Password, String Nombre, String ApellidoPaterno, String ApellidoMaterno, String Correo, String Foto, String Privilegio)
        {
            bool result = false;
            UsuarioDAO dao = new UsuarioDAO();
            Usuario obj = new Usuario() { User = User, Password = Password, Nombre = Nombre, ApellidoPaterno = ApellidoPaterno, ApellidoMaterno = ApellidoMaterno, Correo = Correo, Foto = Foto, Privilegio = Privilegio };
            result = dao.update(obj);
            return result;
        }
    }
}
