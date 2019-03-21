using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Modelo
{
   public class Usuario
    {
        public String User { get; set; }
        public String Password { get; set; }
        public String Nombre { get; set; }
        public String ApellidoPaterno { get; set; }
        public String ApellidoMaterno { get; set; }
        public String Correo { get; set; }
        public String Foto { get; set; }
        public String Privilegio { get; set; }

    }
}
