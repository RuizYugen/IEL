using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos.Modelo;
using Datos.Util;
using MySql.Data.MySqlClient;

namespace Datos.Daos
{
    public class UsuarioDAO
    {
        public List<Usuario> getAll()
        {
            List<Usuario> lista = new List<Usuario>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Usuario" + ";");
            DataTable dt = datos.Tables[0];
            Usuario e;
            foreach (DataRow r in dt.Rows)
            {

                e = new Usuario();
                e.User = (string)r.ItemArray[0];
                e.Password = (string)r.ItemArray[1];
                e.Nombre = (string)r.ItemArray[2];
                e.ApellidoPaterno = (string)r.ItemArray[3];
                e.ApellidoMaterno = (string)r.ItemArray[4];
                e.Correo = (string)r.ItemArray[5];
                e.Foto = (string)r.ItemArray[6];
                e.Privilegio = (string)r.ItemArray[7];
                lista.Add(e);
            }
            return lista;
        }

        public Usuario getUsuarioByUser(string User)
        {
            Usuario res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Usuario WHERE User like '" + User + "';");
            DataTable dt = datos.Tables[0];
            res = new Usuario();
            DataRow row = dt.Rows[0];
            res.User = (string)row.ItemArray[0];
            res.Password = (string)row.ItemArray[1];
            res.Nombre = (string)row.ItemArray[2];
            res.ApellidoPaterno = (string)row.ItemArray[3];
            res.ApellidoMaterno = (string)row.ItemArray[4];
            res.Correo = (string)row.ItemArray[5];
            res.Foto = (string)row.ItemArray[6];
            res.Privilegio = (string)row.ItemArray[7];
            return res;
        }

        public bool delete(Usuario t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Usuario WHERE" + " User like '" + t.User + "';";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                conexion.EjecutaSQLComando(sqlcom);
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }

        public bool update(Usuario e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Usuario SET" +
                    " User=" + e.User + ",Password=" + e.Password + ",Nombre=" + e.Nombre + ",ApellidoPaterno=" + e.ApellidoPaterno + ",ApellidoMaterno=" + e.ApellidoMaterno + ",Correo=" + e.Correo + ",Foto=" + e.Foto + ",Privilegio=" + e.Privilegio+
                    " WHERE User like '" + e.User + "';";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                conexion.EjecutaSQLComando(sqlcom);
                return true;
            }
            catch (Exception)
            {

                return false;
            }

        }

        public bool insert(Usuario i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Usuario (User,Password,Nombre,ApellidoPaterno,ApellidoMaterno,Correo,Foto,Privilegio) VALUES (@User,@Password,@Nombre,@ApellidoPaterno,@ApellidoMaterno,@Correo,@Foto,@Privilegio);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@User", i.User);
                sqlcom.Parameters.AddWithValue("@Password", i.Password);
                sqlcom.Parameters.AddWithValue("@Nombre", i.Nombre);
                sqlcom.Parameters.AddWithValue("@ApellidoPaterno", i.ApellidoPaterno);
                sqlcom.Parameters.AddWithValue("@ApellidoMaterno", i.ApellidoMaterno);
                sqlcom.Parameters.AddWithValue("@Correo", i.Correo);
                sqlcom.Parameters.AddWithValue("@Foto", i.Foto);
                sqlcom.Parameters.AddWithValue("@Privilegio", i.Privilegio);
                conexion.EjecutaSQLComando(sqlcom);
                return true;
            }
            catch (Exception)
            {

                return false;
            }
        }
    }
}
