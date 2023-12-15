using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public abstract class BEExpedienteEstado :BEEntidad
    {
        public abstract bool EsARevisar();
        public abstract bool EsDesarchivado();
        public abstract bool EsDevolucion();
        public abstract bool EsDigitalizado();
        public abstract bool EsNoDigitalizado();
        public abstract bool EsPorRetirar();
        public string Estado { get; set; }

        public override string ToString()
        {
            return $"{Estado}";

        }
    }
}
