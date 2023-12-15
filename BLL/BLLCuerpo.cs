using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLCuerpo
    {
        public List<BECuerpoEstado> ListarCuerpoEstado()
        {
            MPPCuerpo MPPoCuerpo = new MPPCuerpo();

            return MPPoCuerpo.ListarCuerpoEstado();
        }
        public void MoverASala2(BEExpediente BEoExpediente)
        {
            try
            {
                MPPCuerpo MPPoCuerpo = new MPPCuerpo();
                MPPoCuerpo.MoverASala2(BEoExpediente);
            }
            catch (Exception ex)
            {

                throw ex;
            }
         
        }

    }
}
