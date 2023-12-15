using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
namespace BE
{
    public class BEAuditoriaExpediente:BEExpediente
    {
        public BEExpediente Expediente { get; set; }
        public BEUsuario Usuario { get; set; }
        public DateTime Fecha_operacion { get; set; }
        public TipoAccion Tipo_operacion { get; set; }
    }
}
