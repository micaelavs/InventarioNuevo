using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios.Exceptions
{
   public class CodigoNoValidoException : ExcepcionNegocio
        {
            public CodigoNoValidoException() : base("El codigo no es valido")
            {
            }
        }
    

}
