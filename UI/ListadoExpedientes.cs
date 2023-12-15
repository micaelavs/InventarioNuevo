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
    public partial class ListadoExpedientes : Form
    {
        public ListadoExpedientes()
        {
            InitializeComponent();
        }
        BLLExpediente BLLoExpediente = new BLLExpediente();
        BEExpediente BEoExpediente = new BEExpediente();
        private void ListadoExpdientes_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrilla();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        void CargarGrilla()
        {
            try
            {
                dataGridViewExpe.DataSource = BLLoExpediente.ListarExpedientesSinCuerpos();
                if (BLLoExpediente.ListarExpedientesSinCuerpos()!=null)
                {
                    dataGridViewExpe.Columns[6].Visible = false;
                }
                
                dataGridViewExpe.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

            try
            {
                var BEoExp = (BEExpediente)dataGridViewExpe.CurrentRow.DataBoundItem;
                var ListaCuerpos = BLLoExpediente.TraerCuerposExp(BEoExp);
                dataGridViewCuerpos.DataSource = ListaCuerpos;

                dataGridViewExpe.ReadOnly = true;
                dataGridViewCuerpos.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void buttonMostrarH_Click(object sender, EventArgs e)
        {
           BEoExpediente = (BEExpediente)dataGridViewExpe.CurrentRow.DataBoundItem;
           AuditoriaExpediente frm = new AuditoriaExpediente(BEoExpediente);
           frm.MdiParent = this.ParentForm;
           frm.Show();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void dataGridViewCuerpos_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void ListadoExpedientes_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "ListadodeExpedientes.htm");
        }
    }
}
