using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Datos.Util;
using Datos.Modelo;
using MySql.Data.MySqlClient;

namespace Datos.Daos
{
    public class PracticaDAO
    {
        public List<Practica> getAll()
        {
            List<Practica> lista = new List<Practica>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Practica"+";");
            DataTable dt = datos.Tables[0];
            Practica e;
            foreach (DataRow r in dt.Rows)
            {

                e = new Practica();
                e.IdPractica = (int)r.ItemArray[0];
                e.Correctas = (int)r.ItemArray[1];
                e.IdTema = (int)r.ItemArray[2];
                e.User = (string)r.ItemArray[3];
                lista.Add(e);
            }
            return lista;
        }

        public Practica getPracticaByID(int ID)
        {
            Practica res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Practica WHERE IdPractica = " + ID+";");
            DataTable dt = datos.Tables[0];
            res = new Practica();
            DataRow row = dt.Rows[0];
            res.IdPractica = (int)row.ItemArray[0];
            res.Correctas = (int)row.ItemArray[1];
            res.IdTema = (int)row.ItemArray[2];
            res.User = (string)row.ItemArray[3];
            return res;
        }

        public bool delete(Practica t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Practica WHERE" + " IdPractica=" + t.IdPractica + ";";
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

        public bool update(Practica e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Practica SET" +
                    " IdPractica=" + e.IdPractica + ",Correctas=" + e.Correctas + ",IdTema=" + e.IdTema + ",User=" + e.User +
                    " WHERE IdPractica=" + e.IdPractica + ";";
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

        public bool insert(Practica i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Practica (IdPractica,Correctas,IdTema,User) VALUES (@IdPractica,@Correctas,@IdTema,@User);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@IdPractica", i.IdPractica);
                sqlcom.Parameters.AddWithValue("@Correctas", i.Correctas);
                sqlcom.Parameters.AddWithValue("@IdTema", i.IdTema);
                sqlcom.Parameters.AddWithValue("@User", i.User);
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
