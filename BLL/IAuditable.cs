using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public interface IAuditable<A,B,C>
    {
        void Auditar(A Objeto, B TipoAccion, C Usuario);
       
    }
}
