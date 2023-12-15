using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BERemitoDevolucion: BERemito
    {
        public BEExpediente Expediente { get; set; }
        public override void SetEstado(BERemitoEstado oEstadoRemito)
        {
            Estado = oEstadoRemito;


        }
        public BERemitoDevolucion()
        {

            _descripcion = "Devolucion";

        }
    }
}
