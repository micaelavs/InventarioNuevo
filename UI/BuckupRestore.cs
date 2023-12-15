using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ClassServicios;
using ClassServicios.Bitacora;
using Servicios;

namespace UI
{
    public partial class BuckupRestore : Form
    {
        public BuckupRestore()
        {
            InitializeComponent();
        }
        BLLBitacora BLLoBitacora = new BLLBitacora();
        private void BuckupRestore_Load(object sender, EventArgs e)
        {

        }

        private void buttonExaminarResp_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog Directorio = new FolderBrowserDialog();
            MessageBox.Show("Debe crear una carpeta buckup en C:\\", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
            if (Directorio.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                textBoxDestino.Text = Directorio.SelectedPath;
            }
        }

        private void buttonExaminarRest_Click(object sender, EventArgs e)
        {
            OpenFileDialog Directorio = new OpenFileDialog();

            if (Directorio.ShowDialog() == System.Windows.Forms.DialogResult.OK)
            {
                if (!Directorio.CheckFileExists)
                    return;
                textBoxUbicacion.Text = Directorio.FileName;
            }
        }

        private void buttonRespaldar_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(textBoxNombreResp.Text) && !string.IsNullOrWhiteSpace(textBoxDestino.Text))
                {
                   
                    var destino = textBoxDestino.Text.ToString().Substring(0, 9);
                    if (destino == "C:\\buckup")
                    {
                        Buckup.Respaldar(textBoxNombreResp.Text, textBoxDestino.Text);
                        BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Buckup", "Buckup realizado correctamente");
                        MessageBox.Show("Backup realizado correctamente");
                    }
                    else
                    {
                        MessageBox.Show("Debe crear o seleccionar en C:\\buckup como se indicó anteriormente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                    

                  
                    
                  
                }else
                {
                    MessageBox.Show("Debe completar todos los campos!");
                }
            }
            catch (Exception ex)
            {  
               
                MessageBox.Show(ex.Message);
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Buckup", ex.Message.ToString());
            }
        }

        private void buttonRestau_Click(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrWhiteSpace(textBoxNombreRest.Text) && !string.IsNullOrWhiteSpace(textBoxUbicacion.Text))
                {
                    Buckup.Restaurar(textBoxNombreRest.Text, textBoxUbicacion.Text);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Restauración", "Se restauró la base de datos correctamente");
                    MessageBox.Show("Se restauró la base de datos correctamente, por favor inicie nuevamente la aplicación");
                    //Para que no aparezca el login al sistema si no se restauró la BD
                    DialogResult = DialogResult.OK;
                    //Para salir del sistema en forma limpia posteriormente a la restauración
                    Application.Exit();
                   
                }
                else
                {   
                    MessageBox.Show("Debe completar todos los campos!");
                }
            }
            catch (Exception ex)
            {   
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Restauración", ex.Message.ToString());
                MessageBox.Show("Ocurrio un error al intentar restaurar la base de datos: "+ ex.Message.ToString());
            }
        }

        private void BuckupRestore_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "BuckupyRestore.htm");
        }

     
    }
}
