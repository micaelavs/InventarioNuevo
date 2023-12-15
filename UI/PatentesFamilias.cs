using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MPP;
using BE;
using BLL;
using ClassServicios;
using Servicios;
using UI.Helpers;

namespace UI
{
    public partial class PatentesFamilias : Form, IIdiomaObserver
    {
        BLLPermiso repo;
        BEFamilia seleccion;
        public PatentesFamilias()
        {
            InitializeComponent();
            repo = new BLLPermiso();
            //cargo los permisos "Atómicos"
            this.cboPermisos.DataSource = repo.GetAllPermission();

            if (SingletonSesion.Instancia.IsLogged())
                Traducir(SingletonSesion.Instancia.Usuario.Idioma); //A TRAVES DE LA INSTANCIA DE LA SESSION YO PUEDO ACCEDER AL USUARIO Y A TRAVÈS DE EL A SU IDIOMA
            else
                Traducir();
        }
        private void LlenarPatentesFamilias()
        {

            this.cboPatentes.DataSource = repo.GetAllPatentes();
            this.cboFamilias.DataSource = repo.GetAllFamilias();
        }
        private void PatentesFamilias_Load(object sender, EventArgs e)
        {
            Sesion.SuscribirObservador(this);
            LlenarPatentesFamilias();
            
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
        private void btnGuardarPatente_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtNombrePatente.Text == "")
                {
                    MessageBox.Show("El campo nombre está vacío!");
                    return;
                }

                BEPatente p = new BEPatente()
                {
                    Nombre = this.txtNombrePatente.Text,
                    Permiso = (TipoPermiso)this.cboPermisos.SelectedItem

                };
                repo.ExistePatente(p);

                repo.GuardarComponente(p, false); //false porque no es familia
                LlenarPatentesFamilias();

                MessageBox.Show("Patente guardada correctamente");
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
           
        }

        private void button1_Click(object sender, EventArgs e)//guarda familia
        {
           
            try
            {

                if (txtNombreFamilia.Text == "")
                {
                    MessageBox.Show("El campo nombre está vacío!");
                    return;
                }

                BEFamilia p = new BEFamilia()
                {
                    Nombre = this.txtNombreFamilia.Text

                };

                repo.ExisteFamilia(p);
                repo.GuardarComponente(p, true); //true porque es familia
                
                LlenarPatentesFamilias();
                MessageBox.Show("Familia guardada correctamente");
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }
           
        }

        void MostrarFamilia(bool init)
        {
            if (seleccion == null) return; //seleccion es de tipo BEFAMILIA


            IList<BEComponente> flia = null;
            if (init)
            {
                //traigo los hijos de la base
                flia = repo.GetAll("=" + seleccion.Id);

                foreach (var i in flia)
                    seleccion.AgregarHijo(i);
            }
            else
            {
                flia = seleccion.Hijos;
            }

            this.treeConfigurarFamilia.Nodes.Clear(); //el control del arbol q esta en el form

            TreeNode root = new TreeNode(seleccion.Nombre); //le pasas el nombre que va a ser el root
            root.Tag = seleccion;
            this.treeConfigurarFamilia.Nodes.Add(root);

            foreach (var item in flia) //por cada uno de los hijos los mostras como arbol
            {
                MostrarEnTreeView(root, item);
            }

            treeConfigurarFamilia.ExpandAll();
        }

        void MostrarEnTreeView(TreeNode tn, BEComponente c)
        {
            TreeNode n = new TreeNode(c.Nombre);
            tn.Tag = c;
            tn.Nodes.Add(n);
            if (c.Hijos != null)
                foreach (var item in c.Hijos)
                {
                    MostrarEnTreeView(n, item);
                }

        }

        private void cmdGuardarFamilia_Click(object sender, EventArgs e)
        {
            try
            {
                repo.GuardarFamilia(seleccion);
                MessageBox.Show("Familia guardada correctamente");
            }
            catch (Exception ex)
            {

                MessageBox.Show("Error al guardar la familia" + ex.Message);
            }
        }

        private void cmdAgregarPatente_Click(object sender, EventArgs e)
        {   //agregar patente a la familia
            if (seleccion != null)
            {
                var patente = (BEPatente)cboPatentes.SelectedItem;
                if (patente != null)
                {
                    var esta = repo.Existe(seleccion, patente.Id);
                    if (esta)
                        MessageBox.Show("ya exsite la patente indicada");
                    else
                    {

                        {
                            seleccion.AgregarHijo(patente);
                            MostrarFamilia(false);
                        }
                    }
                }
            }
        }

        private void cmdSeleccionar_Click(object sender, EventArgs e)
        {
            var tmp = (BEFamilia)this.cboFamilias.SelectedItem;
            seleccion = new BEFamilia();
            seleccion.Id = tmp.Id;
            seleccion.Nombre = tmp.Nombre;

            MostrarFamilia(true);
        }

        private void cmdAgregarFamilia_Click(object sender, EventArgs e)
        {
            if (seleccion != null)
            {
                var familia = (BEFamilia)cboFamilias.SelectedItem;

                if (familia != null)
                {

                    if (familia.Hijos.Where(x => x.Nombre == seleccion.Nombre).Any())
                    {
                        MessageBox.Show("Esta familia ya existe dentro del seleccionado");
                        return;
                    }

                    if (repo.Existe(seleccion, familia.Id))
                    {
                        MessageBox.Show("ya existe la familia indicada");
                        return;
                    }

                    repo.FillFamilyComponents(familia);
                    seleccion.AgregarHijo(familia);
                    MostrarFamilia(false);

                }
            }
        }

        private void PatentesFamilias_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "ConfiguraciondePatentesyFamilias.htm");
        }

        private void cboFamilias_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
