using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public abstract class BERemito : BEEntidad
    {
        
        public string Nro_remito { get; set; } //el que se va generando automaticamente RTO:0000001/2020 --> con la fecha actual            
        public string Nota_gde { get; set; }
        public BEAutorizante Autorizante { get; set; }
        public BEIntermediario Intermediario { get; set; }
        public BERemitoEstado Estado { get; set; }
        public DateTime Fecha { get; set; }
        public BEArea AreaSolicitante { get; set; }
        public string Observaciones { get; set; }
        
        public abstract void SetEstado(BERemitoEstado oEstadoRemito);

        protected string _descripcion;
        public string Descripcion
        {
            get
            {
                return _descripcion;
            }
        }
    }

}
 