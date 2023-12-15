using BE;
using ClassServicios.Exceptions;
using MPP;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class BLLExpediente : IAuditable<BEExpediente, TipoAccion, BEUsuario>
    {
        private MPPExpediente MPPoExpediente;

        public BLLExpediente()
        {
            this.MPPoExpediente = new MPPExpediente();
        }

        public void CargarCuerposExpediente(BEExpediente oExpediente)
        {
            var ListaCuerpos = TraerCuerposExp(oExpediente);
            foreach (var cuerpo in ListaCuerpos)
            {
                oExpediente.AgregarCuerpo(cuerpo.Estado, cuerpo.Caja, cuerpo.Nro_cuerpo, cuerpo.Fojas, cuerpo.Hojas, cuerpo.Observaciones);
            }
        }
        public List<BECuerpo> TraerCuerposExp(BEExpediente oExp)
        {
            return this.MPPoExpediente.TraerCuerposExp(oExp);
        }

        public BEExpediente TraerExpediente(string Nro_documento)
        {
            return this.MPPoExpediente.TraerExpediente(Nro_documento);
        }

        public int BuscarCodigoExp(string Nro_expediente)
        {
            MPPExpediente MPPoExpediente = new MPPExpediente();
            return MPPoExpediente.BuscarCodigoExp(Nro_expediente);
        }

        public bool ExisteExpediente(string Nro_documento)
        {
            var exp = this.TraerExpediente(Nro_documento);
            return exp.Codigo != 0; //devuelve true, porqe el doc está en el sistema y esto es OK
        }

        public void CompletarExpediente(BEExpediente expediente)
        {
            var fullExpediente = TraerExpediente(expediente.Nro_expediente);
            expediente.Codigo = fullExpediente.Codigo;
        }

        public void CambiarEstado(BEExpediente oExpediente, int codigo)
        {
            try
            {
                this.MPPoExpediente.CambiarEstado(oExpediente, codigo);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public void Desarchivar(BEExpediente oExpediente)
        {
            try
            {
                this.CambiarEstado(oExpediente, 3);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public List<BEExpedienteEstado> ListarEstadosExp()
        {
            return this.MPPoExpediente.ListarEstadosExp();
        }

        public List<BEExpedienteEstado> ListarTodosEstadosExpediente(){ 
            return this.MPPoExpediente.ListarTodosEstadosExpediente();
        }

        public List<BEExpedienteEstado> VerificarEstadoSala2()
        {
            return this.MPPoExpediente.VerificarEstadoSala2();
        }

        public bool VerificarSala(BEExpedienteEstado oExpEstado)
        {
            var ListaExpEstados = this.MPPoExpediente.VerificarEstadoSala2();

            foreach (var item in ListaExpEstados)
            {
                if (item.Estado == oExpEstado.Estado)
                    return true;
            }
            return false;
        }

        public void Alta(BEExpediente oExpediente) {
            try
            {
                this.MPPoExpediente.Alta(oExpediente);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public bool VerificarNroExpElectronico(string Nro_gde_electronico)
        {
            return this.MPPoExpediente.VerificarNroExpElectronico(Nro_gde_electronico);
        }

        public List<BEExpediente> ListarExpedientes()
        {
            return this.MPPoExpediente.ListarExpedientes();
        }

        public List<BEExpediente> ListarExpedientesSinCuerpos()
        {
            return this.MPPoExpediente.ListarExpedientesSinCuerpos();
        }

        public bool Validar() 
        {
            throw new CodigoNoValidoException();
        }

        public void Auditar(BEExpediente Objeto, TipoAccion TipoAccion, BEUsuario Usuario)
        {
            try
            {
                MPPoExpediente.Auditar(Objeto, TipoAccion, Usuario);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        
        public void Init(BEExpediente expediente, string codigo, string numDocumento, string nroExpElectronico, string observacion, BEExpedienteEstado estado, BEArea area)
        {
            expediente.Codigo = !string.IsNullOrEmpty(codigo) ? Convert.ToInt32(codigo) : 0;
            expediente.Nro_expediente = numDocumento;
            expediente.Nro_gde_electronico = nroExpElectronico;
            expediente.Estado = estado;
            expediente.Area = area;
            expediente.Observaciones = observacion;
            expediente.Fecha_modificado = DateTime.Now;
        }

        public void InitCaja(List<BECuerpo> listaTemporal, BECaja caja, BEExpediente expediente)
        {
            var total = 0;

            listaTemporal.ForEach(x => { total = total + x.Hojas + x.Fojas; });

            if ((caja.Disponible - total) < 0)
                throw new ExcepcionNegocio("No se pueden agregar mas cuerpos a la caja.");

            caja.Disponible -= total;

            foreach (var itemCuerpo in listaTemporal)
            {   //ACA YA TENGO LA LISTA INSTANCIADA, SOLO AGREGO LOS CUERPOS
                expediente.AgregarCuerpo(itemCuerpo.Estado, itemCuerpo.Caja, itemCuerpo.Nro_cuerpo, itemCuerpo.Fojas, itemCuerpo.Hojas, itemCuerpo.Observaciones);
            }

        }

        public void AddCuerpo(List<BECuerpo> listaTemporal, BECaja caja, string nroCuerpo, string fojas, string hojas, string observaciones, BECuerpoEstado estado)
        {
            listaTemporal.Add(new BECuerpo(
                estado,
                caja,
                Convert.ToInt32(nroCuerpo),
                Convert.ToInt32(fojas),
                Convert.ToInt32(hojas),
                observaciones)
            );

            var total = 0;

            listaTemporal.ForEach(x =>
            {
                total = total + x.Hojas + x.Fojas;
            });

            if ((caja.Disponible - (total)) < 0)
                throw new ExcepcionNegocio("La cantidad de hojas y fojas ingresadas superan el maximo de la capacidad de la caja.\nPor Favor valide.");

        }
        public void ValidarExistenciaExp(BEExpediente oExpediente)
        {
            if (oExpediente.Codigo == 0)
            {
                throw new Exception("Debe seleccionar un Documento de la grilla!");
            }
        }
    }
}