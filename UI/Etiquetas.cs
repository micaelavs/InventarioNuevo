using BE;
using BLL;
using ClassServicios;
using MPP;
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

namespace UI
{
    public partial class Etiquetas : Form, IIdiomaObserver
    {
        public Etiquetas()
        {
            InitializeComponent();

            if (SingletonSesion.Instancia.IsLogged())
                Traducir(SingletonSesion.Instancia.Usuario.Idioma); //A TRAVES DE LA INSTANCIA DE LA SESSION YO PUEDO ACCEDER AL USUARIO Y A TRAVÈS DE EL A SU IDIOMA
            else
                Traducir();

        }
        BLLEtiqueta BLLoEtiqueta = new BLLEtiqueta();
        BEEtiqueta BEEoEtiqueta = new BEEtiqueta();

        private void Etiquetas_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
            try
            {
                CargarGrillaEtiqueta();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        /**************************multiidioma ***********************************/
        private void Traducir(BEIdioma idioma = null)
        {
            var traducciones = BLLTraductor.ObtenerTraducciones(idioma); //metodo static
                                                                                           
            this.Controls.TranslateAll(traducciones);
            this.Translate(traducciones);

        }


        public void UpdateLanguage(BEIdioma idioma)
        {
            Traducir(idioma);
        }
        /*******************************************************************/
        private void buttonNuevo_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar() == true)
                {
                    BLLoEtiqueta.Alta(BEEoEtiqueta);
                    MessageBox.Show("La Etiqueta se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaEtiqueta();
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
               if (textBoxCodigo.Text != ""){
                BEEoEtiqueta.Id = Convert.ToInt32(textBoxCodigo.Text);
               }else{
                BEEoEtiqueta.Id = 0;
               }
                if (textBoxNombre.Text != "")
                {
                    BEEoEtiqueta.Nombre = (textBoxNombre.Text).ToString();
                    return true;
                }else{

                    MessageBox.Show("Ingrese Nombre de etiqueta");
                    return false;
                }
               

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            return false;
       }

        void CargarGrillaEtiqueta()
        {
            try
            {
                dataGridViewEtiquetas.DataSource = BLLoEtiqueta.ListarEtiquetas();
                dataGridViewEtiquetas.ReadOnly = true;
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
                    BLLoEtiqueta.Modificacion(BEEoEtiqueta);
                    MessageBox.Show("La Etiqueta ha sido modificada correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    Limpiar();
                    CargarGrillaEtiqueta();
                }
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
                RtaMSG = MessageBox.Show("Desea eliminar la etiqueta seleccionada ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoEtiqueta.Baja(BEEoEtiqueta); 
                    MessageBox.Show("La Etiqueta se dio de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information); 
                }
                Limpiar();
                CargarGrillaEtiqueta();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void dataGridViewEtiquetas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                BEEoEtiqueta = (BEEtiqueta) dataGridViewEtiquetas.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEEoEtiqueta.Id.ToString();
                textBoxNombre.Text = BEEoEtiqueta.Nombre.ToString();
                dataGridViewEtiquetas.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void Etiquetas_FormClosing(object sender, FormClosingEventArgs e)
        {
            Sesion.DesuscribirObservador(this);
        }
    }
}
