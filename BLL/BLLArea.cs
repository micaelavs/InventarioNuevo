using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLArea
    {
        public List<BEArea> ListarAreas()
        {
            MPPArea MPPoArea = new MPPArea();

            return MPPoArea.ListarAreas();
        }

        public void Alta(BEArea oBEarea)
        {
            try
            {
                MPPArea MPPoArea = new MPPArea();
                MPPoArea.Alta(oBEarea);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public void Baja(BEArea oBEArea)
        {
            try
            {
                MPPArea MPPoArea = new MPPArea();
                MPPoArea.Baja(oBEArea);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public void Modificacion(BEArea oBEArea)
        {
            try
            {
                MPPArea MPPoArea = new MPPArea();
                MPPoArea.Modificacion(oBEArea);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
    }
}
