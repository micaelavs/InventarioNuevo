using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEIntermediario:BEPersona
    {
        public override string ToString()
        {
            return $"{Nombre} {Apellido}";

        }
    }
}
