using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLDependencia
    {
        public List<BEDependencia> ListarDependencias()
        {
            MPPDependencia MPPoDepen = new MPPDependencia();
            return MPPoDepen.ListarDependencias();
        }

        public void Alta(BEDependencia oBEDependen)
        {
            try
            {
                MPPDependencia MPPoDependen = new MPPDependencia();
                MPPoDependen.Alta(oBEDependen);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void Baja(BEDependencia oBEDependen)
        {
            try
            {
                MPPDependencia MPPoDependen = new MPPDependencia();
                MPPoDependen.Baja(oBEDependen);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void Modificacion(BEDependencia oBEDependen)
        {
            try
            {
                MPPDependencia MPPoDependen = new MPPDependencia();
                MPPoDependen.Modificacion(oBEDependen);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
    }
}
