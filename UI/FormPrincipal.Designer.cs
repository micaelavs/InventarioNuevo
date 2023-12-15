namespace UI
{
    partial class FormPrincipal
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.inicioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.loginToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.logoutToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mnuIdiomas = new System.Windows.Forms.ToolStripMenuItem();
            this.configuraciónPerfilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.patentesYFamiliasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.crearUsuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.usuariosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ingresoEgresoMasivoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.registrarIngresoMasivoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.registrarEgresoMasivoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.AdminServiciosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.GestorIdiomas = new System.Windows.Forms.ToolStripMenuItem();
            this.gestorDeEtiquetasToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.gestorDeIdiomasToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.gestorDeTraduccionesToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.bitácoraToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.gestiónDeBuckupToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.serializaciónToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.remitosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.administraciónExpToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gestionarAreasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gestionarAutorizantesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verHistóricoToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.gestionarDependenciasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.gestiónPorDocumentoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listadoExpedientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.listadoDeExpedientesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.verHistóricoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editarDocumentoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bitácoraToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.labelSesion = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(24, 24);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.inicioToolStripMenuItem,
            this.configuraciónPerfilesToolStripMenuItem,
            this.ingresoEgresoMasivoToolStripMenuItem,
            this.AdminServiciosToolStripMenuItem,
            this.remitosToolStripMenuItem,
            this.administraciónExpToolStripMenuItem,
            this.gestiónPorDocumentoToolStripMenuItem,
            this.bitácoraToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Padding = new System.Windows.Forms.Padding(9, 3, 0, 3);
            this.menuStrip1.Size = new System.Drawing.Size(1924, 35);
            this.menuStrip1.TabIndex = 0;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // inicioToolStripMenuItem
            // 
            this.inicioToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loginToolStripMenuItem,
            this.logoutToolStripMenuItem,
            this.mnuIdiomas});
            this.inicioToolStripMenuItem.Name = "inicioToolStripMenuItem";
            this.inicioToolStripMenuItem.Size = new System.Drawing.Size(66, 29);
            this.inicioToolStripMenuItem.Tag = "Inicio";
            this.inicioToolStripMenuItem.Text = "Inicio";
            // 
            // loginToolStripMenuItem
            // 
            this.loginToolStripMenuItem.Name = "loginToolStripMenuItem";
            this.loginToolStripMenuItem.Size = new System.Drawing.Size(198, 30);
            this.loginToolStripMenuItem.Tag = "ingresar";
            this.loginToolStripMenuItem.Text = "Ingresar";
            this.loginToolStripMenuItem.Click += new System.EventHandler(this.loginToolStripMenuItem_Click);
            // 
            // logoutToolStripMenuItem
            // 
            this.logoutToolStripMenuItem.Name = "logoutToolStripMenuItem";
            this.logoutToolStripMenuItem.Size = new System.Drawing.Size(198, 30);
            this.logoutToolStripMenuItem.Tag = "CerrarSesion";
            this.logoutToolStripMenuItem.Text = "Cerrar sesión";
            this.logoutToolStripMenuItem.Click += new System.EventHandler(this.logoutToolStripMenuItem_Click);
            // 
            // mnuIdiomas
            // 
            this.mnuIdiomas.Name = "mnuIdiomas";
            this.mnuIdiomas.Size = new System.Drawing.Size(198, 30);
            this.mnuIdiomas.Tag = "Idiomas";
            this.mnuIdiomas.Text = "Idiomas";
            this.mnuIdiomas.Click += new System.EventHandler(this.menuIdiomasToolStripMenuItem_Click);
            // 
            // configuraciónPerfilesToolStripMenuItem
            // 
            this.configuraciónPerfilesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.patentesYFamiliasToolStripMenuItem,
            this.crearUsuariosToolStripMenuItem,
            this.usuariosToolStripMenuItem});
            this.configuraciónPerfilesToolStripMenuItem.Name = "configuraciónPerfilesToolStripMenuItem";
            this.configuraciónPerfilesToolStripMenuItem.Size = new System.Drawing.Size(282, 29);
            this.configuraciónPerfilesToolStripMenuItem.Tag = "ConfiguracionPerfiles";
            this.configuraciónPerfilesToolStripMenuItem.Text = "Configuración Usuarios y Perfiles";
            this.configuraciónPerfilesToolStripMenuItem.Click += new System.EventHandler(this.configuraciónToolStripMenuItem_Click);
            // 
            // patentesYFamiliasToolStripMenuItem
            // 
            this.patentesYFamiliasToolStripMenuItem.Name = "patentesYFamiliasToolStripMenuItem";
            this.patentesYFamiliasToolStripMenuItem.Size = new System.Drawing.Size(355, 30);
            this.patentesYFamiliasToolStripMenuItem.Tag = "GestionPatentesyFamilias";
            this.patentesYFamiliasToolStripMenuItem.Text = "Gestión de Patentes y Familias";
            this.patentesYFamiliasToolStripMenuItem.Click += new System.EventHandler(this.patentesYFamiliasToolStripMenuItem_Click);
            // 
            // crearUsuariosToolStripMenuItem
            // 
            this.crearUsuariosToolStripMenuItem.Name = "crearUsuariosToolStripMenuItem";
            this.crearUsuariosToolStripMenuItem.Size = new System.Drawing.Size(355, 30);
            this.crearUsuariosToolStripMenuItem.Tag = "RegUsuarios";
            this.crearUsuariosToolStripMenuItem.Text = "Registrar Usuarios";
            this.crearUsuariosToolStripMenuItem.Click += new System.EventHandler(this.crearUsuariosToolStripMenuItem_Click);
            // 
            // usuariosToolStripMenuItem
            // 
            this.usuariosToolStripMenuItem.Name = "usuariosToolStripMenuItem";
            this.usuariosToolStripMenuItem.Size = new System.Drawing.Size(355, 30);
            this.usuariosToolStripMenuItem.Tag = "GestionUsuarios";
            this.usuariosToolStripMenuItem.Text = "Gestión de Permisos de Usuarios";
            this.usuariosToolStripMenuItem.Click += new System.EventHandler(this.usuariosToolStripMenuItem_Click);
            // 
            // ingresoEgresoMasivoToolStripMenuItem
            // 
            this.ingresoEgresoMasivoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.registrarIngresoMasivoToolStripMenuItem,
            this.registrarEgresoMasivoToolStripMenuItem});
            this.ingresoEgresoMasivoToolStripMenuItem.Name = "ingresoEgresoMasivoToolStripMenuItem";
            this.ingresoEgresoMasivoToolStripMenuItem.Size = new System.Drawing.Size(361, 29);
            this.ingresoEgresoMasivoToolStripMenuItem.Tag = "AdminIngresoEgresoMasivo";
            this.ingresoEgresoMasivoToolStripMenuItem.Text = "Administración de Ingreso/ Egreso Masivo";
            // 
            // registrarIngresoMasivoToolStripMenuItem
            // 
            this.registrarIngresoMasivoToolStripMenuItem.Name = "registrarIngresoMasivoToolStripMenuItem";
            this.registrarIngresoMasivoToolStripMenuItem.Size = new System.Drawing.Size(292, 30);
            this.registrarIngresoMasivoToolStripMenuItem.Tag = "RegistrarIngresoMasivo";
            this.registrarIngresoMasivoToolStripMenuItem.Text = "Registrar Ingreso Masivo";
            this.registrarIngresoMasivoToolStripMenuItem.Click += new System.EventHandler(this.registrarIngresoMasivoToolStripMenuItem_Click);
            // 
            // registrarEgresoMasivoToolStripMenuItem
            // 
            this.registrarEgresoMasivoToolStripMenuItem.Name = "registrarEgresoMasivoToolStripMenuItem";
            this.registrarEgresoMasivoToolStripMenuItem.Size = new System.Drawing.Size(292, 30);
            this.registrarEgresoMasivoToolStripMenuItem.Tag = "RegEgresoMasivo";
            this.registrarEgresoMasivoToolStripMenuItem.Text = "Registrar Egreso Masivo";
            this.registrarEgresoMasivoToolStripMenuItem.Click += new System.EventHandler(this.registrarEgresoMasivoToolStripMenuItem_Click);
            // 
            // AdminServiciosToolStripMenuItem
            // 
            this.AdminServiciosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.GestorIdiomas,
            this.bitácoraToolStripMenuItem1,
            this.gestiónDeBuckupToolStripMenuItem,
            this.serializaciónToolStripMenuItem});
            this.AdminServiciosToolStripMenuItem.Name = "AdminServiciosToolStripMenuItem";
            this.AdminServiciosToolStripMenuItem.Size = new System.Drawing.Size(237, 29);
            this.AdminServiciosToolStripMenuItem.Tag = "AdminDeServicios";
            this.AdminServiciosToolStripMenuItem.Text = "Administrador de Servicios";
            this.AdminServiciosToolStripMenuItem.Click += new System.EventHandler(this.etiquetasToolStripMenuItem_Click);
            // 
            // GestorIdiomas
            // 
            this.GestorIdiomas.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gestorDeEtiquetasToolStripMenuItem1,
            this.gestorDeIdiomasToolStripMenuItem1,
            this.gestorDeTraduccionesToolStripMenuItem1});
            this.GestorIdiomas.Name = "GestorIdiomas";
            this.GestorIdiomas.Size = new System.Drawing.Size(363, 30);
            this.GestorIdiomas.Tag = "GestorIdiomas";
            this.GestorIdiomas.Text = "Gestor de Idiomas";
            // 
            // gestorDeEtiquetasToolStripMenuItem1
            // 
            this.gestorDeEtiquetasToolStripMenuItem1.Name = "gestorDeEtiquetasToolStripMenuItem1";
            this.gestorDeEtiquetasToolStripMenuItem1.Size = new System.Drawing.Size(279, 30);
            this.gestorDeEtiquetasToolStripMenuItem1.Tag = "GestorEtiquetas";
            this.gestorDeEtiquetasToolStripMenuItem1.Text = "Gestor de Etiquetas";
            this.gestorDeEtiquetasToolStripMenuItem1.Click += new System.EventHandler(this.gestorDeEtiquetasToolStripMenuItem1_Click);
            // 
            // gestorDeIdiomasToolStripMenuItem1
            // 
            this.gestorDeIdiomasToolStripMenuItem1.Name = "gestorDeIdiomasToolStripMenuItem1";
            this.gestorDeIdiomasToolStripMenuItem1.Size = new System.Drawing.Size(279, 30);
            this.gestorDeIdiomasToolStripMenuItem1.Tag = "GestorIdiomas";
            this.gestorDeIdiomasToolStripMenuItem1.Text = "Gestor de Idiomas";
            this.gestorDeIdiomasToolStripMenuItem1.Click += new System.EventHandler(this.gestorDeIdiomasToolStripMenuItem1_Click);
            // 
            // gestorDeTraduccionesToolStripMenuItem1
            // 
            this.gestorDeTraduccionesToolStripMenuItem1.Name = "gestorDeTraduccionesToolStripMenuItem1";
            this.gestorDeTraduccionesToolStripMenuItem1.Size = new System.Drawing.Size(279, 30);
            this.gestorDeTraduccionesToolStripMenuItem1.Tag = "GestorTraducciones";
            this.gestorDeTraduccionesToolStripMenuItem1.Text = "Gestor de Traducciones";
            this.gestorDeTraduccionesToolStripMenuItem1.Click += new System.EventHandler(this.gestorDeTraduccionesToolStripMenuItem1_Click);
            // 
            // bitácoraToolStripMenuItem1
            // 
            this.bitácoraToolStripMenuItem1.Name = "bitácoraToolStripMenuItem1";
            this.bitácoraToolStripMenuItem1.Size = new System.Drawing.Size(363, 30);
            this.bitácoraToolStripMenuItem1.Tag = "Bitacora";
            this.bitácoraToolStripMenuItem1.Text = "Bitácora";
            this.bitácoraToolStripMenuItem1.Click += new System.EventHandler(this.bitácoraToolStripMenuItem1_Click);
            // 
            // gestiónDeBuckupToolStripMenuItem
            // 
            this.gestiónDeBuckupToolStripMenuItem.Name = "gestiónDeBuckupToolStripMenuItem";
            this.gestiónDeBuckupToolStripMenuItem.Size = new System.Drawing.Size(363, 30);
            this.gestiónDeBuckupToolStripMenuItem.Tag = "GestionBuckupRestore";
            this.gestiónDeBuckupToolStripMenuItem.Text = "Gestión de Buckup y Restauración";
            this.gestiónDeBuckupToolStripMenuItem.Click += new System.EventHandler(this.gestiónDeBuckupToolStripMenuItem_Click);
            // 
            // serializaciónToolStripMenuItem
            // 
            this.serializaciónToolStripMenuItem.Name = "serializaciónToolStripMenuItem";
            this.serializaciónToolStripMenuItem.Size = new System.Drawing.Size(363, 30);
            this.serializaciónToolStripMenuItem.Tag = "Serializacion";
            this.serializaciónToolStripMenuItem.Text = "Serialización";
            this.serializaciónToolStripMenuItem.Click += new System.EventHandler(this.serializaciónToolStripMenuItem_Click);
            // 
            // remitosToolStripMenuItem
            // 
            this.remitosToolStripMenuItem.Name = "remitosToolStripMenuItem";
            this.remitosToolStripMenuItem.Size = new System.Drawing.Size(178, 29);
            this.remitosToolStripMenuItem.Tag = "GestionRemitos";
            this.remitosToolStripMenuItem.Text = "Gestion de Remitos";
            this.remitosToolStripMenuItem.Click += new System.EventHandler(this.remitosToolStripMenuItem_Click);
            // 
            // administraciónExpToolStripMenuItem
            // 
            this.administraciónExpToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.gestionarAreasToolStripMenuItem,
            this.gestionarAutorizantesToolStripMenuItem,
            this.gestionarDependenciasToolStripMenuItem});
            this.administraciónExpToolStripMenuItem.Name = "administraciónExpToolStripMenuItem";
            this.administraciónExpToolStripMenuItem.Size = new System.Drawing.Size(242, 29);
            this.administraciónExpToolStripMenuItem.Tag = "AdminExpedientes";
            this.administraciónExpToolStripMenuItem.Text = "Administración Expedientes";
            this.administraciónExpToolStripMenuItem.Click += new System.EventHandler(this.administraciónExpToolStripMenuItem_Click);
            // 
            // gestionarAreasToolStripMenuItem
            // 
            this.gestionarAreasToolStripMenuItem.Name = "gestionarAreasToolStripMenuItem";
            this.gestionarAreasToolStripMenuItem.Size = new System.Drawing.Size(287, 30);
            this.gestionarAreasToolStripMenuItem.Tag = "GestionAreas";
            this.gestionarAreasToolStripMenuItem.Text = "Gestionar Areas";
            this.gestionarAreasToolStripMenuItem.Click += new System.EventHandler(this.gestionarAreasToolStripMenuItem_Click);
            // 
            // gestionarAutorizantesToolStripMenuItem
            // 
            this.gestionarAutorizantesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.verHistóricoToolStripMenuItem1});
            this.gestionarAutorizantesToolStripMenuItem.Name = "gestionarAutorizantesToolStripMenuItem";
            this.gestionarAutorizantesToolStripMenuItem.Size = new System.Drawing.Size(287, 30);
            this.gestionarAutorizantesToolStripMenuItem.Tag = "GestionAutorizantes";
            this.gestionarAutorizantesToolStripMenuItem.Text = "Gestionar Autorizantes";
            this.gestionarAutorizantesToolStripMenuItem.Click += new System.EventHandler(this.gestionarAutorizantesToolStripMenuItem_Click);
            // 
            // verHistóricoToolStripMenuItem1
            // 
            this.verHistóricoToolStripMenuItem1.Name = "verHistóricoToolStripMenuItem1";
            this.verHistóricoToolStripMenuItem1.Size = new System.Drawing.Size(210, 30);
            this.verHistóricoToolStripMenuItem1.Tag = "HistoricoAuto";
            this.verHistóricoToolStripMenuItem1.Text = "Ver histórico";
            this.verHistóricoToolStripMenuItem1.Click += new System.EventHandler(this.verHistóricoToolStripMenuItem1_Click);
            // 
            // gestionarDependenciasToolStripMenuItem
            // 
            this.gestionarDependenciasToolStripMenuItem.Name = "gestionarDependenciasToolStripMenuItem";
            this.gestionarDependenciasToolStripMenuItem.Size = new System.Drawing.Size(287, 30);
            this.gestionarDependenciasToolStripMenuItem.Tag = "GestionDepen";
            this.gestionarDependenciasToolStripMenuItem.Text = "Gestionar Dependencias";
            this.gestionarDependenciasToolStripMenuItem.Click += new System.EventHandler(this.gestionarDependenciasToolStripMenuItem_Click);
            // 
            // gestiónPorDocumentoToolStripMenuItem
            // 
            this.gestiónPorDocumentoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.listadoExpedientesToolStripMenuItem,
            this.listadoDeExpedientesToolStripMenuItem,
            this.verHistóricoToolStripMenuItem,
            this.editarDocumentoToolStripMenuItem,
            this.reporteToolStripMenuItem});
            this.gestiónPorDocumentoToolStripMenuItem.Name = "gestiónPorDocumentoToolStripMenuItem";
            this.gestiónPorDocumentoToolStripMenuItem.Size = new System.Drawing.Size(214, 29);
            this.gestiónPorDocumentoToolStripMenuItem.Tag = "GestionPorDocumento";
            this.gestiónPorDocumentoToolStripMenuItem.Text = "Gestión Por Documento";
            this.gestiónPorDocumentoToolStripMenuItem.Click += new System.EventHandler(this.gestiónToolStripMenuItem_Click);
            // 
            // listadoExpedientesToolStripMenuItem
            // 
            this.listadoExpedientesToolStripMenuItem.Name = "listadoExpedientesToolStripMenuItem";
            this.listadoExpedientesToolStripMenuItem.Size = new System.Drawing.Size(277, 30);
            this.listadoExpedientesToolStripMenuItem.Tag = "PorDocumento";
            this.listadoExpedientesToolStripMenuItem.Text = "Por documento";
            this.listadoExpedientesToolStripMenuItem.Click += new System.EventHandler(this.listadoExpedientesToolStripMenuItem_Click);
            // 
            // listadoDeExpedientesToolStripMenuItem
            // 
            this.listadoDeExpedientesToolStripMenuItem.Name = "listadoDeExpedientesToolStripMenuItem";
            this.listadoDeExpedientesToolStripMenuItem.Size = new System.Drawing.Size(277, 30);
            this.listadoDeExpedientesToolStripMenuItem.Tag = "ListadoExpedientes";
            this.listadoDeExpedientesToolStripMenuItem.Text = "Listado de expedientes";
            this.listadoDeExpedientesToolStripMenuItem.Click += new System.EventHandler(this.listadoDeExpedientesToolStripMenuItem_Click);
            // 
            // verHistóricoToolStripMenuItem
            // 
            this.verHistóricoToolStripMenuItem.Name = "verHistóricoToolStripMenuItem";
            this.verHistóricoToolStripMenuItem.Size = new System.Drawing.Size(277, 30);
            this.verHistóricoToolStripMenuItem.Tag = "HistoricoExp";
            this.verHistóricoToolStripMenuItem.Text = "Ver histórico";
            this.verHistóricoToolStripMenuItem.Click += new System.EventHandler(this.verHistóricoToolStripMenuItem_Click);
            // 
            // editarDocumentoToolStripMenuItem
            // 
            this.editarDocumentoToolStripMenuItem.Name = "editarDocumentoToolStripMenuItem";
            this.editarDocumentoToolStripMenuItem.Size = new System.Drawing.Size(277, 30);
            this.editarDocumentoToolStripMenuItem.Tag = "EditarDocumento";
            this.editarDocumentoToolStripMenuItem.Text = "Editar documento";
            this.editarDocumentoToolStripMenuItem.Click += new System.EventHandler(this.editarDocumentoToolStripMenuItem_Click);
            // 
            // reporteToolStripMenuItem
            // 
            this.reporteToolStripMenuItem.Name = "reporteToolStripMenuItem";
            this.reporteToolStripMenuItem.Size = new System.Drawing.Size(277, 30);
            this.reporteToolStripMenuItem.Tag = "ReporteExp";
            this.reporteToolStripMenuItem.Text = "Reporte";
            this.reporteToolStripMenuItem.Click += new System.EventHandler(this.reporteToolStripMenuItem_Click);
            // 
            // bitácoraToolStripMenuItem
            // 
            this.bitácoraToolStripMenuItem.Name = "bitácoraToolStripMenuItem";
            this.bitácoraToolStripMenuItem.Size = new System.Drawing.Size(12, 29);
            // 
            // labelSesion
            // 
            this.labelSesion.AutoSize = true;
            this.labelSesion.Location = new System.Drawing.Point(1782, 14);
            this.labelSesion.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.labelSesion.Name = "labelSesion";
            this.labelSesion.Size = new System.Drawing.Size(53, 20);
            this.labelSesion.TabIndex = 2;
            this.labelSesion.Tag = "";
            this.labelSesion.Text = "status";
            // 
            // FormPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.ClientSize = new System.Drawing.Size(1924, 902);
            this.Controls.Add(this.labelSesion);
            this.Controls.Add(this.menuStrip1);
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip1;
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "FormPrincipal";
            this.Tag = "FomPrincipalMaster";
            this.Text = "Sistema de Inventario Para Archivo";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormPrincipal_FormClosing);
            this.Load += new System.EventHandler(this.FormPrincipal_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem inicioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem loginToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem logoutToolStripMenuItem;
        private System.Windows.Forms.Label labelSesion;
        private System.Windows.Forms.ToolStripMenuItem configuraciónPerfilesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem patentesYFamiliasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem usuariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ingresoEgresoMasivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem registrarIngresoMasivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mnuIdiomas;
        private System.Windows.Forms.ToolStripMenuItem AdminServiciosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem GestorIdiomas;
        private System.Windows.Forms.ToolStripMenuItem gestorDeEtiquetasToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem gestorDeIdiomasToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem gestorDeTraduccionesToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem remitosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem registrarEgresoMasivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem administraciónExpToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestionarAreasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestionarAutorizantesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestionarDependenciasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestiónPorDocumentoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem listadoExpedientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem listadoDeExpedientesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem verHistóricoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bitácoraToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bitácoraToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem crearUsuariosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem gestiónDeBuckupToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem verHistóricoToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem editarDocumentoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem serializaciónToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteToolStripMenuItem;
    }
}

