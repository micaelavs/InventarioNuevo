using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLAuditoriaAutorizante
    {
        public List<BEAuditoriaAutorizante> Recuperar(BEAutorizante Objeto)
        {
            MPPAuditoriaAutorizante MPPoAuditoriaAut = new MPPAuditoriaAutorizante();
            return MPPoAuditoriaAut.Recuperar(Objeto);
        }
    }
}
