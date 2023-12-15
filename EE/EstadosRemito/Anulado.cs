using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class Anulado: BERemitoEstado
    {
        public override bool EsAceptado() { return false; }
        public override bool EsAnulado() { return true; }
        public override bool EsRechazado() { return false; }
        public override bool EsARevisar() { return false; }
       
    }
}
