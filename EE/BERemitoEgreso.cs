using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BERemitoEgreso: BERemito
    {
     

        private List<BEExpediente> _expedientes;

        public BERemitoEgreso(List<BEExpediente> ListaExpediente) //sobrecargo el constructor para pasarle la lista

        {
            if(ListaExpediente == null)
            {
                throw new Exception("La Lista de expedientes está vacía");
            }

            _expedientes = ListaExpediente;
        }
        // x si qiero agregar expedientes extras
        public void AgregarExp(BEExpediente oExpediente)
        {
            _expedientes.Add(oExpediente);
        }
        public List<BEExpediente> ListaExpediente
        {
            get
            {
                return _expedientes;
            }
            set
            {
                _expedientes = value;
            }
        }

        public override void SetEstado(BERemitoEstado oEstadoRemito) 
        {
            Estado = oEstadoRemito;
        } 
        public BERemitoEgreso()
        {
            _descripcion = "Egreso";

        }
    }
}
