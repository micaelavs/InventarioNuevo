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
using BE;
using Servicios;

namespace UI
{
    public partial class AuditoriaAutorizante : Form
    {
        public AuditoriaAutorizante()
        {
            InitializeComponent();
           
        }
        public AuditoriaAutorizante(BEAutorizante bEoAutorizante)
        {
            InitializeComponent();
            this.bEoAutorizante = bEoAutorizante;
        }
        BEAutorizante BEoAutorizanteCombo = new BEAutorizante();
        BEAuditoriaAutorizante BEoAuditoria = new BEAuditoriaAutorizante();
        BLLAutorizante BLLoAutorizante = new BLLAutorizante();
        BLLAuditoriaAutorizante BLLoAuditoria = new BLLAuditoriaAutorizante();
        private BEAutorizante bEoAutorizante;

        private void AuditoriaAutorizante_Load(object sender, EventArgs e)
        {
            try
            {
                CargarComboAutorizantes();
                if (bEoAutorizante != null)
                {
                    comboBoxAutorizante.Text = bEoAutorizante.Nombre +' '+ bEoAutorizante.Apellido;
                    dataGridViewHistoricoAutoriz.DataSource = BLLoAuditoria.Recuperar(bEoAutorizante);
                   // daata.Columns[0].Visible = false;
                   

                }
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }
        private void CargarComboAutorizantes()
        {
            try
            {
                this.comboBoxAutorizante.DataSource = BLLoAutorizante.ListarAutorizantes();
                this.comboBoxAutorizante.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void comboBoxAutorizante_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void buttonBuscar_Click(object sender, EventArgs e)
        {
             try
            {
                    BEoAutorizanteCombo = (BEAutorizante)comboBoxAutorizante.SelectedItem;
                    if((BLLoAuditoria.Recuperar(BEoAutorizanteCombo).Any()))
                    {
                        dataGridViewHistoricoAutoriz.DataSource = BLLoAuditoria.Recuperar(BEoAutorizanteCombo);
                        //dataGridViewHistoricoAutoriz.Columns[0].Visible = false;
                        //dataGridViewHistoricoAutoriz.Columns[10].Visible = false;
                    }else
                    {
                        MessageBox.Show("El Autorizante seleccionado no se encuentra auditado!", "INFORMACIÓN", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                   
            }
            catch (Exception)
            {   
                new Exception("Error al buscar al buscar el autorizante");
               
            }
        }

        private void btn_limpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }
        private void Limpiar()
        {

            dataGridViewHistoricoAutoriz.DataSource = null;
            CargarComboAutorizantes();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            BEoAutorizanteCombo = (BEAutorizante)comboBoxAutorizante.SelectedItem;
            if (BEoAutorizanteCombo.Codigo==0)
            {
                MessageBox.Show("Debe hacer la seleccion del Autorizante en el combo", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
        
            if(BEoAuditoria.Codigo==0)
            {
                MessageBox.Show("Debe seleccionar un valor de la grilla", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                DialogResult RtaMSG = new DialogResult();
                RtaMSG = MessageBox.Show("¿Desea volver al estado seleccionado?", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    if (BEoAutorizanteCombo.Codigo == BEoAuditoria.Autorizante.Codigo)
                    {
                        BEoAutorizanteCombo.Codigo = BEoAuditoria.Autorizante.Codigo;
                        BEoAutorizanteCombo.Nombre = BEoAuditoria.Autorizante.Nombre;
                        BEoAutorizanteCombo.Apellido = BEoAuditoria.Autorizante.Apellido;
                        BEoAutorizanteCombo.Dni = BEoAuditoria.Autorizante.Dni;
                        BEoAutorizanteCombo.Dependencia = BEoAuditoria.Autorizante.Dependencia;
                        BLLoAutorizante.Modificacion(BEoAutorizanteCombo);
                        BLLoAutorizante.Auditar(BEoAutorizanteCombo, TipoAccion.Restauracion, SingletonSesion.Instancia.Usuario);

                    }
                    else
                    {
                        MessageBox.Show("La selección del combo, no coincide con el Autorizante de la grilla", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                    CargarGrillaAuditoria(BEoAutorizanteCombo);
                }
            }
            catch (Exception ex)
            {

                { MessageBox.Show(ex.Message); }
            }
            
        }
           
        private void CargarGrillaAuditoria(BEAutorizante oAutorizante)
        {
            dataGridViewHistoricoAutoriz.DataSource = BLLoAuditoria.Recuperar(BEoAutorizanteCombo);
        }

        private void dataGridViewHistoricoAutoriz_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            BEoAuditoria = (BEAuditoriaAutorizante)dataGridViewHistoricoAutoriz.CurrentRow.DataBoundItem;
            dataGridViewHistoricoAutoriz.ReadOnly = true;
        }
    }
}
