using BE;
using BLL;
using ClassServicios.Bitacora;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Servicios;
using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;
using UI.Helpers;

namespace UI
{
    public partial class Egreso_Masivo : Form
    {
        public Egreso_Masivo()
        {
            InitializeComponent();
        }
        BLLBitacora BLLoBitacora = new BLLBitacora();
        private BLLRemito BLLoRemito = new BLLRemito();
        private BERemitoEgreso BEoRemitoEgreso = new BERemitoEgreso();
        private BLLArea BLLoArea = new BLLArea();
        private BLLAutorizante BLLoAutorizante = new BLLAutorizante();
        private List<string> ListaTemportalExpedientes = new List<string>();
        private List<BEExpediente> ListaExpediente = new List<BEExpediente>();

        private BLLExpediente BLLoExpediente = new BLLExpediente();

        private void Egreso_Masivo_Load(object sender, EventArgs e)
        {
            try
            {
                CargarComboEstados();
                CargarComboIntermediarios();
                CargarComboAreas();
                CargarComboAutorizantes();
                DeshabilitarBotonPDF();
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso Masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        /*********************************IMPORTANTE**************************************************/
        /*
         *  CUANDO SE HACE UN EGRESO MASIVO 1) LOS EXPEDIENTES QUE SE LE DAN SALIDA DEBEN EXISTIR PREVIAMENTRE EN EL SISTEMA
         *  2) CUANDO SE HACE UN EGRESO, LOS EXPEDIENTES PASAN A TENER ESTADO DESARCHIVADO. pOR LO TANTO, HAY QUE ACTUALIZARLES SU ESTADO!!
         *  3) SI SE VUELVE A GENERAR UN  REMITO DE EGRESO CON EXP YA DESARCHIVADOS SE ACTUALIZA EN REMITO_EXPEDIENTES EL ID ASOCIADO AL EXPEDIENTE CON EL
         *  NUEVO REMITO CREADO! PARA QUE NO SE INSERTEN MAS EXP CON OTRO NUMERO DE REMITO EN REMITO_EXPEDIENTES
         /**/

        private void HabilitarBotonPDF()
        {
            buttonGenerarPDF.Enabled = true;
        }

        private void DeshabilitarBotonPDF()
        {
            buttonGenerarPDF.Enabled = false;
        }

        private void CargarComboIntermediarios()
        {
            try
            {
                this.comboBoxIntermediario.DataSource = BLLoRemito.ListarIntermediarios(); //muestra el nombre+ apellido sobreescribi metodo tostring
                this.comboBoxIntermediario.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboEstados()
        {
            try
            {
                this.comboBoxEstado.DataSource = BLLoRemito.ObtenerEstadosPermitidos(BEoRemitoEgreso);
                this.comboBoxEstado.ValueMember = "Codigo";
                this.comboBoxEstado.DisplayMember = "Estado";
                this.comboBoxEstado.DropDownStyle = ComboBoxStyle.DropDownList;
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
        }

        private void CargarComboAreas()
        {
            try
            {
                this.comboBoxArea.DataSource = BLLoArea.ListarAreas();
                this.comboBoxArea.ValueMember = "Codigo";
                this.comboBoxArea.DisplayMember = "Nombre";
                this.comboBoxArea.DropDownStyle = ComboBoxStyle.DropDownList;
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

        public void CargarListBox()
        {
            listBoxExpedientes.Items.Clear();
            foreach (var item in ListaTemportalExpedientes)
            {
                listBoxExpedientes.Items.Add(item).ToString();
            }
        }

        private void Ingreso_Masivo_Load(object sender, EventArgs e)
        {
            CargarComboEstados();
            CargarComboIntermediarios();
            CargarComboAreas();
            CargarComboAutorizantes();
        }

        private bool ValidarExpediente(string palabra, string Campo)
        {
            //hay que validar el patrón y que el expediente esté en el sistema
            return FormExtension.ValidPatternMessage(
                palabra,
                Campo,
                "^(NOTA|EXP|TRI|MEMO|ACTU)-(S01|S02):(\\d{7})\\/(19|20)[0-9][0-9]$", // 19 o 20 y lo q sigue dos digitos
                "Formato Documento incorrecto");
        }

        private void buttonAñadir_Click(object sender, EventArgs e)
        {
            var rpta = ValidarExpediente(textBoxExpediente.Text.Trim(), "Nro Expediente");
            var NroDocumento = textBoxExpediente.Text;
            var busquedaExpediente = BLLoExpediente.TraerExpediente(NroDocumento);

            if (busquedaExpediente.Codigo == 0)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "El Documento debe existir en el sistema");
                MessageBox.Show("El Documento debe existir en el sistema!");
                return;
            }

            if (rpta && busquedaExpediente.Codigo != 0)
            {
                BEExpediente oExpediente = new BEExpediente();
                oExpediente = busquedaExpediente;
                ListaExpediente.Add(oExpediente);

                ListaTemportalExpedientes.Add(textBoxExpediente.Text); //este es a modo visual para que se vea en el listbox
                CargarListBox();
                MessageBox.Show("Documento agregado correctamente");
            }
            else
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "Ingrese los formatos correctos para continuar");
                MessageBox.Show("Ingrese los datos correctos para continuar!");
            }
        }

        private bool Validar(string palabra, string Campo)
        {
            
            return FormExtension.ValidPatternMessage(
                palabra,
                Campo,
                "^(NO)-((19|20)\\d{2})-(\\d{8})-([A-Z]{3,6})-([A-Z]{3,6})#([A-Z]{3,6})$", // 19 o 20 y lo q sigue dos digitos
                "No corresponde al formato de Nota GDE");
        }

        private bool EsAsignable()
        {
            try
            {
                var esNotaGdeValido = Validar(textBoxNotaGde.Text.Trim(), "Nota Gde"); 

                var existeNota = BLLoRemito.BuscarNotaGde(textBoxNotaGde.Text);

                var NroDocumento = textBoxExpediente.Text;

                if (!BLLoExpediente.ExisteExpediente(NroDocumento))
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "El Documento no tiene formato válido o no existe en el sistema");
                    MessageBox.Show("El Documento no existe en el sistema!");
                    return false;
                }

                if (!ValidarExpediente(NroDocumento, "Documento"))
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "Ingrese los datos correctos para continuar");
                    MessageBox.Show("Ingrese los datos correctos para continuar!");
                }

                if (existeNota)
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "La nota GDE ingresada ya se encuentra en el sistema");
                    MessageBox.Show("La nota GDE ingresada ya se encuentra en el sistema!");
                    return false;
                }

                if (textBoxExpediente.Text == "")
                {
                    MessageBox.Show("EL Documento está vacío!");
                    return false;
                }

                if (listBoxExpedientes.Items.Count == 0)
                {
                    MessageBox.Show("Recuerde añadir a la lista los Documentos!");
                    return false;
                }

                if ((esNotaGdeValido == true && existeNota == false)) 
                {
                    BLLoRemito.InitRemito(BEoRemitoEgreso, textBoxCodigoRemito.Text);
                    BEoRemitoEgreso.Nota_gde = textBoxNotaGde.Text;
                    BEoRemitoEgreso.Autorizante = (BEAutorizante)comboBoxAutorizante.SelectedItem;
                    BEoRemitoEgreso.Intermediario = (BEIntermediario)comboBoxIntermediario.SelectedItem;
                    BEoRemitoEgreso.SetEstado((BERemitoEstado)comboBoxEstado.SelectedItem);
                    BEoRemitoEgreso.AreaSolicitante = (BEArea)comboBoxArea.SelectedItem;
                    BEoRemitoEgreso.Fecha = DateTime.Now;
                    BEoRemitoEgreso.Observaciones = textBoxObserv.Text;
                    BEoRemitoEgreso.ListaExpediente = ListaExpediente;

                    return true;
                }
                else
                {
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", "Debe ingresar los datos correctos para continuar");
                    MessageBox.Show("Debe ingresar los datos correctos para continuar!");
                    return false;
                }
            }
            catch (Exception ex)
            {
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Excepcion, "Egreso masivo", ex.Message.ToString());
                MessageBox.Show(ex.Message);
            }
            return false;
        }

        private void buttonGuardar_Click(object sender, EventArgs e)
        {
            try
            {
               
                if (EsAsignable() == true)
                {
                    BLLoRemito.AltaEgreso(BEoRemitoEgreso);
                    BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Egreso masivo", "Egreso masivo hecho correctamente");
                    foreach (var expediente in BEoRemitoEgreso.ListaExpediente)
                    {
                        //Modifico el estado a desarchivado y actualizo la fecha modificado con la fecha del sistema!
                        BLLoExpediente.Desarchivar(expediente);
                        BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Egreso masivo", "Expediente desarchivado correctamente");

                        var Exp = BLLoExpediente.TraerExpediente(expediente.Nro_expediente);

                        BLLoExpediente.Auditar(Exp, TipoAccion.Modificacion, SingletonSesion.Instancia.Usuario);
                        MessageBox.Show("Expediente: " + expediente.Nro_expediente + " modificado!");
                    }
                    MessageBox.Show("Egreso correcto!");
                    //Limpiar();
                    HabilitarBotonPDF();
                    CargarComboAreas();
                    CargarComboAutorizantes();
                    CargarComboEstados();
                    CargarComboIntermediarios();
                }
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
        }

        private void Limpiar()
        {
            textBoxExpediente.Text = null;
            listBoxExpedientes.Items.Clear();
            ListaTemportalExpedientes.Clear();
            ListaExpediente.Clear();
        }

        private void buttonLimpiar_Click(object sender, EventArgs e)
        {
            Limpiar();
        }

        private void buttonSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void buttonGenerarPDF_Click(object sender, EventArgs e)
        {
            try
            {
                DocumentGenerationHelper.GenerarPdfRemitoEgreso(BEoRemitoEgreso);
            }
            catch (Exception ex)
            {

                MessageBox.Show("Ha ocurrido un error al cargar el documento PDF");
            }
           /* try
            {
               
                //CREACION DEL PDF
                Document doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\Users\\micae\\OneDrive\\Escritorio\\RemitoEgreso.pdf", FileMode.Create));
                doc.Open();
                //SI QUIERO AÑADIR UNA IMAGEN
                System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                ItextImage.ScaleAbsolute(165f, 40f);
                ItextImage.Alignment = Element.ALIGN_LEFT;
                doc.Add(ItextImage);

                //fuente
                var oFont = FontFactory.GetFont(iTextSharp.text.Font.FontFamily.TIMES_ROMAN.ToString(), 10, iTextSharp.text.Font.BOLD, iTextSharp.text.BaseColor.BLACK);

                Paragraph paragraph1 = new Paragraph("ARCHIVO GENERAL", oFont);
                Paragraph paragraph2 = new Paragraph("Remito Interno - Egreso (Desarchivo)", oFont);
                Paragraph paragraph3 = new Paragraph("Nº " + BEoRemitoEgreso.Nro_remito, oFont);
                paragraph1.Alignment = Element.ALIGN_RIGHT;
                paragraph2.Alignment = Element.ALIGN_RIGHT;
                paragraph3.Alignment = Element.ALIGN_RIGHT;
                doc.Add(paragraph1);
                doc.Add(paragraph2);
                doc.Add(paragraph3);

                DateTime fechahoy = DateTime.Now;

                Paragraph ParFecha = new Paragraph("Fecha: " + fechahoy + "HS", oFont);
                Paragraph ParEstado = new Paragraph("Estado del remito: " + BEoRemitoEgreso.Estado.Estado, oFont);
                ParFecha.Alignment = Element.ALIGN_LEFT;
                ParEstado.Alignment = Element.ALIGN_LEFT;
                doc.Add(ParFecha);
                doc.Add(ParEstado);

                Paragraph Parrafo1 = new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo1);

                Paragraph Parrafo2 = new Paragraph("", oFont);

                foreach (var item in BEoRemitoEgreso.ListaExpediente)
                {
                    Parrafo2.Add("DocumentoNº: " + item + "\n");
                }
                Parrafo2.Alignment = Element.ALIGN_LEFT;
                doc.Add(Parrafo2);

                Paragraph Parrafo3 = new Paragraph("\n\n\n\nCorrespondiente a:\n Nota GDE Nº: " + BEoRemitoEgreso.Nota_gde + "\n Area Solicitante: " + BEoRemitoEgreso.AreaSolicitante.Nombre + "\n Director Autorizante: " + BEoRemitoEgreso.Autorizante.Nombre + " " + BEoRemitoEgreso.Autorizante.Apellido, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo3);

                Paragraph Parrafo4 = new Paragraph("\n\n\nSon entregadas por el Archivo General del Ministerio de Transporte de La Nación, a: \n Nombre y Apellido: " + BEoRemitoEgreso.Intermediario.Nombre + " " + BEoRemitoEgreso.Intermediario.Apellido + " \n DNI: " + BEoRemitoEgreso.Intermediario.Dni, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo4);

                Paragraph Parrafo5 = new Paragraph("\n\n\n Dichas actuaciones serán entregadas al área solicitante mediante la " +
                " Nota GDE Nº: " + BEoRemitoEgreso.Nota_gde, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo5);

                Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): " + BEoRemitoEgreso.Observaciones, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo6);

                Paragraph Parrafo7 = new Paragraph("\n \n \n \n \n \n  Firma" + " _________________________________________  Firma_____________________________________________  ", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo7);

               
                doc.Close();

                
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Egreso masivo", "Pdf creado correctamente!");
                MessageBox.Show("PDF creado correctamente!!");
                
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
            }*/
            
        }

        private void buttonSalir_Click_1(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Egreso_Masivo_HelpRequested(object sender, HelpEventArgs hlpevent)
        {
            Help.ShowHelp(this, "C:/work/uai/inventarioparaarchivos/Manual/Manual en Linea de Inventario Para Archivo.chm", "RegistrarEgresoMasivo.htm");
        }
    }
}