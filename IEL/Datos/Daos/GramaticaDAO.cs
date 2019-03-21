using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Datos.Modelo;
using Datos.Util;

namespace Datos.Daos

{
   public class GramaticaDAO
    {

        public List<Gramatica> getAll()
        {
            List<Gramatica> lista = new List<Gramatica>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Gramatica"+";");
            DataTable dt = datos.Tables[0];
            Gramatica e;
            foreach (DataRow r in dt.Rows)
            {

                e = new Gramatica();
                e.IdGramatica = (int)r.ItemArray[0];
                e.Sujeto = (string)r.ItemArray[1];
                e.Verbo = (string)r.ItemArray[2];
                e.Complemento = (string)r.ItemArray[3];
                lista.Add(e);
            }
            return lista;
        }

        public Gramatica getGramaticaByID(int ID)
        {
            Gramatica res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Gramatica WHERE IdGramatica = " + ID+";");
            DataTable dt = datos.Tables[0];
            res = new Gramatica();
            DataRow row = dt.Rows[0];
            res.IdGramatica = (int)row.ItemArray[0];
            res.Sujeto = (string)row.ItemArray[1];
            res.Verbo = (string)row.ItemArray[2];
            res.Complemento = (string)row.ItemArray[3];
            return res;
        }

        public bool delete(Gramatica t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Gramatica WHERE" + " IdGramatica=" + t.IdGramatica + ";";
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

        public bool update(Gramatica e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Gramatica SET" +
                    " IdGramatica=" + e.IdGramatica + ",Sujeto=" + e.Sujeto + ",Verbo=" + e.Verbo + ",Complemento=" + e.Complemento +
                    " WHERE IdGramatica=" + e.IdGramatica + ";";
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

        public bool insert(Gramatica i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Gramatica (IdGramatica,Sujeto,Verbo,Complemento) VALUES (@IdGramatica,@Sujeto,@Verbo,@Complemento);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@IdGramatica", i.IdGramatica);
                sqlcom.Parameters.AddWithValue("@Sujeto", i.Sujeto);
                sqlcom.Parameters.AddWithValue("@Verbo", i.Verbo);
                sqlcom.Parameters.AddWithValue("@Complemento", i.Complemento);
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
