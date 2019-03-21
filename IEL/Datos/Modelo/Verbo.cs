using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Modelo
{
   public class Verbo
    {
        public int IdVerbo { get; set; }
        public String VerboTraduccion { get; set; }
        public String VerboPresenteSimple { get; set; }
        public String VerboPasadoSimple { get; set; }
        public String VerboPasadoParticipio { get; set; }

    }
}
