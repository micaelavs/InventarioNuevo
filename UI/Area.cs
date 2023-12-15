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
    public partial class Area : Form
    {
        public Area()
        {
            InitializeComponent();
        }
        BLLArea BLLoArea = new BLLArea();
        BEArea BEoArea = new BEArea();
        private void buttonNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar() == true)
                {
                    BLLoArea.Alta(BEoArea);
                    MessageBox.Show("El Área se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaArea();
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
                    BLLoArea.Modificacion(BEoArea);
                    MessageBox.Show("El Area ha sido modificada correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                    Limpiar();
                    CargarGrillaArea();
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
                    BEoArea.Codigo = Convert.ToInt32(textBoxCodigo.Text);
                }
                else
                {
                    BEoArea.Codigo = 0;
                }
                if (textBoxNombre.Text != "")
                {
                    BEoArea.Nombre = (textBoxNombre.Text).ToString();
                    return true;
                }
                else
                {

                    MessageBox.Show("Ingrese Nombre del Àrea");
                    return false;
                }


            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            return false;
        }

        void CargarGrillaArea()
        {
            try
            {
                dataGridViewAreas.DataSource = BLLoArea.ListarAreas();
                dataGridViewAreas.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void Area_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrillaArea();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonEliminar_Click(object sender, EventArgs e)
        {  
            DialogResult RtaMSG = new DialogResult();
            try
            {
                Asignar();
                RtaMSG = MessageBox.Show("Desea eliminar el Àrea seleccionada ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoArea.Baja(BEoArea);
                    MessageBox.Show("El Area se dio de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                Limpiar();
                CargarGrillaArea();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void dataGridViewAreas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEoArea = (BEArea)dataGridViewAreas.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEoArea.Codigo.ToString();
                textBoxNombre.Text = BEoArea.Nombre.ToString();
                dataGridViewAreas.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void Area_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            
            
        }
    }
}
