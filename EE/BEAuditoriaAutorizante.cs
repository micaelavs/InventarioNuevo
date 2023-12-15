using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEAuditoriaAutorizante:BEAutorizante
    {
        public BEAutorizante Autorizante { get; set; }
        public BEUsuario Usuario { get; set; }
        public DateTime Fecha_operacion { get; set; }
        public TipoAccion Tipo_operacion { get; set; }
    }
}
