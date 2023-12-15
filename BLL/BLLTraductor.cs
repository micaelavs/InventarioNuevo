using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLTraductor
    {
        public List<BETraduccion> ListarTraducciones()
        {
            MPPTraductor MPPoTraductor = new MPPTraductor();

            return MPPoTraductor.ListarTraducciones();
        }
        public IDictionary<string, BETraduccion> LogeoDeTraducciones(BEUsuario user)
        {
            return MPPTraductor.ObtenerTraducciones(user.Idioma);
        }
        public void Alta(BETraduccion BEoTraduccion)
        {
            try
            {
                MPPTraductor MPPoTraductor = new MPPTraductor();
                MPPoTraductor.Alta(BEoTraduccion);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public void Baja(BETraduccion BEoTraduccion)
        {
            try
            {
                MPPTraductor MPPoTraductor = new MPPTraductor();
                MPPoTraductor.Baja(BEoTraduccion);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void Modificacion(BETraduccion BEoTraduccion)
        {
            try
            {
                MPPTraductor MPPoTraductor = new MPPTraductor();
                MPPoTraductor.Modificacion(BEoTraduccion);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public static IDictionary<string, BETraduccion> ObtenerTraducciones(BEIdioma idioma = null)
        {
            
            return MPPTraductor.ObtenerTraducciones(idioma);
        }
        public static IList<BEIdioma> ObtenerIdiomas()
        {
            return MPPTraductor.ObtenerIdiomas();
        }
    }

}
