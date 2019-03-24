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
    public class SujetoDAO
    {
        public List<Sujeto> getAll()
        {
            List<Sujeto> lista = new List<Sujeto>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Sujeto" + ";");
            DataTable dt = datos.Tables[0];
            Sujeto s;
            foreach (DataRow r in dt.Rows)
            {

                s = new Sujeto();
                s.IdSujeto = (int)r.ItemArray[0];
                s.SujetoTraducido = (String)r.ItemArray[1];
                s.sujeto = (String)r.ItemArray[2];
                s.Objeto = (String)r.ItemArray[3];
                s.Posesivo = (String)r.ItemArray[4];
                s.Sucesivo = (String)r.ItemArray[5];
                lista.Add(s);
            }
            return lista;
        }
        public Sujeto getSujetoByID(int ID)
        {
            Sujeto res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Sujeto WHERE IdSujeto = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new Sujeto();
            DataRow row = dt.Rows[0];
            res.IdSujeto = (int)row.ItemArray[0];
            res.SujetoTraducido = (String)row.ItemArray[1];
            res.sujeto = (String)row.ItemArray[2];
            res.Objeto = (String)row.ItemArray[3];
            res.Posesivo = (String)row.ItemArray[4];
            res.Sucesivo = (String)row.ItemArray[5];
            return res;
        }

        public bool delete(int IdSujeto)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Sujeto WHERE" + " IdSujeto=" + IdSujeto + ";";
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

        public bool update(Sujeto s)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Sujeto SET "+ "SujetoTraducido='" + s.SujetoTraducido + "',sujeto='" + s.sujeto
                    + "',objeto='" + s.Objeto + "',Posesivo='" + s.Posesivo + "',Sucesivo='" + s.Sucesivo
                    + "' WHERE IdSujeto=" + s.IdSujeto + ";";
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

        public bool insert(Sujeto s)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Sujeto (IdSujeto, SujetoTraducido, sujeto, Objeto, Posesivo, Sucesivo)" +
                    " VALUES (@IdSujeto,@SujetoTraducido,@sujeto,@Objeto,@Posesivo,@Sucesivo);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@IdSujeto", s.IdSujeto);
                sqlcom.Parameters.AddWithValue("@SujetoTraducido", s.SujetoTraducido);
                sqlcom.Parameters.AddWithValue("@sujeto", s.sujeto);
                sqlcom.Parameters.AddWithValue("@Objeto", s.Objeto);
                sqlcom.Parameters.AddWithValue("@Posesivo", s.Posesivo);
                sqlcom.Parameters.AddWithValue("@Sucesivo", s.Sucesivo);

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
