using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    
    public abstract class BERemitoEstado : BEEntidad
    {
       
        public abstract bool EsARevisar();
        public abstract bool EsAceptado();
        public abstract bool EsAnulado();
        public abstract bool EsRechazado();

        public string Estado { get; set; }
        

        public override string ToString()
        {
            return $"{Estado}";
        }
    }
}
