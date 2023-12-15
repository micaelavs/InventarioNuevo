using BE;
using BLL;
using ClassServicios;
using ClassServicios.Bitacora;
using MPP;
using Servicios;
using System;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class Login : Form, IIdiomaObserver
    {
        private BLLUsuario BLLoUsuario;
        private BEUsuario BEoUsuario;
        private BLLBitacora BLLoBitacora;
        public Login()
        {
            InitializeComponent();
            BLLoUsuario = new BLLUsuario();
            BEoUsuario = new BEUsuario();
            BLLoBitacora = new BLLBitacora();

            if (SingletonSesion.Instancia.IsLogged())
                Traducir(SingletonSesion.Instancia.Usuario.Idioma); //A TRAVES DE LA INSTANCIA DE LA SESSION YO PUEDO ACCEDER AL USUARIO Y A TRAVÈS DE EL A SU IDIOMA
            else
                Traducir();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
            //cuando carga el login aca deberia comprobar los digitos
            if (!DigitoVerificador.DVVerificarIntegridadBD())
            {
                //debo bloquear pestañas praa admin todas menos restore y para los demas usu bloquear todo
                MessageBox.Show("Hay inconsistencias en la base de datos, contacte al Administrador del Sistema para realizar una restauración", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Information);
                DigitoVerificador.BanderaDigito = false; //no verifica

            }
        }

        private void Traducir(BEIdioma idioma = null)
        {
            var traducciones = BLLTraductor.ObtenerTraducciones(idioma); 
            this.Controls.TranslateAll(traducciones);
            this.Translate(traducciones);
        }

        public void UpdateLanguage(BEIdioma idioma)
        {
            Traducir(idioma);
        }

        private bool Asignar()
        {
            try
            {

                if (textBoxUsuario.Text != "" && textBoxContrasenia.Text != "")
                {
                    BEoUsuario.Nombre_usuario = textBoxUsuario.Text;
                    BEoUsuario.Contrasenia = textBoxContrasenia.Text;
                    return true;
                }
                else
                {
                    BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Excepcion, "Login", "Debe completar usuario y contraseña");
                    MessageBox.Show("Debe completar usuario y contraseña");
                    return false;
                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(0,"Sin usuario", TipoLog.Excepcion, "Login", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                if (Asignar() == true)
                {
                    var res = BLLoUsuario.Login(this.BEoUsuario);
                    MessageBox.Show("Logueo de Usuario correcto!", "Información", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Login", "Logueo correcto");
                    FormPrincipal form = (FormPrincipal)this.MdiParent;
                    form.ValidarPermisos();
                    form.ValidarForm();

                    this.Close();
                }
            }
            catch (LoginException error) // acá capturo las excepciones que arrojé en el metodo login
            {
                switch (error.Result)
                {   
                    case LoginResult.InvalidUsername:
                        BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Excepcion, "Login", "Usuario incorrecto");
                        MessageBox.Show("Usuario incorrecto");
                        break;

                    case LoginResult.InvalidPassword:
                        BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Excepcion, "Login", "Password incorrecto");
                        MessageBox.Show("Password Incorrecto");
                        break;
                    case LoginResult.UserInactivo:
                        BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Excepcion, "Login", "Usuario Inactivo");
                        MessageBox.Show("Usuario inactivo");
                        break;
                    default:
                        break;
                }
            }
            catch(Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Login", "Ha ocurrido un error"+ ex.Message);
                MessageBox.Show(ex.Message);
            }
        }

        private void btnsalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            Sesion.DesuscribirObservador(this);
        }
    }
}