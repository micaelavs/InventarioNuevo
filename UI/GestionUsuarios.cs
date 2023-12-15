using BE;
using BLL;
using ClassServicios;
using ClassServicios.Bitacora;
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
    public partial class GestionUsuarios : Form, IIdiomaObserver
    {
        BLLUsuario repo;
        BLLPermiso permisosRepo;
        BEUsuario seleccion;
        BEUsuario tmp;
        BLLBitacora BLLoBitacora = new BLLBitacora();
        public GestionUsuarios()
        {
            InitializeComponent();

            repo = new BLLUsuario();
            permisosRepo = new BLLPermiso();
            this.cboUsuarios.DataSource = repo.GetAll(); //carga todos los usuarios
            this.cboFamilias.DataSource = permisosRepo.GetAllFamilias(); //carga todas las familias
            this.cboPatentes.DataSource = permisosRepo.GetAllPatentes(); //carga todas las Patentes

             if (SingletonSesion.Instancia.IsLogged())
                Traducir(SingletonSesion.Instancia.Usuario.Idioma); //A TRAVES DE LA INSTANCIA DE LA SESSION YO PUEDO ACCEDER AL USUARIO Y A TRAVÈS DE ÉL A SU IDIOMA
            else
                Traducir();
        }
        /**************************multiidioma ***********************************/
        private void Traducir(BEIdioma idioma = null)
        {
            var traducciones = BLLTraductor.ObtenerTraducciones(idioma); 

            this.Controls.TranslateAll(traducciones);
            this.Translate(traducciones);
           
            //probando traducir a mano control x control
            /*  if (this.Tag != null && traducciones.ContainsKey(this.Tag.ToString())) //THIS ES EL PROPIO FORM, THIS.TEXT ES EL TITULO
                  this.Text = traducciones[this.Tag.ToString()].Texto;

              if (label2.Tag != null && traducciones.ContainsKey(label2.Tag.ToString()))
                  label2.Text = traducciones[label2.Tag.ToString()].Texto;

              if (grpUsuarios.Tag != null && traducciones.ContainsKey(grpUsuarios.Tag.ToString()))
                  grpUsuarios.Text = traducciones[grpUsuarios.Tag.ToString()].Texto;

              if (cmdConfigurar.Tag != null && traducciones.ContainsKey(cmdConfigurar.Tag.ToString()))
                  cmdConfigurar.Text = traducciones[cmdConfigurar.Tag.ToString()].Texto;

              if (LabelAgregarPatentes.Tag != null && traducciones.ContainsKey(LabelAgregarPatentes.Tag.ToString()))
                  LabelAgregarPatentes.Text = traducciones[LabelAgregarPatentes.Tag.ToString()].Texto;

              if (button1.Tag != null && traducciones.ContainsKey(button1.Tag.ToString()))
                  button1.Text = traducciones[button1.Tag.ToString()].Texto;

              if (label3.Tag != null && traducciones.ContainsKey(label3.Tag.ToString()))
                  label3.Text = traducciones[label3.Tag.ToString()].Texto;

              if (button2.Tag != null && traducciones.ContainsKey(button2.Tag.ToString()))
                  button2.Text = traducciones[button2.Tag.ToString()].Texto;

              if (cmdGuardarFamilia.Tag != null && traducciones.ContainsKey(cmdGuardarFamilia.Tag.ToString()))
                  cmdGuardarFamilia.Text = traducciones[cmdGuardarFamilia.Tag.ToString()].Texto;*/

            //    this.mnuSesion.Text = traducciones[mnuSesion.Tag.ToString()].Texto;

        }


        public void UpdateLanguage(BEIdioma idioma) 
        {
            Traducir(idioma);
        }

        private void GestionUsuarios_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
        }

        /**********************************Permisos*********************************/
        void LlenarTreeView(TreeNode padre, BEComponente c)
        {
            TreeNode hijo = new TreeNode(c.Nombre);
            hijo.Tag = c;
            padre.Nodes.Add(hijo);

            foreach (var item in c.Hijos)
            {
                LlenarTreeView(hijo, item);
            }

        }
        void MostrarPermisos(BEUsuario u)
        {
            this.treeView1.Nodes.Clear();
            TreeNode root = new TreeNode(u.Nombre_usuario);

            foreach (var item in u.Permisos)
            {
                LlenarTreeView(root, item);
            }

            this.treeView1.Nodes.Add(root);
            this.treeView1.ExpandAll();
        }

        private void cmdConfigurar_Click(object sender, EventArgs e)
        {
            seleccion = (BEUsuario)this.cboUsuarios.SelectedItem;

            //hago una copia del objeto para no modificr el que esta en el combo.
            tmp = new BEUsuario();
            tmp.Codigo = seleccion.Codigo;
            tmp.Nombre_usuario = seleccion.Nombre_usuario;
            tmp.Contrasenia = seleccion.Contrasenia;
            tmp.Email = seleccion.Email;
            permisosRepo.FillUserComponents(tmp);

            MostrarPermisos(tmp);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (tmp != null)
            {
                var patente = (BEPatente)cboPatentes.SelectedItem;
                if (patente != null)
                {
                    var esta = false;

                    foreach (var item in tmp.Permisos)
                    {
                        if (permisosRepo.Existe(item, patente.Id))
                        {
                            esta = true;
                            break;
                        }
                    }
                    if (esta)
                        MessageBox.Show("El usuario ya tiene la patente indicada");
                    else
                    {
                        {
                            tmp.Permisos.Add(patente);
                            MostrarPermisos(tmp);
                        }
                    }
                }
            }
            else //tmp el usuario no esta cargado
                MessageBox.Show("Seleccione un usuario");
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (tmp != null)
            {
                var flia = (BEFamilia)cboFamilias.SelectedItem;
                if (flia != null)
                {
                    var esta = false;
                   
                    foreach (var item in tmp.Permisos)
                    {
                        if (permisosRepo.Existe(item, flia.Id))
                        {
                            esta = true;
                        }
                    }

                    if (esta)
                        MessageBox.Show("El usuario ya tiene la familia indicada");
                    else
                    {
                        {
                            permisosRepo.FillFamilyComponents(flia);

                            tmp.Permisos.Add(flia);
                            MostrarPermisos(tmp);
                        }
                    }
                }
            }
            else
                MessageBox.Show("Seleccione un usuario");
        }

        private void cmdGuardarFamilia_Click(object sender, EventArgs e)
        {
            try
            {
                repo.GuardarPermisos(tmp);
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Gestion de Usuarios", "Usuario y permiso guardado correctamente");
                MessageBox.Show("Usuario guardado correctamente");
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Gestion de Usuarios", "Error al guardar el usuario y permiso");
                MessageBox.Show("Error al guardar el usuario"+ ex.Message);
            }
        }
        /************************Multi********************/
        private void GestionUsuarios_FormClosing(object sender, FormClosingEventArgs e)
        {
            Sesion.DesuscribirObservador(this);
        }

        private void GestionUsuarios_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "GestionarUsuarios.htm");
        }
    }
}
