using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLIdioma
    {
        public List<BEIdioma> ListarIdiomas()
        {
            MPPIdioma MPPoIdioma = new MPPIdioma();

            return MPPoIdioma.ListarIdiomas();
        }

        public void Alta(BEIdioma oBEIdioma)
        {
            try
            {
                MPPIdioma MPPoIdioma = new MPPIdioma();
                MPPoIdioma.Alta(oBEIdioma);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void Baja(BEIdioma oBEIdioma)
        {
            try
            {
                MPPIdioma MPPoIdioma = new MPPIdioma();
                MPPoIdioma.Baja(oBEIdioma);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void Modificacion(BEIdioma oBEIdioma)
        {
            try
            {
                MPPIdioma MPPoIdioma = new MPPIdioma();
                MPPoIdioma.Modificacion(oBEIdioma);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public BEIdioma BuscarIdiomaPorId(int id)
        {
            MPPIdioma MPPoIdioma = new MPPIdioma();
            return MPPoIdioma.BuscarIdiomaPorId(id);
        }
    }
}
