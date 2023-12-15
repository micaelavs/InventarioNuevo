using Servicios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios.Bitacora
{
    public class BLLBitacora
   {
        public List<BEBitacora> ListarBitacora()
        {
            MPPBitacora oMPPBitacora = new MPPBitacora();
            return oMPPBitacora.ListarBitacora();
        }

        public void EscribirBitacora(int Codigo_usuario, string Nombre_usuario, TipoLog TipoLog, string Accion, string Mensaje)
        {
            try
            {
                MPPBitacora oMPPBitacora = new MPPBitacora();
                oMPPBitacora.EscribirBitacora(Codigo_usuario, Nombre_usuario, TipoLog, Accion, Mensaje, DateTime.Now);
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public List<BEBitacora> BitacoraVerLogs(string TipoLog, DateTime? fechaInicio = null, DateTime? fechaFin = null)
        {
            MPPBitacora oMPPBitacora = new MPPBitacora();
            return oMPPBitacora.BitacoraVerLogs(TipoLog,fechaInicio, fechaFin);
        }
    }
}
