using BE;
using BLL;
using ClassServicios;
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
    public partial class Serializacion : Form
    {
        public Serializacion()
        {
            InitializeComponent();
        }
        //public List<Area> ListaArea = new List<Area>();
        BLLArea BLLoArea = new BLLArea();
        BLLAutorizante BLLoAutorizante = new BLLAutorizante();
        private void _cmdDeserializaPersona_Click(object sender, EventArgs e)
        {
            if (_optTodo.Checked)
            {
                BLLoArea.ListarAreas().XmlSerialize("Areas.xml");
                MessageBox.Show("Serializado correcto!");
            }
            else
            {   
                var seleccion = (BEArea)ListBoxArea.SelectedItem;
                seleccion.XmlSerialize("Area.xml");
                MessageBox.Show("Serializado correcto!");
            }
        }

        private void Serializacion_Load(object sender, EventArgs e)
        {
            ListBoxArea.DataSource = BLLoArea.ListarAreas();
            listBoxAuto.DataSource = BLLoAutorizante.ListarAutorizantes();
        }

        private void buttonDeserealizar_Click(object sender, EventArgs e)
        {
            List<BEArea> ListaLocal = new List<BEArea>();
            var Resultado = "Area.xml".XmlDeserialize<BEArea>();
            ListaLocal.Add(Resultado);
            ListBoxArea2.DataSource = ListaLocal;
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var Resultado = "Areas.xml".XmlDeserialize<List<BEArea>>();
            ListBoxArea2.DataSource = Resultado;
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            ListBoxArea2.DataSource = null;
        }

        private void buttonSerializarAuto_Click(object sender, EventArgs e)
        {
            if (radioTodoAuto.Checked)
            {
                BLLoAutorizante.ListarAutorizantes().XmlSerialize("Autorizantes.xml");
                MessageBox.Show("Serializado de Autorizantes correcto!");
            }
            else
            {
                var seleccion = (BEAutorizante)listBoxAuto.SelectedItem;
                seleccion.XmlSerialize("Autorizante.xml");
                MessageBox.Show("Serializado de Autorizante correcto!");
            }
        }

        private void buttonDeserealizarAutoTodo_Click(object sender, EventArgs e)
        {
            var Resultado = "Autorizantes.xml".XmlDeserialize<List<BEAutorizante>>();
            listBoxAuto2.DataSource = Resultado;
        }

        private void buttonDeserealizarAutoSelec_Click(object sender, EventArgs e)
        {
            List<BEAutorizante> ListaLocal = new List<BEAutorizante>();
            var Resultado = "Autorizante.xml".XmlDeserialize<BEAutorizante>();
            ListaLocal.Add(Resultado);
            listBoxAuto2.DataSource = ListaLocal;
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            listBoxAuto2.DataSource = null;
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Serializacion_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "Serializacion.htm");
        }
    }
}
