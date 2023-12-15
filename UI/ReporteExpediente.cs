using BE;
using BLL;
using ClassServicios;
using iTextSharp.text;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class ReporteExpediente : Form
    {
        public ReporteExpediente()
        {
            InitializeComponent();
            InicializarFechas();
        }
        //esta pantalla es mas bien de auditoria para ver por qué cambios pasó un expediente
        private DateTime MaximaFechaHoy;
        BLLAuditoriaExpediente BLLoAuditoriaExpediente = new BLLAuditoriaExpediente();
        BLLExpediente BLLoExpediente = new BLLExpediente();
        BLLArea BLLoArea = new BLLArea();
        BLLCaja BLLoCaja = new BLLCaja();
        BLLUsuario BLLoUsuario = new BLLUsuario();

        public IEnumerable<BEAuditoriaExpediente> ListaAuditoria { get; private set; }
        List<BEAuditoriaExpediente> ListaResult = new List<BEAuditoriaExpediente>();

        private void ReporteExpediente_Load(object sender, EventArgs e)
        {
            try
            {   //TENGO QUE VALIDAR DIGITO, PORQUE INTERVIENEN LOS USUARIOS
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica
                    Application.Exit();
                    return;
                }
                CargarComboAreas();
                CargarComboEstados();
                CargarComboUsuarios();
                CargarGrilla();
                
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        private void InicializarFechas()
        {
            MaximaFechaHoy = DateTime.Now.Date.AddDays(1).AddMilliseconds(-1);
            dateTimePickerHast.Value = DateTime.Now.Date.AddDays(1).AddMilliseconds(-1);
            dateTimePickerDes.Value = DateTime.Now.Date.AddDays(-1);
        }
        private void btn_limpiar_Click(object sender, EventArgs e)
        {
            InicializarFechas();
           
        }

        private void CargarComboEstados()
        {
            try
            {
                var listaEstados = BLLoExpediente.ListarTodosEstadosExpediente();
                listaEstados.Add(null);
                comboBoxEst.DataSource = listaEstados;
                comboBoxEst.DropDownStyle = ComboBoxStyle.DropDownList;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }            

        private void CargarComboAreas()
        {
            try
            {
                var listaAreas = BLLoArea.ListarAreas();
                listaAreas.Add(null);
                comboBoxArea.DataSource = listaAreas;
                comboBoxArea.DropDownStyle = ComboBoxStyle.DropDownList;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
           
        }

        private void CargarComboUsuarios()
        {
            try
            {
                var listaUsuarios = BLLoUsuario.TraerActivosyNoActivos();
                listaUsuarios.Add(null);
                comboBoxUsu.DataSource = listaUsuarios;
                comboBoxUsu.DropDownStyle = ComboBoxStyle.DropDownList;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            
        }

        private void CargarGrilla()
        {
            try
            {
                dataGridView1.DataSource = BLLoAuditoriaExpediente.ExpedienteVerReporte();
                dataGridView1.Columns[0].Visible = false;
                dataGridView1.Columns[10].Visible = false;
                dataGridView1.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }   

        private void buttonLimp_Click(object sender, EventArgs e)
        {
            InicializarFechas();
            CargarComboAreas();
            CargarComboEstados();
            CargarComboUsuarios();
            CargarGrilla();
            textBoxDocumento.Text = null;
        }

        private void buttonBusc_Click(object sender, EventArgs e)
        {
            DateTime fechaInicio = dateTimePickerDes.Value;
            DateTime fechaFin = dateTimePickerHast.Value;
            var NumeroDocumento = textBoxDocumento.Text;
            var EstadoSeleccionado =(BEExpedienteEstado)comboBoxEst.SelectedItem;
            var AreaSeleccionada = (BEArea)comboBoxArea.SelectedItem;
            var UsuarioSeleccionado = (BEUsuario)comboBoxUsu.SelectedItem;

            try
            {
                if (fechaFin < fechaInicio)
                {
                    MessageBox.Show("La fecha de HASTA no puede ser mayor a fecha DESDE", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                if (fechaFin > MaximaFechaHoy)
                {
                    MessageBox.Show("No existen datos con Fecha mayor a HOY", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

              
               var ListaReporte = BLLoAuditoriaExpediente.ExpedienteVerReporte();

                if (ListaReporte != null && ListaReporte.Count != 0)
                {
                    ListaAuditoria = ListaReporte;

                    if(AreaSeleccionada!=null)
                    {
                        ListaAuditoria = ListaAuditoria.Where( x => x.Area.Nombre == AreaSeleccionada.Nombre);
                    }

                   
                    if(NumeroDocumento != "")
                    {
                        ListaAuditoria = ListaAuditoria.Where(x => x.Nro_expediente == NumeroDocumento.ToString());
                    }

                    if (EstadoSeleccionado != null)
                    {
                        ListaAuditoria = ListaAuditoria.Where(x => x.Estado.Estado == EstadoSeleccionado.Estado);
                    }

                    if (UsuarioSeleccionado != null)
                    {
                        ListaAuditoria = ListaAuditoria.Where(x => x.Usuario.Nombre_usuario == UsuarioSeleccionado.Nombre_usuario);
                    }

                    if (fechaInicio != null && fechaFin!= null)
                    {
                        ListaAuditoria = ListaAuditoria.Where(x => x.Fecha_modificado >= fechaInicio && x.Fecha_modificado <= fechaFin);
                    }

                    ListaResult.Clear();
                    foreach (var item in ListaAuditoria)
                    {
                        ListaResult.Add(item);
                    }
                    if (ListaResult.Count == 0)
                    {
                        MessageBox.Show("No hay datos para motrar con los filtros ingresados", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    }
                    else
                    {
                        dataGridView1.DataSource = ListaResult;
                        dataGridView1.Columns[0].Visible = false;
                        dataGridView1.Columns[10].Visible = false;
                    }
                    
                   
                }
                else
                {
                    MessageBox.Show("No hay datos en el histórico", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonDescargar_Click(object sender, EventArgs e)
        {
            try
            {
                DocumentGenerationHelper.GenerarPdfReporte(ListaResult);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ha ocurrido un error al cargar el documento PDF");
            }
            
        }

        private void ReporteExpediente_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "Reporte.htm");
        }
    }
}
