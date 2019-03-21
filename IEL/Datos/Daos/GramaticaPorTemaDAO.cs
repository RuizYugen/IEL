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
    public class GramaticaPorTemaDAO
    {
        public List<GramaticaPorTema> getAll()
        {
            List<GramaticaPorTema> lista = new List<GramaticaPorTema>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM GramaticaPorTema" + ";");
            DataTable dt = datos.Tables[0];
            GramaticaPorTema e;
            foreach (DataRow r in dt.Rows)
            {

                e = new GramaticaPorTema();
                e.IdTema = (int)r.ItemArray[0];
                e.IdGramatica = (int)r.ItemArray[1];               
                lista.Add(e);
            }
            return lista;
        }

        public GramaticaPorTema getGramaticaPorTemaByID(int ID)
        {
            GramaticaPorTema res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM GramaticaPorTema WHERE IdGramatica = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new GramaticaPorTema();
            DataRow row = dt.Rows[0];
            res.IdTema = (int)row.ItemArray[0];
            res.IdGramatica = (int)row.ItemArray[1];           
            return res;
        }

        public bool update(GramaticaPorTema e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE GramaticaPorTema SET" +
                    " IdTema=" + e.IdTema + ",IdGramatica=" + e.IdGramatica + 
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

        public bool delete(GramaticaPorTema t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM GramaticaPorTema WHERE" + " IdGramatica=" + t.IdGramatica + ";";
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

        public bool insert(GramaticaPorTema i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO GramaticaPorTema (IdTema,IdGramatica) VALUES (@IdTema,@IdGramatica);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@IdTema", i.IdTema);
                sqlcom.Parameters.AddWithValue("@IdGramatica", i.IdGramatica);                
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
