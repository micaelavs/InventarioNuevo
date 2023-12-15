using BE;
using BLL;
using ClassServicios.Bitacora;
using Servicios;
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
/*ESTADOS: ING A REVI - DIG - NO DIG - DESARCH - DEVOLUCION - POR RETIRAR
* PODES MODIFICAR LOS EXP QUE ESTEN EN ING A REVISAR - DIG - NO DIGI - POR RETIRAR.
* 
* */

namespace UI
{
    public partial class Editar_Documento : Form
    {
        public Editar_Documento()
        {
            InitializeComponent();
        }
        BLLBitacora BLLoBitacora = new BLLBitacora();
        BLLExpediente BLLoExpediente = new BLLExpediente();
        private BEExpediente BEoExpediente = new BEExpediente();
        BEExpedienteEstado BEoExpedienteEstado;
        BLLRemito BLLoRemito = new BLLRemito();
        private BERemito BEoRemito;
        BLLCuerpo BLLoCuerpo = new BLLCuerpo();
        BLLCaja BLLoCaja = new BLLCaja();
        private BERemitoDevolucion oRemitoDevolucion = new BERemitoDevolucion();

        private void dataGridViewExpe_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEoExpediente = (BEExpediente)dataGridViewExpe.CurrentRow.DataBoundItem;
            
                var ListaCuerpos = BLLoExpediente.TraerCuerposExp(BEoExpediente);
                dataGridViewCuerpos.DataSource = ListaCuerpos;
                BLLoExpediente.CargarCuerposExpediente(BEoExpediente); //cargo los cuerpos porque del grid vienen los expedientes solos
                dataGridViewExpe.ReadOnly = true;
                dataGridViewCuerpos.ReadOnly = true;
                if (BEoExpediente.Estado.EsDesarchivado() || BEoExpediente.Estado.EsDevolucion())//No voy a modificar estado ni gfenerar remitodev
                {
                    MessageBox.Show("El Documento se encuentra " + BEoExpediente.Estado.ToString(), "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    comboBoxEstadoExpediente.Enabled = false;
                    textBoxNotaGde.Enabled = false;
                    buttonModificar.Enabled = false;
                    textBoxObservacionesDevolucion.Enabled = false;
                    buttonGenerarRemitoDev.Enabled = false;

                }
                else
                {
                    BEoRemito = BLLoRemito.TaerRemitoAsociado(BEoExpediente); //traigo la nota gde para mostrar en el textbox
                    comboBoxEstadoExpediente.Enabled = true;
                    textBoxNotaGde.Enabled = false;
                    if (BEoRemito != null)
                    {
                        textBoxNotaGde.Text = BEoRemito.Nota_gde;
                    }

                    buttonModificar.Enabled = true;
                    if (BEoExpedienteEstado.EsDevolucion())
                    {
                        textBoxObservacionesDevolucion.Enabled = true;
                        buttonGenerarRemitoDev.Enabled = true;
                    }
                    else{

                        textBoxObservacionesDevolucion.Enabled = false;
                        buttonGenerarRemitoDev.Enabled = false;

                    }


                }
           
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        void CargarGrilla()
        {
            try
            {
                dataGridViewExpe.DataSource = BLLoExpediente.ListarExpedientesSinCuerpos();
                if (BLLoExpediente.ListarExpedientesSinCuerpos() != null)
                {
                    dataGridViewExpe.Columns[6].Visible = false;
                }

                dataGridViewExpe.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }

        private void Editar_Documento_Load(object sender, EventArgs e)
        {
            buttonGenerarRemitoDev.Enabled = false;
            textBoxNotaGde.Enabled = false;
            textBoxObservacionesDevolucion.Enabled = false;
            try
            {
                CargarGrilla();
                CargarComboEstadosExp();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
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
                
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {

            try
            {
                
                BLLoExpediente.ValidarExistenciaExp(BEoExpediente);
                BEoExpediente.Estado = BEoExpedienteEstado;//viene del combo
                BEoExpediente.Fecha_modificado = DateTime.Now;

                BLLoExpediente.CambiarEstado(BEoExpediente, BEoExpediente.Estado.Codigo);
                MessageBox.Show("El Documento se modificó correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);

                BLLoExpediente.Auditar(BEoExpediente, TipoAccion.Modificacion, SingletonSesion.Instancia.Usuario);
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Modificación", "Modificación Documento correcta");
                if (BEoExpedienteEstado.EsDevolucion()|| BEoExpedienteEstado.EsPorRetirar()) //si el estado que coloco es
                {
                    //verifico si hay disponibilidad
                    BLLoCaja.VerificarDisponibilidadCaja(BEoExpediente);
                    BLLoCuerpo.MoverASala2(BEoExpediente);
                    BLLoCaja.LiberarEspacio(BEoExpediente);
                    BLLoCaja.QuitarEspacioSala2(BEoExpediente);
                }
              
                //Limpiar();
                //Actualizo grilla exp y cuerpos de ese exp
                CargarGrilla();
                var ListaCuerpos = BLLoExpediente.TraerCuerposExp(BEoExpediente);
                dataGridViewCuerpos.DataSource = ListaCuerpos;


            }

            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }

        private void comboBoxEstadoExpediente_SelectedIndexChanged(object sender, EventArgs e)
        {
            BEoExpedienteEstado = (BEExpedienteEstado)comboBoxEstadoExpediente.SelectedItem;
            if (BEoExpedienteEstado.EsDevolucion())
            {
                buttonGenerarRemitoDev.Enabled = true;
                textBoxObservacionesDevolucion.Enabled = true;

            }
            else
            {
                buttonGenerarRemitoDev.Enabled = false;
                textBoxObservacionesDevolucion.Enabled = false;
            }
        }

        private void label14_Click(object sender, EventArgs e)
        {

        }

        private void buttonGenerarRemitoDev_Click(object sender, EventArgs e)
        {
            //Tengo que crear el remito dev y asociarlo con el expediente que es quien le va a dar salida
            BLLoRemito.InitRemitoAceptado(oRemitoDevolucion, textBoxNotaGde.Text, textBoxObservacionesDevolucion.Text, BEoExpediente);
            BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Asociacion Remito Devolución", "Asociación Remito devolución correcta");
            MessageBox.Show("Asociación con remito devolución correcta!");
                
            DocumentGenerationHelper.GenerarPdfPorDocumento(oRemitoDevolucion, BEoExpediente);

        }

        private void Editar_Documento_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "EditarDocumentos.htm");
        }

        private void buttonSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
