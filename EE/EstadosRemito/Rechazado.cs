using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Rechazado:BERemitoEstado
    {
        public override bool EsAceptado() { return false; }
        public override bool EsAnulado() { return false; }
        public override bool EsRechazado() { return true; }
        public override bool EsARevisar() { return false; }
      
        
    }
}
