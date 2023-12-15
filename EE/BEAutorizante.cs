using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEAutorizante:BEPersona
    {
        public BEDependencia Dependencia { get; set; }

        public override string ToString()
        {
            return $"{Nombre} {Apellido}";
            
        }

    }
}
