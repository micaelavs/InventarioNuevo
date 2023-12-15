using BE;
using BLL;
using ClassServicios.Exceptions;
using Servicios;
using System;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class GestionAutorizantes : Form
    {
        private BEAutorizante BEoAutorizante;
        private BLLAutorizante BLLoAutorizante;
        private BLLDependencia BLLoDependencia;

        public GestionAutorizantes()
        {
            InitializeComponent();
            BEoAutorizante = new BEAutorizante();
            BLLoAutorizante = new BLLAutorizante();
            BLLoDependencia = new BLLDependencia();
        }

        private void buttonNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar())
                {
                   
                    BLLoAutorizante.Alta(BEoAutorizante);
                    MessageBox.Show("El Autorizante se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    var cod = BLLoAutorizante.TraerCodUltAutorizante();
                    BEoAutorizante.Codigo = cod;
                    BLLoAutorizante.Auditar(BEoAutorizante, TipoAccion.Alta, SingletonSesion.Instancia.Usuario);
                    Limpiar();
                    CargarGrillaAutorizante();
                }
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }

        private void Limpiar()
        {
            textBoxCodigo.Clear();
            textBoxNombre.Clear();
            textBoxApellido.Clear();
            textBoxDocumento.Clear();
            CargarComboDependencias();
        }

        private bool Asignar()
        {
            try
            {
                return BLLoAutorizante.Init(
                    BEoAutorizante,
                    textBoxCodigo.Text,
                    textBoxNombre.Text,
                    textBoxApellido.Text,
                    textBoxDocumento.Text,
                    (BEDependencia)comboBoxDependencias.SelectedItem
                    );
            }
            catch (ExcepcionNegocio ex)
            {
                MessageBox.Show(ex.Message, "Ah ocurrido un error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            catch (Exception ex)
            {
                ex.ShowError();
            }

            return false;
        }

        private void CargarComboDependencias()
        {
            try
            {
                this.comboBoxDependencias.DataSource = BLLoDependencia.ListarDependencias();
                this.comboBoxDependencias.ValueMember = "Codigo";
                this.comboBoxDependencias.DisplayMember = "Nombre";
                this.comboBoxDependencias.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void GestionAutorizantes_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrillaAutorizante();
                CargarComboDependencias();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void CargarGrillaAutorizante()
        {
            try
            {
                dataGridViewAutorizantes.DataSource = BLLoAutorizante.ListarAutorizantes();
                dataGridViewAutorizantes.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar())
                {
                    
                    BLLoAutorizante.Modificacion(BEoAutorizante);
                    MessageBox.Show("El Autorizante se modificó correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoAutorizante.Auditar(BEoAutorizante, TipoAccion.Modificacion, SingletonSesion.Instancia.Usuario);
                    Limpiar();
                    CargarGrillaAutorizante();
                }
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }


        private void ButtonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
            CargarGrillaAutorizante();
        }

        private void dataGridViewEtiquetas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEoAutorizante = (BEAutorizante)dataGridViewAutorizantes.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEoAutorizante.Codigo.ToString();
                textBoxNombre.Text = BEoAutorizante.Nombre.ToString();
                textBoxApellido.Text = BEoAutorizante.Apellido.ToString();
                textBoxDocumento.Text = BEoAutorizante.Dni.ToString();
                this.comboBoxDependencias.Text = BEoAutorizante.Dependencia.Nombre;
                dataGridViewAutorizantes.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonMostrarH_Click(object sender, EventArgs e)
        {
            BEoAutorizante = (BEAutorizante)dataGridViewAutorizantes.CurrentRow.DataBoundItem;
            AuditoriaAutorizante frm = new AuditoriaAutorizante(BEoAutorizante);
            frm.MdiParent = this.ParentForm;
            frm.Show();
        }
    }
}