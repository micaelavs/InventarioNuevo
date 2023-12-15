using BE;
using ClassServicios.Exceptions;
using MPP;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class BLLRemito
    {
        private MPPRemito MPPoRemito;

        public BLLRemito()
        {
            this.MPPoRemito = new MPPRemito();
        }

        public List<BERemitoEstado> ObtenerEstadosPermitidos(BERemito oRemito) // Dado un remito me fijo de que tipo es y en base a eso cargo la lista con estadospermitidos
        {
            return MPPoRemito.ObtenerEstadosPermitidos(oRemito);
        }

        public List<BERemito> ListarRemitos()
        {
            return MPPoRemito.ListarRemitos();
        }

        public int ObtenerTipo(BERemito oRemito)
        {
            return MPPoRemito.ObtenerTipo(oRemito);
        }

        public List<BEIntermediario> ListarIntermediarios()
        {
            return MPPoRemito.ListarIntermediarios();
        }

        public int TraerUltimoId()
        {
            return MPPoRemito.TraerUltimoId();
        }

        public void InitRemito(BERemito remitoIngreso, string txtCodigo)
        {
            if (!string.IsNullOrEmpty(txtCodigo))
                remitoIngreso.Codigo = Convert.ToInt32(txtCodigo);
            else
                remitoIngreso.Codigo = 0; 

            var ultimoRemito = this.TraerUltimoId();
            var nroRemito = ultimoRemito == 0 ? 1 : ultimoRemito + 1;

            remitoIngreso.Nro_remito = $"S02: { nroRemito.ToString().PadLeft(7, '0') }/{ DateTime.Now.Year }";
        }

        public void AltaIngreso(BERemitoIngreso BEoRemito)
        {
            try
            {
                MPPoRemito.AltaIngreso(BEoRemito);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
        public void ModificacionIngreso(BERemitoIngreso BEoRemito)
        {
            try
            {
                MPPoRemito.ModificacionIngreso(BEoRemito);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        //el de ingreso se modifica... estado ingreso a revisar se puede pasar a aceptado o rechazado // o devolucion pasa de aceptado a anulado
        public void ModificarRemito(BERemito remito)
        {
            try
            {
                if (remito.GetType() == typeof(BERemitoIngreso))
                {
                    this.ModificacionIngreso((BERemitoIngreso)remito);

                }
                else if (remito.GetType() == typeof(BERemitoDevolucion)) // o devolucion
                {
                    OperacionModDevolucion((BERemitoDevolucion)remito);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public void OperacionModDevolucion(BERemitoDevolucion BEoRemito)
        {
            try
            {
                MPPoRemito.OperacionModDevolucion(BEoRemito);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public void AltaEgreso(BERemitoEgreso BEoRemito)
        {
            try
            {
                MPPoRemito.AltaEgreso(BEoRemito);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public bool BuscarNotaGde(string NotaGde)
        {
            return MPPoRemito.BuscarNotaGde(NotaGde);
        }

        public bool BuscarRtoComdoc(string RtoComdoc)
        {
            return MPPoRemito.BuscarRtoComdoc(RtoComdoc);
        }

        public BERemito TaerRemitoAsociado(BEExpediente oExpediente)
        {
            return MPPoRemito.TaerRemitoAsociado(oExpediente);
        }

        public List<BERemitoIngreso> ListarNotasGdeIngreso()
        {
            return MPPoRemito.ListarNotasGdeIngreso();
        }

        public BERemitoIngreso TraerDatosRemitoPorNOTA(string NotaGde)
        {
            return MPPoRemito.TraerDatosRemitoPorNOTA(NotaGde);
        }

        public void AsociarRemitoExpInsertar(BERemito oRemito, BEExpediente oExpediente)
        {
            try
            {
                MPPoRemito.AsociarRemitoExpInsertar(oRemito, oExpediente);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        //ASOCIO AL NUEVO REMITO DEVOLUCION QUE GENERO, PARA LUEGO MOSTRAR EN EL PDF EL EXPEDIENTE Q LE DIO SALIDA
        public void AsociarRemitoExpediente(string notaGde, BEExpediente expediente)
        {
            try
            {
                //cuando hago click aca, traigo los datos del remito...
                //insertar en la base remito y numero de expediente... de esa manera quedaran asociados
                //necesito todos los datos del remito para generar el pdf
                var remito = TraerDatosRemitoPorNOTA(notaGde);

                //inserto en la base remitos_expedientes idremito idexpediente
                //primero busco el cod expediente con el nro expediente que es unico

                (new BLLExpediente()).CompletarExpediente(expediente);

                AsociarRemitoExpInsertar(remito, expediente);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public int InsertarRemitoDevolucion(BERemitoDevolucion oRemito)
        {
            try
            {
                return MPPoRemito.InsertarRemitoDevolucion(oRemito);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public List<string> TraerNumerosComdocRemito(BERemitoIngreso oRemitoIngreso)
        {
            return MPPoRemito.TraerNumerosComdocRemito(oRemitoIngreso);
        }

        public List<BEExpediente> TraerExpedientesPorCodigoRemito(BERemitoEgreso oRemito)
        {
            return MPPoRemito.TraerExpedientesPorCodigoRemito(oRemito);
        }

        public BEExpediente TraerExpAsociadoARemitoDev(BERemitoDevolucion oRemito)
        {
            return MPPoRemito.TraerExpAsociadoARemitoDev(oRemito);
        }

        public BERemitoEstado TraerDatosEstado(BERemitoEstado oEstado, int TipoRemito)
        {
            return MPPoRemito.CargarDatosEstado(oEstado, TipoRemito);
        }

        public bool SetData(
            BERemito remito,
            string estadoDescripcion,
            string nroRemito,
            string notGDE,
            DateTime fecha,
            string observaciones,
            BEAutorizante autorizante,
            BEIntermediario intermediario,
            BERemitoEstado estado,
            BEArea area)
        {
            if (!string.IsNullOrEmpty(estadoDescripcion))
            {
                remito.Nro_remito = nroRemito;
                remito.Nota_gde = notGDE;
                remito.Autorizante = autorizante;
                remito.Fecha = fecha;
                remito.Intermediario = intermediario;
                remito.Estado = estado;
                remito.AreaSolicitante = area;
                remito.Observaciones = observaciones;
                return true;
            }
            else
            {
                throw new ExcepcionNegocio("Ningun campo puede estar vacío");
            }
        }

        //como aca genero un remito devolucion con los datos del que ingreso en realidad le actualizo el estado a aceptado y fecha actual
        public void InitRemitoAceptado(BERemitoDevolucion remitoDevolucion, string notaGde, string observaciones, BEExpediente expediente)
        {
            try
            {
                var remito = TraerDatosRemitoPorNOTA(notaGde);
                var oEstadoAceptado = new Aceptado();
                var estado = TraerDatosEstado(oEstadoAceptado, 3);
                oEstadoAceptado.Codigo = estado.Codigo;
                oEstadoAceptado.Estado = estado.Estado;
                remitoDevolucion.Nota_gde = remito.Nota_gde;
                remitoDevolucion.Estado = oEstadoAceptado;
                remitoDevolucion.AreaSolicitante = remito.AreaSolicitante;
                remitoDevolucion.Autorizante = remito.Autorizante;
                remitoDevolucion.Intermediario = remito.Intermediario;
                remitoDevolucion.Fecha = DateTime.Now;
                remitoDevolucion.Observaciones = observaciones; //cargo las nuevas obseervaciones 
                                                              

                var codigo = TraerUltimoId();

                if (codigo == 0)
                    codigo = 1;
                else
                    codigo += 1;

                string nro_remito = $"S02:{ codigo.ToString().PadLeft(7, '0') }/{ DateTime.Now.Year}";
                remitoDevolucion.Nro_remito = nro_remito;

                //y ademas tengo q insertar este nuevo remito en la base.
                // obtengo indice
                remitoDevolucion.Codigo = InsertarRemitoDevolucion(remitoDevolucion); //cargo el indice para insertar
                                                                                      //y ademas asocio el nuevo remito con el expediente que es devuelto

                AsociarRemitoExpInsertar(remitoDevolucion, expediente);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }
    }
}