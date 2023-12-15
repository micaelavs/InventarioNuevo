using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class IngresoARevisar: BEExpedienteEstado
    {
        public override bool EsARevisar() { return true; }
        public override bool EsDesarchivado() { return false; }
        public override bool EsDevolucion() { return false; }
        public override bool EsDigitalizado() { return false; }
        public override bool EsNoDigitalizado() { return false; }
        public override bool EsPorRetirar() { return false; }
    }
}
