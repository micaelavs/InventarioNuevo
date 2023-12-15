using BE;
using ClassServicios.Bitacora;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios
{
    public class BEBitacora
    {
        public int Codigo { get; set; }
        public BEUsuario Usuario { get; set; } 
        public TipoLog TipoLog { get; set; }
        public string Accion { get; set; }
        public string Mensaje { get; set; }
        public DateTime Fecha_operacion { get; set; }
    }
}
