using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLEtiqueta
    {
        public List<BEEtiqueta> ListarEtiquetas()
        {
            MPPEtiqueta MPPoEtiqueta = new MPPEtiqueta();

            return MPPoEtiqueta.ListarEtiquetas();
        }

        public void Alta(BEEtiqueta oBEtiqueta)
        {
            try
            {
                MPPEtiqueta MPPoEtiqueta = new MPPEtiqueta();
                MPPoEtiqueta.Alta(oBEtiqueta);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }
        public void Baja(BEEtiqueta oBEtiqueta)
        {
            try
            {
                MPPEtiqueta MPPoEtiqueta = new MPPEtiqueta();
                MPPoEtiqueta.Baja(oBEtiqueta);
            }
            catch (Exception ex)
            {

                throw ex;
            }
       
        }
        public void Modificacion(BEEtiqueta oBEtiqueta)
        {
            try
            {
                MPPEtiqueta MPPoEtiqueta = new MPPEtiqueta();
                MPPoEtiqueta.Modificacion(oBEtiqueta);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
    }
}
