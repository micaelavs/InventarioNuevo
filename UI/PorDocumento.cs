using BE;
using BLL;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using UI.Helpers;
using Servicios;
using ClassServicios.Bitacora;
using ClassServicios.Exceptions;

namespace UI
{
    public partial class Por_Documento : Form
    {
        public Por_Documento()
        {
            InitializeComponent();
        }

        private BLLArea BLLoArea = new BLLArea();
        private BLLExpediente BLLoExpediente = new BLLExpediente();
        private BEExpediente BEoExpediente = new BEExpediente();
        private BLLCuerpo BLLoCuerpo = new BLLCuerpo();
        private BLLCaja BLLoCaja = new BLLCaja();
        private BECaja BEoCaja;
        private List<BECuerpo> ListaTemporal = new List<BECuerpo>();
        private BLLRemito BLLoRemito = new BLLRemito();
        private BERemitoDevolucion oRemitoDevolucion = new BERemitoDevolucion();
        private BLLBitacora BLLoBitacora = new BLLBitacora();

        private void buttonSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Por_Documento_Load(object sender, EventArgs e)
        {
            CargarComboEstadosExp();
            CargarComboAreas();
            CargarComboEstadosCuerpo();
            CargarComboCajas();
            CargarNotasGdeIngreso();
            buttonAsociarRemito.Enabled = false;
            comboBoxNotaGDE.Enabled = false;
            buttonGenerarRemitoDev.Enabled = false;
            textBoxObservacionesDevolucion.Enabled = false;
        }

        private void CargarNotasGdeIngreso()
        {
            try
            {
                this.comboBoxNotaGDE.DataSource = BLLoRemito.ListarNotasGdeIngreso();
                this.comboBoxNotaGDE.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario,TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
               
            }
        }

        private void CargarComboCajas()
        {
            try
            {
                this.comboBoxCaja.DataSource = BLLoCaja.ListarCajas();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
                
            }
        }

        private void CargarComboCajasSala2()
        {
            try
            {
                this.comboBoxCaja.DataSource = BLLoCaja.ListarCajasSala2();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboEstadosCuerpo()
        {
            try
            {
                this.comboBoxEstadoCuerpo.DataSource = BLLoCuerpo.ListarCuerpoEstado();
                this.comboBoxEstadoCuerpo.ValueMember = "Codigo";
                this.comboBoxEstadoCuerpo.DisplayMember = "Estado";
                this.comboBoxEstadoCuerpo.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboAreas()
        {
            try
            {
                this.comboBoxArea.DataSource = BLLoArea.ListarAreas();
                this.comboBoxArea.ValueMember = "Codigo";
                this.comboBoxArea.DisplayMember = "Nombre";
                this.comboBoxArea.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboEstadosExp()
        {
            try
            {
                this.comboBoxEstadoExpediente.DataSource = BLLoExpediente.ListarEstadosExp();
                this.comboBoxEstadoExpediente.ValueMember = "Codigo";
                this.comboBoxEstadoExpediente.DisplayMember = "Estado";
                this.comboBoxEstadoExpediente.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private bool Validar(string palabra, int flag, string Campo)
        {
            string patron = "";
            switch (flag)
            {   //numero de documento EXPEDIENTE
                case 1:
                    patron = "^(NOTA|EXP|TRI|MEMO|ACTU)-(S01|S02):(\\d{7})\\/(19|20)[0-9][0-9]$";
                    break;
                //Nro expediente elextronico
                case 2:
                    patron = "^(EX)-((19|20)\\d{2})-(\\d{8})-(\\s)-([A-Z]{3,6})-([A-Z]{3,6})#([A-Z]{3,6})$";
                    break;
            }

            return FormExtension.ValidPatternMessage(palabra, Campo, patron, $"NO corresponde con el formato ingresado de: {Campo}");
        }

        private bool Asignar()
        {
            try
            {
                bool esNroExpedienteValido = true; // si es vacio... devuelve true, no me importa q valide
                bool esDocumentoValido = Validar(textBoxNumDocumento.Text, 1, "Documento");
                if (!string.IsNullOrEmpty(textBoxNRoExpElectronico.Text))
                {
                    esNroExpedienteValido = Validar(textBoxNRoExpElectronico.Text, 2, "Nro Exp Electrónico");
                }

                //existe exp no este repetido
                if (BLLoExpediente.ExisteExpediente(textBoxNumDocumento.Text))
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", "El Número de documento ya existe");
                    MessageBox.Show("El Número de documento ya existe");
                    return false;
                }

                
                if (!string.IsNullOrEmpty(textBoxNRoExpElectronico.Text))
                {
                    if (BLLoExpediente.VerificarNroExpElectronico(textBoxNRoExpElectronico.Text))
                    {
                        BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", "El Nro de Expediente Electrónico ya existe");
                        MessageBox.Show("El Nro de Expediente Electrónico ya existe");
                        return false;
                    }
                }

                if (listBoxCuerpos.Items.Count == 0)
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", "Falta añadir cuerpos");
                    MessageBox.Show("Falta añadir cuerpos");
                    return false;
                }

                if (esDocumentoValido && esNroExpedienteValido) 
                {
                    BLLoExpediente.Init(
                        BEoExpediente,
                        textBoxCodigoExp.Text,
                        textBoxNumDocumento.Text,
                        textBoxNRoExpElectronico.Text,
                        textBoxObserv.Text,
                        (BEExpedienteEstado)comboBoxEstadoExpediente.SelectedItem,
                        (BEArea)comboBoxArea.SelectedItem);

                    BLLoExpediente.InitCaja(ListaTemporal, BEoCaja, BEoExpediente);

                    return true;
                }
                else
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", "Ingrese los formatos correctos");
                    MessageBox.Show("Ingrese los formatos correctos");
                    return false;
                }
            }
            catch (ExcepcionNegocio ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message, "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }

        private void buttonGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar())
                {
                    BLLoExpediente.Alta(BEoExpediente);
                    MessageBox.Show("El Documento " + BEoExpediente.Nro_expediente + " se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Alta Documento", "Alta Documento correcto");

                    var CodExp = BLLoExpediente.BuscarCodigoExp(BEoExpediente.Nro_expediente);
                    BEoExpediente.Codigo = CodExp;
                    BLLoExpediente.Auditar(BEoExpediente, TipoAccion.Alta, SingletonSesion.Instancia.Usuario);
                    BLLoCaja.ActualizarDisponible(BEoCaja);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Alta Documento", "Actualización dispponible caja"); 
                    //recién cuando pudiste generar el expediente habilitas para asocuar al remito
                    buttonAsociarRemito.Enabled = comboBoxNotaGDE.Enabled = true;

                    if (BEoExpediente.Estado.EsDevolucion()) //si es devolucion habilito los campos para devolucion debajo
                        textBoxObservacionesDevolucion.Enabled = buttonGenerarRemitoDev.Enabled = true;
                   

                    Limpiar();
                    CargarComboAreas();
                    CargarComboEstadosExp();
                    CargarComboCajas();
                    CargarComboEstadosCuerpo();
                    CargarComboEstadosExp();
                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        public void CargarListBox()
        {
            listBoxCuerpos.Items.Clear();
            foreach (var item in ListaTemporal)
            {
                listBoxCuerpos.Items.Add($"Cuerpo {item.Nro_cuerpo} - Hojas: {item.Fojas} - Fojas: {item.Hojas}");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (textBoxNroCuerpo.Text == "")
            {
                
                MessageBox.Show("Debe completar Nro de cuerpo!");
                return;
            }

            if (textBoxFojas.Text == "")
            {
                MessageBox.Show("Debe completar Fojas de cuerpo!");
                return;
            }

            if (textBoxHojas.Text == "")
            {
                MessageBox.Show("Debe completar hojas de cuerpo!");
                return;
            }

            try
            {
                BLLoExpediente.AddCuerpo(
                    ListaTemporal,
                    BEoCaja,
                    textBoxNroCuerpo.Text,
                    textBoxFojas.Text,
                    textBoxHojas.Text,
                    textBoxObservacionesCuerpo.Text,
                    (BECuerpoEstado)comboBoxEstadoCuerpo.SelectedItem);
                MessageBox.Show("Cuerpo agregado correctamente!");
                CargarListBox();
            }
            catch (ExcepcionNegocio ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message, "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Alta Documento", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void Limpiar()
        {
            textBoxNroCuerpo.Clear();
            textBoxFojas.Clear();
            textBoxHojas.Clear();
            textBoxObservacionesCuerpo.Clear();
            CargarComboEstadosCuerpo();
            listBoxCuerpos.Items.Clear();
            ListaTemporal.Clear();
            BEoExpediente.LimpiarLista();
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void SeleccionarCaja(object sender, EventArgs e)
        {
            BEoCaja = (BECaja)comboBoxCaja.SelectedItem;
        }

        private void fijarCaja_Click(object sender, EventArgs e)
        {
            if (comboBoxCaja.SelectedText != null)
            {
                this.comboBoxCaja.Enabled = false;

            }
        }

        private void liberarCaja_Click(object sender, EventArgs e)
        {
            comboBoxCaja.Enabled = true;
        }

        private void comboBoxEstadoExpediente_SelectedIndexChanged(object sender, EventArgs e)
        {
            var oEstadoExpediente = (BEExpedienteEstado)comboBoxEstadoExpediente.SelectedItem;

            if (BLLoExpediente.VerificarSala(oEstadoExpediente))
            {
                CargarComboCajasSala2();
            }
            else
            {
                CargarComboCajas();
            }
        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
        }

        private void buttonAsociarRemito_Click(object sender, EventArgs e)
        {
            try
            {
                BLLoRemito.AsociarRemitoExpediente(comboBoxNotaGDE.Text, BEoExpediente);
                MessageBox.Show("Remito asociado correctamente!");
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Alta Documento", "Remito asociado correctamente");


                if (BEoExpediente.Estado.EsDevolucion()) //si es devolucion habilitas //solo si el estado del exp es devol generop remito devol
                {
                    BLLoRemito.InitRemitoAceptado(oRemitoDevolucion, comboBoxNotaGDE.Text, textBoxObservacionesDevolucion.Text, BEoExpediente);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Alta Documento", "Asociación con remito devolución correcta");
                    MessageBox.Show("Asociación con remito devolución correcta!");

                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Alta Documento", ex.Message);
                MessageBox.Show(ex.Message);
            }
          
        }

        private void buttonGenerarRemitoDev_Click(object sender, EventArgs e)
        {
            try
            {
                DocumentGenerationHelper.GenerarPdfPorDocumento(oRemitoDevolucion, BEoExpediente);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ha ocurrido un error al cargar el Documento PDF");
            }
           
        }

        private void Por_Documento_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "RegistrarExpedientesPorDocumento.htm");
        }
    }
}