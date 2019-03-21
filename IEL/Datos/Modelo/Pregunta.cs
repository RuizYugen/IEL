using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Modelo
{
   public class Pregunta
    {
        public int idPregunta { get; set; }
        public String pregunta { get; set; }
        public String RespuestaCorrecta { get; set; }
        public String RespuestaIncorrecta1 { get; set; }
        public String RespuestaIncorrecta2 { get; set; }
        public String RespuestaIncorrecta3 { get; set; }
    }
}
