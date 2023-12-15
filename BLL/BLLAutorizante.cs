using BE;
using ClassServicios.Exceptions;
using MPP;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class BLLAutorizante: IAuditable<BEAutorizante, TipoAccion, BEUsuario>
    {
        public List<BEAutorizante> ListarAutorizantes()
        {
            MPPAutorizante MPPoAutorizante = new MPPAutorizante();

            return MPPoAutorizante.ListarAutorizantes();
        }

        public void Alta(BEAutorizante BEoAutorizante)
        {
            try
            {
                MPPAutorizante MPPoAutorizante = new MPPAutorizante();
                MPPoAutorizante.Alta(BEoAutorizante);
            }
            catch (Exception ex)
            {
                throw ex;
            }
          
        }
       
        public void Modificacion(BEAutorizante BEoAutorizante)
        {
            try
            {
                MPPAutorizante MPPoAutorizante = new MPPAutorizante();
                MPPoAutorizante.Modificacion(BEoAutorizante);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public bool Init(
            BEAutorizante autorizante,
            string codigo,
            string nombre,
            string apellido,
            string documento,
            BEDependencia dependencia)
        {
            autorizante.Codigo = string.IsNullOrEmpty(codigo) ? 0 : Convert.ToInt32(codigo.Trim());

            if (nombre != "" && apellido != "" && documento != "")
            {
                autorizante.Nombre = nombre;
                autorizante.Apellido = apellido;
                autorizante.Dni = Convert.ToInt32(documento);
                BEDependencia oDependencia = new BEDependencia()
                {
                    Codigo = dependencia.Codigo,
                    Nombre = dependencia.Nombre
                };
                autorizante.Dependencia = oDependencia;
                return true;
            }
            else
            {
                throw new ExcepcionNegocio("Faltan completar datos!");
                
            }
        }

        public void Auditar(BEAutorizante Objeto, TipoAccion TipoAccion, BEUsuario Usuario)
        {
            try
            {
                MPPAutorizante MPPoAutorizante = new MPPAutorizante();
                MPPoAutorizante.Auditar(Objeto, TipoAccion, Usuario);
            }
            catch (Exception ex)
            {
                throw ex;
            }
          
        }
    
        public int TraerCodUltAutorizante()
        {
            MPPAutorizante MPPoAuto = new MPPAutorizante();
            return MPPoAuto.TraerCodUltAutorizante();
        }

    }
}