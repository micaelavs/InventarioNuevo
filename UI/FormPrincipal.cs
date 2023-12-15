using BE;
using BLL;
using ClassServicios;
using ClassServicios.Exceptions;
using MPP;
using Servicios;
using System;
using System.Threading;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class FormPrincipal : Form, IIdiomaObserver
    {
        private BLLUsuario BLLoUsuario;

        public FormPrincipal()
        {
            BLLoUsuario = new BLLUsuario();
            InitializeComponent();
            ValidarForm();
            MostrarIdiomas();
            MarcarIdioma();
            Traducir();
        }

        internal static void UIThreadException(object sender, ThreadExceptionEventArgs e)
        {
            DialogResult result = DialogResult.Cancel;
            try
            {
                result = ShowThreadExceptionDialog("Alerta", e.Exception);
            }
            catch
            {
                try
                {
                    MessageBox.Show("FALTA ERROR",
                        "FALTA ERROR", MessageBoxButtons.AbortRetryIgnore, MessageBoxIcon.Stop);
                }
                finally
                {
                    Application.Exit();
                }
            }

            if (result == DialogResult.Abort)
                Application.Exit();
        }

       
        private static DialogResult ShowThreadExceptionDialog(string title, Exception e)
        {
            if (e.GetType() == typeof(ExcepcionNegocio))
            {
                var errorMsg = e.Message;
                return MessageBox.Show(errorMsg, title, MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                var errorMsg = e.Message + "\n\nStack Trace:\n" + e.StackTrace;
                return MessageBox.Show(errorMsg, title, MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private void logoutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            try
            {
                if (MessageBox.Show("¿Está seguro que desea cerrar la sesión?", "Confirme", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    BLLoUsuario.Logout();
                    ValidarForm();
                }
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
            
        }

        /*************************multiidiomaaa ***********/

        public void UpdateLanguage(BEIdioma idioma)
        {
            MarcarIdioma();
            Traducir();
        }

        private void MarcarIdioma()
        {
            if (!SingletonSesion.Instancia.IsLogged()) //si no hay sesion
            {
                foreach (var item in mnuIdiomas.DropDownItems)
                {
                    var i = ((BEIdioma)((ToolStripMenuItem)item).Tag); //recorre cada elemneto del menu

                    ((ToolStripMenuItem)item).Checked = i.Default; //si hay sesion iniciada, le pone chequeado al idioma por default de la sesion de ese usuario
                    ((ToolStripMenuItem)item).Enabled = false; //deshabilita
                }
            }
            else//si hay sesion iniciada
            {
                foreach (var item in mnuIdiomas.DropDownItems)
                {
                    ((ToolStripMenuItem)item).Enabled = true; //habilita
                    ((ToolStripMenuItem)item).Checked = SingletonSesion.Instancia.Usuario.Idioma.Id.Equals(((BEIdioma)((ToolStripMenuItem)item).Tag).Id);
                }
            }
        }

        private void MostrarIdiomas()
        {
            
            var idiomas = BLLTraductor.ObtenerIdiomas();
            foreach (var item in idiomas)
            {
                var t = new ToolStripMenuItem();
                t.Text = item.Nombre;
                t.Tag = item;
                this.mnuIdiomas.DropDownItems.Add(t);

                t.Click += idioma_Click;
            }
        }

        private void idioma_Click(object sender, EventArgs e)
        {
            Sesion.CambiarIdioma(((BEIdioma)((ToolStripMenuItem)sender).Tag));
            MarcarIdioma();
        }

        /*************************************************/

        public void ValidarPermisos()
        {
            if (SingletonSesion.Instancia.IsLogged())
            {
                if (DigitoVerificador.BanderaDigito)
                {

               
                    //se puede usar visible o enabled
                    this.configuraciónPerfilesToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.ConfiguracionPerfiles);//si esta entre los permisos, lo hago visible
                    this.ingresoEgresoMasivoToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.AdminIngreso_EgresoMasivo);
                    this.AdminServiciosToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.AdminDeServicios);
                    this.remitosToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.Remitos);
                    this.administraciónExpToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.GestionExpedientes);
                    this.gestiónPorDocumentoToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.Por_Documento);
                    this.bitácoraToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.Bitacora);
                }
                else
                {   //cuando sea false entra por aca y es que no verifica integridad, debo habilitar solo la pestaña de buckup que solo la tendrà el administrador
                    this.AdminServiciosToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.AdminDeServicios);
                    this.gestiónDeBuckupToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsInRole(TipoPermiso.BuckupYRestore);
                    this.bitácoraToolStripMenuItem1.Enabled = false;
                    this.GestorIdiomas.Enabled = false;
                    this.serializaciónToolStripMenuItem.Enabled = false;
                  
                }
            }
            else
            {
                this.configuraciónPerfilesToolStripMenuItem.Enabled = false;
                this.ingresoEgresoMasivoToolStripMenuItem.Enabled = false;
                this.AdminServiciosToolStripMenuItem.Enabled = false;
                this.administraciónExpToolStripMenuItem.Enabled = false;
                this.remitosToolStripMenuItem.Enabled = false;
                this.gestiónPorDocumentoToolStripMenuItem.Enabled = false;
                this.bitácoraToolStripMenuItem.Enabled = false;
            }


        }

        public void ValidarForm()
        {
            this.loginToolStripMenuItem.Enabled = !SingletonSesion.Instancia.IsLogged(); //si no esta logueado no puede ver nada solo el login
            this.logoutToolStripMenuItem.Enabled = SingletonSesion.Instancia.IsLogged();
            this.mnuIdiomas.Enabled = SingletonSesion.Instancia.IsLogged();

            ValidarPermisos(); //incialmente valida permisos para q no aparezcam los menues si el usuario no esta logeado
            MarcarIdioma(); //cuando valida las pestañas marca idioma en el menu de idiomas oara ese usuario
            Traducir();

            if (SingletonSesion.Instancia.IsLogged()) // no va a haber unstancia
            {
                this.labelSesion.Text = SingletonSesion.Instancia.Usuario.Email;
            }
            else
            {
                this.labelSesion.Text = "[Sesión no iniciada]";
            }
        }

        /***********************Para MultiIdioma **************/

        private void Traducir()
        {
            BEIdioma idioma = null;
            if (SingletonSesion.Instancia.IsLogged())
                idioma = SingletonSesion.Instancia.Usuario.Idioma; //si hay instancia del usuario.... se carga el idioma

            var traducciones = BLLTraductor.ObtenerTraducciones(idioma);

            this.Controls.TranslateAll(traducciones);
            this.Translate(traducciones);

            //esto es para probar a mano la traduccion
            /*if (mnuSesion.Tag != null && traducciones.ContainsKey(mnuSesion.Tag.ToString()))
                this.mnuSesion.Text = traducciones[mnuSesion.Tag.ToString()].Texto;

            if (mnuLogin.Tag != null && traducciones.ContainsKey(mnuLogin.Tag.ToString()))
                this.mnuLogin.Text = traducciones[mnuLogin.Tag.ToString()].Texto;

            if (mnuLogout.Tag != null && traducciones.ContainsKey(mnuLogout.Tag.ToString()))
                this.mnuLogout.Text = traducciones[mnuLogout.Tag.ToString()].Texto;

            if (mnuIdiomas.Tag != null && traducciones.ContainsKey(mnuIdiomas.Tag.ToString()))
                this.mnuIdiomas.Text = traducciones[mnuIdiomas.Tag.ToString()].Texto;

            if (!ManejadorDeSesion.IsLogged())
            {
                if (traducciones.ContainsKey("please"))
                    this.lblSession.Text = traducciones["please"].Texto;
            }
            else
            {
                if (traducciones.ContainsKey("username"))
                    this.lblSession.Text = $"{traducciones["username"].Texto}: {ManejadorDeSesion.Session.Username}";

                MarcarIdioma();
            }*/
        }

        /*********************************************************/

        private void loginToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Login frm = new Login();
            frm.MdiParent = this;
            frm.Show();
        }
        
        private void FormPrincipal_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
        }


        private void label1_Click(object sender, EventArgs e)
        {
        }

        private void patentesYFamiliasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            PatentesFamilias frm = new PatentesFamilias();
            frm.MdiParent = this;
            frm.Show();
        }

        private void usuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GestionUsuarios frm = new GestionUsuarios();
            frm.MdiParent = this;
            frm.Show();
        }

        private void registrarIngresoMasivoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Ingreso_Masivo frm = new Ingreso_Masivo();
            frm.MdiParent = this;
            frm.Show();
        }

        private void menuIdiomasToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void inglésToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void FormPrincipal_FormClosing(object sender, FormClosingEventArgs e)
        {
            Sesion.DesuscribirObservador(this);
        }

        private void etiquetasToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void idiomaToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void tToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void configuraciónToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void mnuEjemplo_Click(object sender, EventArgs e)
        {
        }

        private void gestorDeEtiquetasToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Etiquetas frm = new Etiquetas();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestorDeIdiomasToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Idiomas frm = new Idiomas();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestorDeTraduccionesToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Traducciones frm = new Traducciones();
            frm.MdiParent = this;
            frm.Show();
        }

        private void registrarÀreaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Area frm = new Area();
            frm.MdiParent = this;
            frm.Show();
        }

        private void registrarAutorizanteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GestionAutorizantes frm = new GestionAutorizantes();
            frm.MdiParent = this;
            frm.Show();
        }

        private void registrarDependenciaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Dependencia frm = new Dependencia();
            frm.MdiParent = this;
            frm.Show();
        }

        private void remitosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Remitos frm = new Remitos();
            frm.MdiParent = this;
            frm.Show();
        }

        private void registrarEgresoMasivoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Egreso_Masivo frm = new Egreso_Masivo();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestionarAreasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Area frm = new Area();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestionarAutorizantesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            GestionAutorizantes frm = new GestionAutorizantes();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestionarDependenciasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Dependencia frm = new Dependencia();
            frm.MdiParent = this;
            frm.Show();
        }

        private void administraciónExpToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void gestiónToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void listadoExpedientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Por_Documento frm = new Por_Documento();
            frm.MdiParent = this;
            frm.Show();
        }

        private void listadoDeExpedientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ListadoExpedientes frm = new ListadoExpedientes();
            frm.MdiParent = this;
            frm.Show();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {
        }

        private void verHistóricoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            AuditoriaExpediente frm = new AuditoriaExpediente();
            frm.MdiParent = this;
            frm.Show();
        }

       
        private void bitácoraToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            ListadoBitacora frm = new ListadoBitacora();
            frm.MdiParent = this;
            frm.Show();
        }

        private void crearUsuariosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Usuario frm = new Usuario();
            frm.MdiParent = this;
            frm.Show();
        }

        private void gestiónDeBuckupToolStripMenuItem_Click(object sender, EventArgs e)
        {
            BuckupRestore frm = new BuckupRestore();
            frm.MdiParent = this;
            frm.Show();
        }

        private void verHistóricoToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            AuditoriaAutorizante frm = new AuditoriaAutorizante();
            frm.MdiParent = this;
            frm.Show();
        }

        private void editarDocumentoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Editar_Documento frm = new Editar_Documento();
            frm.MdiParent = this;
            frm.Show();
        }

        private void serializaciónToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Serializacion frm = new Serializacion();
            frm.MdiParent = this;
            frm.Show();
        }

        private void reporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            ReporteExpediente frm = new ReporteExpediente();
            frm.MdiParent = this;
            frm.Show();
        }
    }
}