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
    public partial class AuditoriaExpediente : Form
    {
        public AuditoriaExpediente()
        {
            InitializeComponent();
        }
        public AuditoriaExpediente(BEExpediente bEoExpediente)
        {
            InitializeComponent();
            this.bEoExpediente = bEoExpediente;
        }

        BEExpediente BEEoExpediente = new BEExpediente();
        BLLAuditoriaExpediente BLLoAuditoriaExp = new BLLAuditoriaExpediente();
        private BEExpediente bEoExpediente;


        private void textNumDocumento_TextChanged(object sender, EventArgs e)
        {

        }

        private void buttonBuscar_Click(object sender, EventArgs e)
        {
            try
            {
                if (textNumDocumento.Text != "")
                {
                    BEEoExpediente.Nro_expediente = textNumDocumento.Text;
                    if((BLLoAuditoriaExp.Recuperar(BEEoExpediente).Any()))
                    {
                        dataGridViewHistoricoExp.DataSource = BLLoAuditoriaExp.Recuperar(BEEoExpediente);
                        dataGridViewHistoricoExp.Columns[0].Visible = false;
                        dataGridViewHistoricoExp.Columns[10].Visible = false;
                    }else
                    {
                        MessageBox.Show("El documento ingresado no se encuentra en el sistema!", "INFORMACIÓN", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                   
                    

                }else
                {
                    MessageBox.Show("Debe ingresar un documento para buscar!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }

            }
            catch (Exception)
            {

                MessageBox.Show("Error al buscar el Documento");
            }
        }

        private void AuditoriaExpediente_Load(object sender, EventArgs e)
        {
            if(bEoExpediente != null)
            {
                textNumDocumento.Text = bEoExpediente.Nro_expediente; //cuando vengo del boton ver historico del listado de exp queioero que se habra el historico, y cargue en el textbox el nroexp para buscar
                dataGridViewHistoricoExp.DataSource = BLLoAuditoriaExp.Recuperar(bEoExpediente);
                dataGridViewHistoricoExp.Columns[0].Visible = false;
                dataGridViewHistoricoExp.Columns[10].Visible = false;
               
            }
            
        }

        private void btn_limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void Limpiar()
        {

            dataGridViewHistoricoExp.DataSource = null;
            textNumDocumento.Text = "";     
        }
    }
}
