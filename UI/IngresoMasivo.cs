using BE;
using BLL;
using ClassServicios;
using ClassServicios.Bitacora;
using Servicios;
using System;
using System.Collections.Generic;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class Ingreso_Masivo : Form, IIdiomaObserver
    {
        public Ingreso_Masivo()
        {
            InitializeComponent();
            if (SingletonSesion.Instancia.IsLogged())
                Traducir(SingletonSesion.Instancia.Usuario.Idioma); 
            else
                Traducir();
        }

        #region Variables

        private BLLRemito BLLoRemito = new BLLRemito();
        private BLLArea BLLoArea = new BLLArea();
        private BLLAutorizante BLLoAutorizante = new BLLAutorizante();
        private BEIntermediario BEoIntermediario = new BEIntermediario();
        private List<string> Numeros_comdoc = new List<string>();
        private BERemitoIngreso BEoRemitoIngreso = new BERemitoIngreso();
        BLLBitacora BLLoBitacora = new BLLBitacora();

        #endregion Variables

        private void CargarComboIntermediarios()
        {
            try
            {
                this.comboBoxIntermediario.DataSource = BLLoRemito.ListarIntermediarios(); //muestra el nombre+ apellido sobreescribi metodo tostring
                this.comboBoxIntermediario.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void CargarComboEstados()
        {
            try
            {
                var EstadosPermitidos = BLLoRemito.ObtenerEstadosPermitidos(BEoRemitoIngreso);// OKEY
                this.comboBoxEstado.DataSource = EstadosPermitidos;
                this.comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
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
            { MessageBox.Show(ex.Message); }
        }

        private void CargarComboAutorizantes()
        {
            try
            {
                this.comboBoxAutorizante.DataSource = BLLoAutorizante.ListarAutorizantes();
                this.comboBoxAutorizante.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        public void CargarListBox()
        {
            listBoxRtoComdoc.Items.Clear();
            foreach (var item in Numeros_comdoc)
            {
                listBoxRtoComdoc.Items.Add(item).ToString();
            }
        }

        private void HabilitarBotonPDF()
        {
            buttonGenerarPDF.Enabled = true;
        }

        private void DeshabilitarBotonPDF()
        {
            buttonGenerarPDF.Enabled = false;
        }

        private void Ingreso_Masivo_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
            try
            {
                CargarComboEstados();
                CargarComboIntermediarios();
                CargarComboAreas();
                CargarComboAutorizantes();
                DeshabilitarBotonPDF();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        private void Traducir(BEIdioma idioma = null)
        {
            var traducciones = BLLTraductor.ObtenerTraducciones(idioma); 

            this.Controls.TranslateAll(traducciones);
            this.Translate(traducciones);

        }


        public void UpdateLanguage(BEIdioma idioma)
        {
            Traducir(idioma);
        }
        private void comboBoxIntermediario_SelectedValueChanged(object sender, EventArgs e)
        {
            var oIntermediario = (BEIntermediario)comboBoxIntermediario.SelectedItem;
            textBoxDni.Text = (oIntermediario.Dni).ToString();
            textBoxDni.Enabled = false;
        }

        private bool EsComdocValido(string palabra, string Campo)
        {
            return FormExtension.ValidPatternMessage(
                palabra,
                Campo,
                "^(RTO-S02):(\\d{7})\\/((19|20)\\d{2})$", //7 son exact 7, 19 o 20 y lo q sigue dos digitos
                "Formato Rto Comdoc incorrecto");
        }

        private void ButtonAdd_Click(object sender, EventArgs e)
        {
            var RtoComdoc = textBoxRTOComdoc.Text;
            var comDocValido = EsComdocValido(RtoComdoc.Trim(), "Rto Comdoc");
            var existeRemitoComDoc = BLLoRemito.BuscarRtoComdoc(RtoComdoc);

            if (existeRemitoComDoc)
            {
                MessageBox.Show("El Rto Comdoc ya existe en el sistema!");
                return;
            }

            if (comDocValido && !existeRemitoComDoc)
            {
                Numeros_comdoc.Add(textBoxRTOComdoc.Text);
                CargarListBox();
                MessageBox.Show("Rto Comdoc añadido correctamente!");
            }
            else
            {
                MessageBox.Show("Ingrese los datos correctos para continuar!");
            }
        }

        private void Limpiar()
        {
            CargarComboAreas();
            CargarComboAutorizantes();
            CargarComboEstados();
            CargarComboIntermediarios();
            textBoxCodigoRemito.Text = null;
            textBoxDni.Text = null;
            textBoxObserv.Text = null;
            textBoxRTOComdoc.Text = null;
            listBoxRtoComdoc.Text = null;
        }

        private bool CampoEsValido(string palabra, string Campo)
        {
            //valida nota gde
            return FormExtension.ValidPatternMessage(
                palabra.Trim(),
                Campo,
                "^(NO)-((19|20)\\d{2})-(\\d{8})-([A-Z]{3,6})-([A-Z]{3,6})#([A-Z]{3,6})$",
                "No corresponde al formato de Nota GDE ");
        }

        private void ButtonGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar())
                {
                    BLLoRemito.AltaIngreso(BEoRemitoIngreso);
                    MessageBox.Show("Alta Ingreso Masivo correcta!");
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Ingreso Masivo", "Ingreso Masivo Comdoc correcto");
                    HabilitarBotonPDF();
                    Limpiar();
                    CargarComboAreas();
                    CargarComboAutorizantes();
                    CargarComboEstados();
                    CargarComboIntermediarios();
                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private bool Asignar()
        {
            try
            {
                var esCodigoNotaValido = CampoEsValido(textBoxNotaGde.Text, "Nota Gde"); //valida el formato
                var existeNotaGde = BLLoRemito.BuscarNotaGde(textBoxNotaGde.Text); //verifico que no este repetida

                var RtoComdoc = textBoxRTOComdoc.Text;
                var existeRemitoComdoc = BLLoRemito.BuscarRtoComdoc(RtoComdoc);

                if (existeRemitoComdoc)
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", "El Rto Comdoc ya existe en el sistema");
                    MessageBox.Show("El Rto Comdoc ya existe en el sistema! O no tiene formato correcto!");
                    return false;
                }
                var validarCom = EsComdocValido(RtoComdoc, "Nro Comdoc");
                if (validarCom == false)
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", "Ingrese los formatos correctos para continuar");
                    MessageBox.Show("Ingrese los formatos correctos para continuar!");
                }

                if (existeNotaGde)
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", "La nota GDE ingresada ya se encuentra en el sistema");
                    MessageBox.Show("La nota GDE ingresada ya se encuentra en el sistema!");
                    return false;
                }
                if (textBoxRTOComdoc.Text == "")
                {
                    MessageBox.Show("EL campo RTO COMDOC está vacío!");
                    return false;
                }

                if (listBoxRtoComdoc.Items.Count == 0)
                {
                    MessageBox.Show("Recuerde añadir a la lista los NRO RTO COMDOC!");
                    return false;
                }

                if ((esCodigoNotaValido && existeNotaGde == false)) // si valida la nota gde porque  esta bien el formato y es unica! asigno, xq el rtocomdoc ya lo validé
                {
                    BLLoRemito.InitRemito(BEoRemitoIngreso, textBoxCodigoRemito.Text);
                    BEoRemitoIngreso.Nota_gde = textBoxNotaGde.Text;
                    BEoRemitoIngreso.Autorizante = (BEAutorizante)comboBoxAutorizante.SelectedItem;
                    BEoRemitoIngreso.Intermediario = (BEIntermediario)comboBoxIntermediario.SelectedItem;
                    BEoRemitoIngreso.SetEstado((BERemitoEstado)comboBoxEstado.SelectedItem);
                    BEoRemitoIngreso.AreaSolicitante = (BEArea)comboBoxArea.SelectedItem;
                    BEoRemitoIngreso.Fecha = DateTime.Now;
                    BEoRemitoIngreso.Observaciones = textBoxObserv.Text;
                    BEoRemitoIngreso.NumerosComdoc = Numeros_comdoc; 

                    return true;
                }
                else
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", "Ingrese los datos correctos para continuar");
                    MessageBox.Show("Ingrese los datos correctos para continuar!");
                    return false;
                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Ingreso Masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }

        private void ButtonGenerarPDF_Click(object sender, EventArgs e)
        {
            try
            {
                DocumentGenerationHelper.GenerarPdfRemitoIngreso(BEoRemitoIngreso);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ha ocurrido un error al cargar el documento PDF");
            }
          
        }

        private void ButtonSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            listBoxRtoComdoc.Items.Clear();
            Numeros_comdoc.Clear();
            textBoxRTOComdoc.Text = null;
        }

        private void Ingreso_Masivo_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "RegistrarIngresoMasivo.htm");
        }
    }
}