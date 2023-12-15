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
    public partial class Traducciones : Form
    {
        public Traducciones()
        {
            InitializeComponent();
        }
        BLLEtiqueta BLLoEtiqueta = new BLLEtiqueta();
        BLLIdioma BLLoIdioma = new BLLIdioma();
        BETraduccion BEoTraduccion = new BETraduccion();
        BLLTraductor BLLoTraductor = new BLLTraductor();
        BEEtiqueta BEEoEtiqueta = new BEEtiqueta();
        BEIdioma BEoIdioma = new BEIdioma();
        private void Traducciones_Load(object sender, EventArgs e)
        {
           
            try
            {
                CargarComboEtiquetas();
                CargarComboIdiomas();
                CargarGrillaTraducciones();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        bool Asignar()
        {
            try
            {
                BEoTraduccion.Etiqueta = (BEEtiqueta)comboBoxEtiquetas.SelectedItem;
                BEoTraduccion.Id = Convert.ToInt32(comboBoxIdiomas.SelectedValue); //cargo el idioma del id en el id de traduccion
            
                if (textBoxTraduccion.Text != "")
                {
                    BEoTraduccion.Texto = (textBoxTraduccion.Text).ToString();
                    return true;
                }
                else
                {

                    MessageBox.Show("Ingrese el texto de la traducción");
                    return false;
                }


            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            return false;
        }

        void CargarComboEtiquetas()
        {

            try
            {
                this.comboBoxEtiquetas.DataSource = BLLoEtiqueta.ListarEtiquetas();
                this.comboBoxEtiquetas.ValueMember = "Id";
                this.comboBoxEtiquetas.DisplayMember = "Nombre";
                this.comboBoxEtiquetas.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }

        void CargarComboIdiomas()
        {

            try
            {
                this.comboBoxIdiomas.DataSource = BLLoIdioma.ListarIdiomas();
                this.comboBoxIdiomas.ValueMember = "Id";
                this.comboBoxIdiomas.DisplayMember = "Nombre";
                this.comboBoxIdiomas.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        void Limpiar()
        {
            comboBoxEtiquetas.Enabled = true;
            comboBoxIdiomas.Enabled = true;
            CargarComboEtiquetas();
            CargarComboIdiomas();
            textBoxTraduccion.Text = null;

        }
        private void buttonNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                
                if (Asignar() == true)
                {
                    BLLoTraductor.Alta(BEoTraduccion);
                    MessageBox.Show("La Traducción se ha dado de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaTraducciones();
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
                    BLLoTraductor.Modificacion(BEoTraduccion);
                    MessageBox.Show("La Traducción se ha modificado correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaTraducciones();
                }
            }

            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        void CargarGrillaTraducciones()
        {
            try
            {
                dataGridViewTraducciones.DataSource = BLLoTraductor.ListarTraducciones();
                dataGridViewTraducciones.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void dataGridViewTraducciones_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEoTraduccion = (BETraduccion)dataGridViewTraducciones.CurrentRow.DataBoundItem;
                BEoIdioma = BLLoIdioma.BuscarIdiomaPorId(BEoTraduccion.Id);
                //ME inhabilita los combos xq solo puedo modificar la traduccion!!!
                BEEoEtiqueta = BEoTraduccion.Etiqueta;
                comboBoxEtiquetas.Text = "";
                comboBoxEtiquetas.Text = BEEoEtiqueta.Nombre; //cargo la nueva seleccion
                comboBoxIdiomas.Text = "";
                comboBoxIdiomas.Text = BEoIdioma.Nombre;
                comboBoxIdiomas.Enabled = false;
                comboBoxEtiquetas.Enabled = false;
              
                textBoxTraduccion.Text = BEoTraduccion.Texto.ToString();
                dataGridViewTraducciones.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void buttonBorrar_Click(object sender, EventArgs e)
        {
           
            DialogResult RtaMSG = new DialogResult();

            try
            {
                Asignar();
                RtaMSG = MessageBox.Show("Desea eliminar la traduccion seleccionada ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoTraductor.Baja(BEoTraduccion);
                    MessageBox.Show("La traducción se ha dado de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                }
                Limpiar();
                CargarGrillaTraducciones();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
    }
}
