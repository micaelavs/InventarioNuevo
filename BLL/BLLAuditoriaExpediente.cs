using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLAuditoriaExpediente
    {
       public List<BEAuditoriaExpediente> Recuperar(BEExpediente Objeto)
        {
            MPPAuditoriaExpediente MPPoAuditoriaExp = new MPPAuditoriaExpediente();
            return MPPoAuditoriaExp.Recuperar(Objeto);
        }

        public List<BEAuditoriaExpediente> ExpedienteVerReporte()
        {
            MPPAuditoriaExpediente MPPoAuditoriaExp = new MPPAuditoriaExpediente();
            return MPPoAuditoriaExp.ExpedienteVerReporte();
        }
    }
}
