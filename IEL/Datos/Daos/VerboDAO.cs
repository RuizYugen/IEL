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
    public class VerboDAO
    {
        public List<Verbo> getAll()
        {
            List<Verbo> lista = new List<Verbo>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Verbo" + ";");
            DataTable dt = datos.Tables[0];
            Verbo e;
            foreach (DataRow r in dt.Rows)
            {

                e = new Verbo();
                e.IdVerbo = (int)r.ItemArray[0];
                e.VerboTraduccion = (string)r.ItemArray[1];
                e.VerboPresenteSimple = (string)r.ItemArray[2];
                e.VerboPasadoSimple = (string)r.ItemArray[3];
                e.VerboPasadoParticipio = (string)r.ItemArray[4];                
                lista.Add(e);
            }
            return lista;
        }

        public bool delete(Verbo t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Verbo WHERE" + " IdVerbo= " + t.IdVerbo + ";";
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

        public Verbo getVerboByID(int ID)
        {
            Verbo res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Verbo WHERE IdVerbo = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new Verbo();
            DataRow row = dt.Rows[0];
            res.IdVerbo = (int)row.ItemArray[0];
            res.VerboTraduccion = (string)row.ItemArray[1];
            res.VerboPresenteSimple = (string)row.ItemArray[2];
            res.VerboPasadoSimple = (string)row.ItemArray[3];
            res.VerboPasadoParticipio = (string)row.ItemArray[4];            
            return res;
        }

        public bool update(Verbo e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Verbo SET" +
                    " IdVerbo=" + e.IdVerbo + ",VerboTraduccion=" + e.VerboTraduccion + ",VerboPresenteSimple=" + e.VerboPresenteSimple + ",VerboPasadoSimple=" + e.VerboPasadoSimple + ",VerboPasadoParticipio=" + e.VerboPasadoParticipio +
                    " WHERE IdVerbo = " + e.IdVerbo + ";";
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

        public bool insert(Verbo i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Verbo (IdVerbo,VerboTraduccion,VerboPresenteSimple,VerboPasadoSimple,VerboPasadoParticipio) VALUES (@IdVerbo,@VerboTraduccion,@VerboPresenteSimple,@VerboPasadoSimple,@VerboPasadoParticipio);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@IdVerbo", i.IdVerbo);
                sqlcom.Parameters.AddWithValue("@VerboTraduccion", i.VerboTraduccion);
                sqlcom.Parameters.AddWithValue("@VerboPresenteSimple", i.VerboPresenteSimple);
                sqlcom.Parameters.AddWithValue("@VerboPasadoSimple", i.VerboPasadoSimple);
                sqlcom.Parameters.AddWithValue("@VerboPasadoParticipio", i.VerboPasadoParticipio);                
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
