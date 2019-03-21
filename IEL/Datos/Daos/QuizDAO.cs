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
    public  class QuizDAO
    {
        public List<Quiz> getAll()
        {
            List<Quiz> lista = new List<Quiz>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Quiz" + ";");
            DataTable dt = datos.Tables[0];
            Quiz q;
            foreach (DataRow r in dt.Rows)
            {

                q = new Quiz();
                q.idQuiz = (int)r.ItemArray[0];
                q.Nombre = (String)r.ItemArray[1];
                lista.Add(q);
            }
            return lista;
        }
        public Quiz getQuizByID(int ID)
        {
            Quiz res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Quiz WHERE idQuiz = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new Quiz();
            DataRow row = dt.Rows[0];
            res.idQuiz = (int)row.ItemArray[0];
            res.Nombre = (String)row.ItemArray[1];
            return res;
        }

        public bool delete(Quiz t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Quiz WHERE" + " idQuiz=" + t.idQuiz + ";";
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

        public bool update(Quiz q)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Quiz SET" +
                    " iQuiz=" + q.idQuiz + ", Nombre=" + q.Nombre + " WHERE idQuiz=" + q.idQuiz + ";";
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

        public bool insert(Quiz q)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Quiz (idQuiz,Nombre) VALUES (@idQuiz,@Nombre);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@idQuiz", q.idQuiz);
                sqlcom.Parameters.AddWithValue("@Nombre", q.Nombre);

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
