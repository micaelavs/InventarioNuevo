using BE;
using BLL;
using ClassServicios;
using ClassServicios.Bitacora;
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

namespace UI
{
    //EL DV verifica en todo momento, cuando carga el form, al hacer alta, baja y modificación, o cuando hago doble click en la grilla no deja operar si no verifica.
    public partial class Usuario : Form
    {
        public Usuario()
        {
            InitializeComponent();
        }
        BLLUsuario BLLoUsuario = new BLLUsuario();
        BEUsuario BEoUsuario = new BEUsuario();
        BLLIdioma BLLoIdioma = new BLLIdioma();
        BEIdioma BEoIdioma = new BEIdioma();
        BLLBitacora BLLoBitacora = new BLLBitacora();
        bool Asignar()
        {
            try
            {
                if (textBoxCodigo.Text != "")
                {
                    BEoUsuario.Codigo = Convert.ToInt32(textBoxCodigo.Text);
                }
                else
                {
                    BEoUsuario.Codigo = 0;
                }
                if (textBoxNombre.Text != "" && textBoxApellido.Text !="" && textBoxDni.Text !="" && textBoxUsuario.Text !="" && textBoxContrasenia.Text != "" && textBoxEmail.Text != "")
                {
                    BEoUsuario.Nombre = (textBoxNombre.Text).ToString();
                    BEoUsuario.Apellido = (textBoxApellido.Text).ToString();
                    BEoUsuario.Dni = Convert.ToInt32(textBoxDni.Text);
                    BEoUsuario.Nombre_usuario = (textBoxUsuario.Text).ToString();
                    BEoUsuario.Contrasenia = Encriptador.Encriptar((textBoxContrasenia.Text).ToString());
                    BEoUsuario.Email = (textBoxEmail.Text).ToString();
                    BEoIdioma = (BEIdioma)comboBoxIdioma.SelectedItem;
                    BEoUsuario.Idioma = BEoIdioma;

                    return true;
                }
                else
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Usuario", "Debe completar todos los campos para crear el usuario");
                    MessageBox.Show("Debe completar todos los campos para crear el usuario!");
                    return false;
                }


            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Usuario", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }
        void Limpiar()
        {

            textBoxCodigo.Text = null;
            textBoxNombre.Text = null;
            textBoxApellido.Text = null;
            textBoxDni.Text = null;
            textBoxContrasenia.Text = null;
            textBoxUsuario.Text = null;
            textBoxEmail.Text = null;
            CargarComboIdiomas();


        }
        private void buttonNuevo_Click(object sender, EventArgs e)
        {
          
            try
            {
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica
                    //ParentForm.Close();
                    Application.Exit();
                    return;
                }

                BLLoUsuario.VerificarNombreUsu(textBoxUsuario.Text);   
                if (Asignar() == true)
                {
                    BLLoUsuario.Alta(BEoUsuario);
                    MessageBox.Show("El Usuario se dio de alta correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Usuario", "Alta usuario correcto");
                    Limpiar();
                    CargarGrillaUsuario();
                }
                

            }

            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Usuario", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }
        void CargarGrillaUsuario()
        {
            try
            {
                dataGridViewUsuarios.DataSource = BLLoUsuario.GetAll();
                dataGridViewUsuarios.Columns[5].Visible = false;
                dataGridViewUsuarios.ReadOnly = true;

            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        void CargarComboIdiomas()
        {

            try
            {
                this.comboBoxIdioma.DataSource = BLLoIdioma.ListarIdiomas();
                this.comboBoxIdioma.ValueMember = "Id";
                this.comboBoxIdioma.DisplayMember = "Nombre";
                this.comboBoxIdioma.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

        }
        private void CrearUsuario_Load(object sender, EventArgs e)
        {
           
            try
            {
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica 
                    //ParentForm.Close();
                    Application.Exit();
                    return;
                   
                }

                CargarGrillaUsuario();
                CargarComboIdiomas();

            }
          
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }

          
        }

        private void dataGridViewAreas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
           
            try
            {
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica
                    //ParentForm.Close();
                    //this.Close();
                    Application.Exit();
                }
                BEoUsuario = (BEUsuario)dataGridViewUsuarios.CurrentRow.DataBoundItem;
                textBoxCodigo.Text = BEoUsuario.Codigo.ToString();
                textBoxNombre.Text = BEoUsuario.Nombre.ToString();
                textBoxApellido.Text = BEoUsuario.Apellido.ToString();
                textBoxDni.Text = BEoUsuario.Dni.ToString();
                textBoxUsuario.Text = BEoUsuario.Nombre_usuario.ToString();
                textBoxContrasenia.Text = Encriptador.Desencriptar(BEoUsuario.Contrasenia.ToString());
                textBoxEmail.Text = BEoUsuario.Email.ToString();
                comboBoxIdioma.Text = BEoUsuario.Idioma.Nombre;

                dataGridViewUsuarios.ReadOnly = true;
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica
                    //ParentForm.Close();
                    Application.Exit();
                    return;
                }
                
                if (Asignar() == true)
                {
                    BLLoUsuario.Modificacion(BEoUsuario);
                    MessageBox.Show("El Usuario se modificó correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Usuario", "Usuario modificado corrrectamente");
                    Limpiar();
                    CargarGrillaUsuario();
                }
            }

            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Usuario", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonEliminar_Click(object sender, EventArgs e)
        {
           
            try
            {
                if (!DigitoVerificador.DVVerificarIntegridadBD())
                {
                    MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    //Si no verifica hay que bloquear las pestañas
                    DigitoVerificador.BanderaDigito = false; //no verifica
                    //ParentForm.Close();
                    //this.Close();
                    Application.Exit();
                    return;
                }

                DialogResult RtaMSG = new DialogResult();
                Asignar();
                RtaMSG = MessageBox.Show("Desea dar de Baja el usuario seleccionado ", "ALERTA", MessageBoxButtons.OKCancel);
                if (RtaMSG == DialogResult.OK)
                {
                    BLLoUsuario.Baja(BEoUsuario);
                    MessageBox.Show("El Usuario se dio de baja correctamente", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Usuario", "Usuario dado de baja correctamente");
                }
                Limpiar();
                CargarGrillaUsuario();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion,"Usuario" ,ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void Usuario_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "RegistrarUsuarios.htm");
        }
    }
}
