using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BERemitoIngreso:BERemito
    {
        public List<string> NumerosComdoc { get; set; }

        public override void SetEstado(BERemitoEstado oEstadoRemito)
        {
            Estado = oEstadoRemito;


        }
        public BERemitoIngreso()
        {

            _descripcion = "Ingreso";

        }
        public override string ToString()
        {
            return Nota_gde;

        }

       
    }
}

