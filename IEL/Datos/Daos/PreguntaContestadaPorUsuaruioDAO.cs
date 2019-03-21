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
    public class PreguntaContestadaPorUsuaruioDAO
    {
        public List<PreguntaContestadaPorUsuaruio> getAll()
        {
            List<PreguntaContestadaPorUsuaruio> lista = new List<PreguntaContestadaPorUsuaruio>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM PreguntaContestadaPorUsuaruio" + ";");
            DataTable dt = datos.Tables[0];
            PreguntaContestadaPorUsuaruio e;
            foreach (DataRow r in dt.Rows)
            {

                e = new PreguntaContestadaPorUsuaruio();
                e.User = (string)r.ItemArray[0];
                e.IdPregunta = (int)r.ItemArray[1];
                e.Contesto = (string)r.ItemArray[2];               
                lista.Add(e);
            }
            return lista;
        }

        public PreguntaContestadaPorUsuaruio getPreguntaContestadaPorUsuaruioByID(int ID)
        {
            PreguntaContestadaPorUsuaruio res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM PreguntaContestadaPorUsuaruio WHERE IdPregunta = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new PreguntaContestadaPorUsuaruio();
            DataRow row = dt.Rows[0];
            res.User = (string)row.ItemArray[0];
            res.IdPregunta = (int)row.ItemArray[1];
            res.Contesto = (string)row.ItemArray[2];            
            return res;
        }

        public bool delete(PreguntaContestadaPorUsuaruio t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM PreguntaContestadaPorUsuaruio WHERE" + " IdPregunta=" + t.IdPregunta + ";";
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

        public bool update(PreguntaContestadaPorUsuaruio e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE PreguntaContestadaPorUsuaruio SET" +
                    " User=" + e.User + ",IdPregunta=" + e.IdPregunta + ",Contesto=" + e.Contesto +
                    " WHERE IdPregunta=" + e.IdPregunta + ";";
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

        public bool insert(PreguntaContestadaPorUsuaruio i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO PreguntaContestadaPorUsuaruio (User,IdPregunta,Contesto) VALUES (@User,@IdPregunta,@Contesto);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@User", i.User);
                sqlcom.Parameters.AddWithValue("@IdPregunta", i.IdPregunta);
                sqlcom.Parameters.AddWithValue("@Contesto", i.Contesto);                
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
