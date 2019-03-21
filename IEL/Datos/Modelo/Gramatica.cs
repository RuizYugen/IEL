using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Modelo
{
   public class Gramatica
    {
        public int IdGramatica { get; set; }
        public String Sujeto { get; set; }
        public String Verbo { get; set; }
        public String Complemento { get; set; }
        public String Tipo { get; set; }
    }
}
