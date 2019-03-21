using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Modelo
{
   public class Practica
    {
        public int IdPractica { get; set; }
        public int Correctas { get; set; }
        public int IdTema { get; set; }
        public String User { get; set; }
    }
}
