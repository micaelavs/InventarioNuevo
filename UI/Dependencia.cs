using BE;
using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace UI
{
    public partial class Dependencia : Form
    {
        public Dependencia()
        {
            InitializeComponent();
        }
        BLLDependencia BLLoDepen = new BLLDependencia();
        BEDependencia BEoDepen = new BEDependencia();
        private void buttonNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                
                if (Asignar() == true)
                {
                    BLLoDepen.Alta(BEoDepen);
                    MessageBox.Show("La Dependencia se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaDependencias();
                }


            }

            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
            try
            {
                
                if (Asignar() == true)
                {
                    BLLoDepen.Modificacion(BEoDepen);
                    MessageBox.Show("La Dependencia se modificó correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                    Limpiar();
                    CargarGrillaDependencias();
                }
            }

            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        void Limpiar()
        {

            textBoxCodigo.Text = null;
            textBoxNombre.Text = null;

        }

        bool Asignar()
        {
            try
            {
                if (textBoxCodigo.Text != "")
                {
                    BEoDepen.Codigo = Convert.ToInt32(textBoxCodigo.Text);
                }
                else
                {
                    BEoDepen.Codigo = 0;
                }
                if (textBoxNombre.Text != "")
                {
                    BEoDepen.Nombre = (textBoxNombre.Text).ToString();
                    return true;
                }
                else
                {

                    MessageBox.Show("Ingrese Nombre de la Dependencia");
                    return false;
                }


            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            return false;
        }

        void CargarGrillaDependencias()
        {
            try
            {
                dataGridViewDependencias.DataSource = BLLoDepen.ListarDependencias();

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void buttonEliminar_Click(object sender, EventArgs e)
        {
            bool rta;
            DialogResult RtaMSG = new DialogResult();

            try
            {
                Asignar();
                RtaMSG = MessageBox.Show("Desea eliminar la dependencia seleccionada ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoDepen.Baja(BEoDepen);
                    MessageBox.Show("La Dependencia ha sido dada de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                }
                Limpiar();
                CargarGrillaDependencias();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void dataGridViewDependencias_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            try
            {
                BEoDepen = (BEDependencia)dataGridViewDependencias.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEoDepen.Codigo.ToString();
                textBoxNombre.Text = BEoDepen.Nombre.ToString();
                dataGridViewDependencias.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void Dependencia_Load(object sender, EventArgs e)
        {
            try
            {
                dataGridViewDependencias.DataSource = BLLoDepen.ListarDependencias();

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
    }
}
