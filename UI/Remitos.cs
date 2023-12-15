using BE;
using BLL;
using ClassServicios.Bitacora;
using ClassServicios.Exceptions;
using Servicios;
using System;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class Remitos : Form
    {
        private BLLRemito BLLoRemito;
        private BERemitoIngreso BEoRemitoIngreso;
        private BERemitoEgreso BEoRemitoEgreso;
        private BERemitoDevolucion BEoRemitoDevolucion;
        private BLLAutorizante BLLoAutorizante;
        private BLLArea BLLoArea;

        private BERemito BEoRemito;
        BLLBitacora BLLoBitacora = new BLLBitacora();
        public Remitos()
        {
            InitializeComponent();
            BLLoRemito = new BLLRemito();
            BEoRemitoIngreso = new BERemitoIngreso();
            BEoRemitoEgreso = new BERemitoEgreso();
            BEoRemitoDevolucion = new BERemitoDevolucion();
            BLLoAutorizante = new BLLAutorizante();
            BLLoArea = new BLLArea();
        }

 
        private void CargarGrillaRemitos()
        {
            try
            {
                dataGridViewRemitos.DataSource = BLLoRemito.ListarRemitos();
                dataGridViewRemitos.ReadOnly = true;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo,SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString()); //seguir con esto
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboAutorizantes()
        {
            try
            {
                this.comboBoxAutorizante.DataSource = BLLoAutorizante.ListarAutorizantes();
                this.comboBoxAutorizante.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboIntermediarios()
        {
            try
            {
                this.comboBoxIntermediario.DataSource = BLLoRemito.ListarIntermediarios(); //muestra el nombre+ apellido sobreescribi metodo tostring
                this.comboBoxIntermediario.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
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
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void Remitos_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrillaRemitos();
                this.comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
                CargarComboAutorizantes();
                CargarComboIntermediarios();
                CargarComboAreas();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        //casteo el remito abstracto a el que sea que viene de la grilla
        private void InitControls(object remitoGenerico)
        {
            var type = remitoGenerico.GetType();
            if(type == typeof(BERemitoIngreso))
            {
                BEoRemito = (BERemitoIngreso)remitoGenerico;
                comboBoxEstado.DataSource = BLLoRemito.ObtenerEstadosPermitidos(BEoRemito); //cargo el combo de estados segn remito;
                comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
                textBoxCodigo.Text = BEoRemito.Codigo.ToString();
                textBoxNroRemito.Text = BEoRemito.Nro_remito.ToString();
                textBoxNotaGDE.Text = BEoRemito.Nota_gde.ToString();
                comboBoxAutorizante.Text = BEoRemito.Autorizante.Nombre + ' ' + BEoRemito.Autorizante.Apellido;
                dateTimePicker1.Text = BEoRemito.Fecha.ToString();
                comboBoxIntermediario.Text = BEoRemito.Intermediario.Nombre + ' ' + BEoRemito.Intermediario.Apellido;
                comboBoxEstado.Text = BEoRemito.Estado.Estado;
                comboBoxArea.Text = BEoRemito.AreaSolicitante.Nombre;
                textBoxObservaciones.Text = BEoRemito.Observaciones;
            }
            if(type == typeof(BERemitoEgreso))
            {
                BEoRemito = (BERemitoEgreso)remitoGenerico;
                comboBoxEstado.DataSource = BLLoRemito.ObtenerEstadosPermitidos(BEoRemito); 

                comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
                textBoxCodigo.Text = BEoRemito.Codigo.ToString();
                textBoxNroRemito.Text = BEoRemito.Nro_remito.ToString();
                textBoxNotaGDE.Text = BEoRemito.Nota_gde.ToString();
                comboBoxAutorizante.Text = BEoRemito.Autorizante.Nombre + ' ' + BEoRemito.Autorizante.Apellido;
                dateTimePicker1.Text = BEoRemito.Fecha.ToString();
                comboBoxIntermediario.Text = BEoRemito.Intermediario.Nombre + ' ' + BEoRemito.Intermediario.Apellido;
                comboBoxEstado.Text = BEoRemito.Estado.Estado;
                comboBoxArea.Text = BEoRemito.AreaSolicitante.Nombre;
                textBoxObservaciones.Text = BEoRemito.Observaciones;
            }
            if (type == typeof(BERemitoDevolucion))
            {
                BEoRemito = (BERemitoDevolucion)remitoGenerico;
                comboBoxEstado.DataSource = BLLoRemito.ObtenerEstadosPermitidos(BEoRemito); 

                comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
                textBoxCodigo.Text = BEoRemito.Codigo.ToString();
                textBoxNroRemito.Text = BEoRemito.Nro_remito.ToString();
                textBoxNotaGDE.Text = BEoRemito.Nota_gde.ToString();
                comboBoxAutorizante.Text = BEoRemito.Autorizante.Nombre + ' ' + BEoRemito.Autorizante.Apellido;
                dateTimePicker1.Text = BEoRemito.Fecha.ToString();
                comboBoxIntermediario.Text = BEoRemito.Intermediario.Nombre + ' ' + BEoRemito.Intermediario.Apellido;
                comboBoxEstado.Text = BEoRemito.Estado.Estado;
                comboBoxArea.Text = BEoRemito.AreaSolicitante.Nombre;
                textBoxObservaciones.Text = BEoRemito.Observaciones;
            }


        }

        private void EnableControls()
        {
        }

        private void dataGridViewRemitos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                var remitoGenerico = dataGridViewRemitos.CurrentRow.DataBoundItem; 
                var type = remitoGenerico.GetType();

                if (type == typeof(BERemitoIngreso)) //si es de tipo ingreso casteo a remito ingreso,
                {
                    //para mostrar los numeros comodc en e pdf
                    //busco con el codigo remito los numeros comdoc
                    BEoRemitoIngreso = (BERemitoIngreso)remitoGenerico;
                    BEoRemitoIngreso.NumerosComdoc = BLLoRemito.TraerNumerosComdocRemito(BEoRemitoIngreso); //cargo en el objeto ingreso la lista

                    if (BEoRemitoIngreso.Estado.EsAceptado() || BEoRemitoIngreso.Estado.EsRechazado()) //si es aceptado ya no puedo cambiar mas el estado, asi q deshabilito todo inclusive el select estado. solo puede ver el pdf
                        buttonModificar.Enabled = comboBoxEstado.Enabled = false;
                    else
                        buttonModificar.Enabled = comboBoxEstado.Enabled = true;

                    //deshabilito todo menos el estado para q pueda modificar
                    comboBoxAutorizante.Enabled = comboBoxIntermediario.Enabled = comboBoxArea.Enabled = false;
                    textBoxNroRemito.Enabled = textBoxNotaGDE.Enabled = textBoxObservaciones.Enabled = false;
                    dateTimePicker1.Enabled = false;
                    dataGridViewRemitos.ReadOnly = true; //para q no puedan escribir en el dattagrid
                }
                else if (type == typeof(BERemitoEgreso))
                {
                    //si es de egreso busco los expedientes asociados en remito expediente
                    BEoRemitoEgreso = (BERemitoEgreso)remitoGenerico;
                    BEoRemitoEgreso.ListaExpediente = BLLoRemito.TraerExpedientesPorCodigoRemito(BEoRemitoEgreso);

                    comboBoxEstado.Enabled = buttonModificar.Enabled = false;
                    comboBoxAutorizante.Enabled = comboBoxIntermediario.Enabled = comboBoxIntermediario.Enabled = comboBoxArea.Enabled = false;
                    textBoxNroRemito.Enabled = textBoxNotaGDE.Enabled = textBoxObservaciones.Enabled = false;
                    dateTimePicker1.Enabled = false;
                    dataGridViewRemitos.ReadOnly = true;
                }
                else if (type == typeof(BERemitoDevolucion))
                {
                    BEoRemitoDevolucion = (BERemitoDevolucion)remitoGenerico; //tengo que buscar el expediente asociado
                    BEoRemitoDevolucion.Expediente = BLLoRemito.TraerExpAsociadoARemitoDev(BEoRemitoDevolucion);

                    if (BEoRemitoDevolucion.Estado.EsAceptado())
                    {
                        comboBoxEstado.Enabled = buttonModificar.Enabled = true;
                        comboBoxAutorizante.Enabled = comboBoxIntermediario.Enabled = comboBoxArea.Enabled = false;
                        textBoxNroRemito.Enabled = textBoxNotaGDE.Enabled = textBoxObservaciones.Enabled = false;
                        dateTimePicker1.Enabled = false;
                        dataGridViewRemitos.ReadOnly = true;
                    }
                    if (BEoRemitoDevolucion.Estado.EsAnulado())
                    {
                        comboBoxEstado.Enabled = buttonModificar.Enabled = false;
                        comboBoxAutorizante.Enabled = comboBoxIntermediario.Enabled = comboBoxArea.Enabled = false;
                        textBoxNroRemito.Enabled = textBoxNotaGDE.Enabled = textBoxObservaciones.Enabled = false;
                        dateTimePicker1.Enabled = false;
                        dataGridViewRemitos.ReadOnly = true;
                    }
                }

                InitControls(remitoGenerico);
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private bool Asignar()
        {
            try
            {
                BLLoRemito.InitRemito(BEoRemito, textBoxCodigo.Text);

                return BLLoRemito.SetData(
                    BEoRemito,
                    comboBoxEstado.Text,
                    textBoxNroRemito.Text,
                    textBoxNotaGDE.Text,
                    dateTimePicker1.Value,
                    textBoxObservaciones.Text,
                    (BEAutorizante)comboBoxAutorizante.SelectedItem,
                    (BEIntermediario)comboBoxIntermediario.SelectedItem,
                    (BERemitoEstado)comboBoxEstado.SelectedItem,
                    (BEArea)comboBoxArea.SelectedItem);
            }
            catch (ExcepcionNegocio ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message, "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar())
                {
                    BLLoRemito.ModificarRemito(BEoRemito);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Remitos", "Remito modificado correctamente");
                    MessageBox.Show("Remito Modificado Correctamente!!");
                }

                CargarComboAutorizantes();
                CargarComboIntermediarios();
                CargarComboAreas();
                CargarGrillaRemitos();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Remitos", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonVerPdf_Click(object sender, EventArgs e)
        {
            try
            {
                DocumentGenerationHelper.GenerarPdfPorRemitoTipo(BEoRemito);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ha ocurrido un error al cargar el documento PDF");
            }
            
        }

        private void comboBoxEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            var seleccionado = (BERemitoEstado)comboBoxEstado.SelectedItem;
            if (seleccionado.EsRechazado())
            {
                textBoxObservaciones.Enabled = true;
                textBoxObservaciones.Text = null;
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Remitos_HelpRequested(object sender, HelpEventArgs hlpevent)
        {

            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "ListadodeRemitos.htm");
            
        }
    }
}