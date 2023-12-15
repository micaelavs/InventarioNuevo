using ClassServicios;
using ClassServicios.Bitacora;
using System;
using System.Collections.Generic;
using System.Windows.Forms;

namespace UI
{
    public partial class ListadoBitacora : Form
    {
        private DateTime MaximaFechaHoy;
        BLLBitacora oBLLBitacora = new BLLBitacora();
        public ListadoBitacora()
        {
            InitializeComponent();
            InicializarFechas();
        }

        private void InicializarFechas()
        {
            MaximaFechaHoy = DateTime.Now.Date.AddDays(1).AddMilliseconds(-1);
            dtpFechaFin.Value = DateTime.Now.Date.AddDays(1).AddMilliseconds(-1);
            dtpFechaInicio.Value = DateTime.Now.Date.AddDays(-1);
        }

        private List<BEBitacora> ListadeLogs = new List<BEBitacora>();

        private void ListadoBitacora_Load(object sender, EventArgs e)
        {
            try
            {
                CargarGrillaBitacora();
                CargarLog();
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void CargarGrillaBitacora()
        {
            try
            {
                dataGridView1.DataSource = oBLLBitacora.ListarBitacora();
                dataGridView1.Columns[0].Visible = false;
                //dataGridView1.Columns[1].Visible = false;
                dataGridView1.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void CargarLog()
        {
            cbxTipoLog.DataSource = Enum.GetValues(typeof(TipoLog));
        }

        private void buttonBuscar_Click(object sender, EventArgs e)
        {
            DateTime fechaInicio = dtpFechaInicio.Value;
            DateTime fechaFin = dtpFechaFin.Value;
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

                ListadeLogs = oBLLBitacora.BitacoraVerLogs(cbxTipoLog.Text, fechaInicio, fechaFin);

                if (ListadeLogs != null && ListadeLogs.Count != 0)
                {
                    dataGridView1.DataSource = ListadeLogs;
                    dataGridView1.Columns[0].Visible = false;
                    //dataGridView1.Columns[1].Visible = false;
                }
                else
                {
                    MessageBox.Show("No hay datos para motrar con los filtros ingresados", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void btn_limpiar_Click(object sender, EventArgs e)
        {
            InicializarFechas();
            CargarGrillaBitacora();
            CargarLog();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void ListadoBitacora_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "ListadoBitacora.htm");
        }
    }
}