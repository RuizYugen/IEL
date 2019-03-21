﻿using System;
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
    public class PreguntaDAO
    {
        public List<Pregunta> getAll()
        {
            List<Pregunta> lista = new List<Pregunta>();
            Conexion con = new Conexion();

            DataSet datos = con.LLenaComboGrid("SELECT * FROM Pregunta" + ";");
            DataTable dt = datos.Tables[0];
            Pregunta e;
            foreach (DataRow r in dt.Rows)
            {

                e = new Pregunta();
                e.idPregunta = (int)r.ItemArray[0];
                e.pregunta = (string)r.ItemArray[1];
                e.RespuestaCorrecta = (string)r.ItemArray[2];
                e.RespuestaIncorrecta1 = (string)r.ItemArray[3];
                e.RespuestaIncorrecta2 = (string)r.ItemArray[3];
                e.RespuestaIncorrecta3 = (string)r.ItemArray[3];
                lista.Add(e);
            }
            return lista;
        }

        public Pregunta getPreguntaByID(int ID)
        {
            Pregunta res;
            Conexion conexion = new Conexion();
            DataSet datos = conexion.LLenaComboGrid("SELECT * FROM Pregunta WHERE idPregunta = " + ID + ";");
            DataTable dt = datos.Tables[0];
            res = new Pregunta();
            DataRow row = dt.Rows[0];
            res.idPregunta = (int)row.ItemArray[0];
            res.pregunta = (string)row.ItemArray[1];
            res.RespuestaCorrecta = (string)row.ItemArray[2];
            res.RespuestaIncorrecta1 = (string)row.ItemArray[3];
            res.RespuestaIncorrecta2 = (string)row.ItemArray[4];
            res.RespuestaIncorrecta3 = (string)row.ItemArray[5];
            return res;
        }

        public bool delete(Pregunta t)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "DELETE FROM Pregunta WHERE" + " idPregunta=" + t.idPregunta + ";";
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

        public bool update(Pregunta e)
        {
            Conexion conexion = new Conexion();


            try
            {
                String SQL = "UPDATE Pregunta SET" +
                    " idPregunta=" + e.idPregunta + ",pregunta=" + e.pregunta + ",RespuestaCorrecta=" + e.RespuestaCorrecta + ",RespuestaIncorrecta1=" + e.RespuestaIncorrecta1 + ",RespuestaIncorrecta2=" + e.RespuestaIncorrecta2 + ",RespuestaIncorrecta3=" + e.RespuestaIncorrecta3 +
                    " WHERE idPregunta=" + e.idPregunta + ";";
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

        public bool insert(Pregunta i)
        {
            try
            {
                Conexion conexion = new Conexion();
                String SQL = "INSERT INTO Pregunta (idPregunta,pregunta,RespuestaCorrecta,RespuestaIncorrecta1,RespuestaIncorrecta2,RespuestaIncorrecta3) VALUES (@idPregunta,@pregunta,@RespuestaCorrecta,@RespuestaIncorrecta1,@RespuestaIncorrecta2,@RespuestaIncorrecta3);";
                MySqlCommand sqlcom = new MySqlCommand();
                sqlcom.CommandText = SQL;
                sqlcom.Parameters.AddWithValue("@idPregunta", i.idPregunta);
                sqlcom.Parameters.AddWithValue("@pregunta", i.pregunta);
                sqlcom.Parameters.AddWithValue("@RespuestaCorrecta", i.RespuestaCorrecta);
                sqlcom.Parameters.AddWithValue("@RespuestaIncorrecta1", i.RespuestaIncorrecta1);
                sqlcom.Parameters.AddWithValue("@RespuestaIncorrecta2", i.RespuestaIncorrecta2);
                sqlcom.Parameters.AddWithValue("@RespuestaIncorrecta3", i.RespuestaIncorrecta3);
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
