using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLCaja
    {
        public List<BECaja> ListarCajas()
        {
            MPPCaja MPPoCaja = new MPPCaja();
            return MPPoCaja.ListarCajas();
        }

        public List<BECaja> ListarCajasSala2()
        {
            MPPCaja MPPoCaja = new MPPCaja();
            return MPPoCaja.ListarCajasSala2();
        }

        public void ActualizarDisponible(BECaja oCaja)
        {
            try
            {
                MPPCaja MPPoCaja = new MPPCaja();
                MPPoCaja.ActualizarDisponible(oCaja);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
        public void LiberarEspacio(BEExpediente oExpediente)//a la disponibilidad de la caja actual le suma lo q se va
        {
            try
            {
                int contador = 0;
                int CodigoCaja = 0;
                foreach (var cuerpo in oExpediente.Cuerpos)
                {
                    contador += cuerpo.Hojas + cuerpo.Fojas;
                    CodigoCaja = cuerpo.Caja.Codigo;
                }
                MPPCaja MPPoCaja = new MPPCaja();
                MPPoCaja.LiberarEspacio(CodigoCaja, contador);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void QuitarEspacioSala2(BEExpediente BEoExpediente)//quita espacio de hojas mas fojas a sala 2
        {
            try
            {
                MPPCaja MPPoCaja = new MPPCaja();
                int CodigoSala2 = MPPoCaja.TraerCodigoCajaSala2();
                int contador = 0;
                foreach (var cuerpo in BEoExpediente.Cuerpos)
                {
                    contador += cuerpo.Hojas + cuerpo.Fojas;
                }
              
                //aca hay que descontar
                MPPoCaja.QuitarEspacioSala2(CodigoSala2, contador);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          

        }

        public void VerificarDisponibilidadCaja(BEExpediente oExpediente)
        {
            MPPCaja MPPoCaja = new MPPCaja();
            int CodigoSala2 = MPPoCaja.TraerCodigoCajaSala2();
            double valor = MPPoCaja.TraerDisponibilidad(CodigoSala2);
            int contador = 0;
            foreach (var cuerpo in oExpediente.Cuerpos)
            {
                contador += cuerpo.Hojas + cuerpo.Fojas;
            }

            if (contador>valor)
            {
                throw new Exception("La suma de hojas y fojas exceden la disponibilidad de la caja");
            } 
        }
    }
}
