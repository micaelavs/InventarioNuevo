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
    public partial class Idiomas : Form
    {
        BEIdioma BEoIdioma = new BEIdioma();
        BLLIdioma BLLoIdioma = new BLLIdioma();
        public Idiomas()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
        void Limpiar()
        {

            textBoxCodigo.Text = null;
            textBoxNombre.Text = null;
            checkBoxDefault.Checked = false;

        }
        private void buttonNuevoIdioma_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar() == true)
                {
                    BLLoIdioma.Alta(BEoIdioma);
                    MessageBox.Show("Idioma dado de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaIdioma();
                }
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        bool Asignar()
        {
            try
            {
                if (textBoxCodigo.Text != "")
                {
                    BEoIdioma.Id = Convert.ToInt32(textBoxCodigo.Text);
                }
                else
                {
                    BEoIdioma.Id = 0;
                }
                if (textBoxNombre.Text != "")
                {
                    BEoIdioma.Nombre = (textBoxNombre.Text).ToString();
                    BEoIdioma.Default = checkBoxDefault.Checked;
                    return true;
                }
                else
                {

                    MessageBox.Show("Ingrese Nombre de etiqueta");
                    return false;
                }


            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            return false;
        }

        void CargarGrillaIdioma()
        {
            try
            {
                dataGridViewIdiomas.DataSource = BLLoIdioma.ListarIdiomas();
                dataGridViewIdiomas.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void Idiomas_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrillaIdioma();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonModificarIdioma_Click(object sender, EventArgs e)
        {
            try
            {
               
                if (Asignar() == true)
                {
                    BLLoIdioma.Modificacion(BEoIdioma);
                    MessageBox.Show("Idioma Modificado correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                    Limpiar();
                    CargarGrillaIdioma();
                }
            }

            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonEliminarIdioma_Click(object sender, EventArgs e)
        {
            
            DialogResult RtaMSG = new DialogResult();

            try
            {
                Asignar();
                RtaMSG = MessageBox.Show("Desea eliminar el idioma seleccionado ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoIdioma.Baja(BEoIdioma);
                    MessageBox.Show("El Idioma se dio de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                }
                Limpiar();
                CargarGrillaIdioma();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonLimpiarIdioma_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void dataGridViewIdiomas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEoIdioma = (BEIdioma)dataGridViewIdiomas.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEoIdioma.Id.ToString();
                textBoxNombre.Text = BEoIdioma.Nombre.ToString();
                checkBoxDefault.Checked = BEoIdioma.Default; //ver
                dataGridViewIdiomas.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
    }

}
