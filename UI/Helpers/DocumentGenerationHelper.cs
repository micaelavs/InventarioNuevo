using BE;
using ClassServicios.Bitacora;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Servicios;
using System;
using System.Collections.Generic;
using System.IO;
using System.Windows.Forms;


namespace UI.Helpers
{
    public class DocumentGenerationHelper
    {
        private static Font oFont;
        private static Font oFont2;
        private static Font oFont3;
        private static Document doc;
        static BLLBitacora BLLoBitacora = new BLLBitacora();
        public static void GenerarPdfRemitoIngreso(BE.BERemitoIngreso remitoIngreso)
        {
            try
            {
                DateTime fechahoy = DateTime.Now;
                oFont = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 10, Font.BOLD, BaseColor.BLACK);

                //CREACION DEL PDF
                doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoIngreso.pdf", FileMode.Create)); 
                // Inicializo Documento
                doc.Open();

                //SI QUIERO AÑADIR UNA IMAGEN
                System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                ItextImage.ScaleAbsolute(165f, 40f);
                ItextImage.Alignment = Element.ALIGN_LEFT;
                doc.Add(ItextImage);

                doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Remito Interno - Ingreso", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Nº" + remitoIngreso.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                Paragraph ParFecha = new Paragraph("Fecha: " + fechahoy + "HS", oFont) { Alignment = Element.ALIGN_LEFT };
                Paragraph ParEstado = new Paragraph("Estado del remito: " + remitoIngreso.Estado.Estado, oFont) { Alignment = Element.ALIGN_LEFT };
                doc.Add(ParFecha);
                doc.Add(ParEstado);

                doc.Add(new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont) { Alignment = Element.ALIGN_LEFT });

                Paragraph Parrafo2 = new Paragraph("", oFont);

                foreach (var item in remitoIngreso.NumerosComdoc)
                {
                    Parrafo2.Add("RTO COMDOC Nº: " + item + "\n");
                }
                Parrafo2.Alignment = Element.ALIGN_LEFT;
                doc.Add(Parrafo2);

                Paragraph Parrafo3 = new Paragraph("\n\n\n\nCorrespondiente a:\n Nota GDE Nº: "
                    + remitoIngreso.Nota_gde + "\n Area Solicitante: "
                    + remitoIngreso.AreaSolicitante.Nombre + "\n Director Autorizante: "
                    + remitoIngreso.Autorizante.Nombre + " "
                    + remitoIngreso.Autorizante.Apellido, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo3);

                Paragraph Parrafo4 = new Paragraph("\n\n\nSon recibidas por el Archivo General del Ministerio de Transporte de La Nación, entregadas por: \n Nombre y Apellido:"
                    + remitoIngreso.Intermediario.Nombre + " "
                    + remitoIngreso.Intermediario.Apellido + " \n DNI: "
                    + remitoIngreso.Intermediario.Dni, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo4);

                Paragraph Parrafo5 = new Paragraph("\n\n\nDichas actuaciones serán recepcionadas de manera provisoria con leyenda 'A revisar', hasta que el Archivo General compruebe" +
                  " su integridad. En caso de estar correctas, se aceptará el RTO en sistema COMDOC y se les dará ingreso. "
                  + "Caso contrario, se contestará la Nota GDE Nº: "
                  + remitoIngreso.Nota_gde + " explicando lo sucedido, serán rechazadas en el RTO del sistema COMDOC y no se les "
                  + "dará ingreso al Archivo General, quedando a la espera de ser retiradas por el Area Solicitante.", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo5);

                Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): " + remitoIngreso.Observaciones, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo6);

                Paragraph Parrafo7 = new Paragraph("\n \n \n \n \n \n  Firma" + " _____________________________________  Firma_____________________________________________  ", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo7);

                // Cierro documento
                doc.Close();
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Ingreso Masivo", "Pdf generado corrtamente");
                MessageBox.Show("PDF creado correctamente!!");
            }
            catch (Exception ex)
            {
               // MessageBox.Show("Ah ocurrido un error al generar el documento, por favor contacte al administrador");
                throw ex;
            }
        }

        public static void GenerarPdfRemitoEgreso(BE.BERemitoEgreso remitoEgreso)
        {
            try
            {
                //CREACION DEL PDF
                Document doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoEgreso.pdf", FileMode.Create));
                doc.Open();
                //SI QUIERO AÑADIR UNA IMAGEN
                System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                ItextImage.ScaleAbsolute(165f, 40f);
                ItextImage.Alignment = Element.ALIGN_LEFT;
                doc.Add(ItextImage);

                //fuente
                Font oFont = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 10, Font.BOLD, BaseColor.BLACK);

                doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Remito Interno - Egreso (Desarchivo)", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Nº " + remitoEgreso.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                Paragraph ParFecha = new Paragraph("Fecha: " + DateTime.Now + "HS", oFont) { Alignment = Element.ALIGN_LEFT };
                Paragraph ParEstado = new Paragraph("Estado del remito: " + remitoEgreso.Estado.Estado, oFont) { Alignment = Element.ALIGN_LEFT };
                doc.Add(ParFecha);
                doc.Add(ParEstado);

                Paragraph Parrafo1 = new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont) { Alignment = Element.ALIGN_LEFT };
                doc.Add(Parrafo1);

                Paragraph Parrafo2 = new Paragraph("", oFont);

                foreach (var item in remitoEgreso.ListaExpediente)
                {
                    Parrafo2.Add("DocumentoNº: " + item + "\n");
                }
                Parrafo2.Alignment = Element.ALIGN_LEFT;
                doc.Add(Parrafo2);

                Paragraph Parrafo3 = new Paragraph("\n\n\n\nCorrespondiente a:\n Nota GDE Nº: "
                    + remitoEgreso.Nota_gde + "\n Area Solicitante: "
                    + remitoEgreso.AreaSolicitante.Nombre + "\n Director Autorizante: "
                    + remitoEgreso.Autorizante.Nombre + " "
                    + remitoEgreso.Autorizante.Apellido, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo3);

                Paragraph Parrafo4 = new Paragraph("\n\n\nSon entregadas por el Archivo General del Ministerio de Transporte de La Nación, a: \n Nombre y Apellido: "
                    + remitoEgreso.Intermediario.Nombre + " "
                    + remitoEgreso.Intermediario.Apellido + " \n DNI: "
                    + remitoEgreso.Intermediario.Dni, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo4);

                Paragraph Parrafo5 = new Paragraph("\n\n\n Dichas actuaciones serán entregadas al área solicitante mediante la " +
                " Nota GDE Nº: " + remitoEgreso.Nota_gde, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                };
                doc.Add(Parrafo5);

                Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): "
                    + remitoEgreso.Observaciones, oFont)
                { Alignment = Element.ALIGN_LEFT };
                doc.Add(Parrafo6);

                Paragraph Parrafo7 = new Paragraph("\n \n \n \n \n \n  Firma"
                    + " _________________________________________  Firma_____________________________________________  ", oFont)
                { Alignment = Element.ALIGN_LEFT };
                doc.Add(Parrafo7);

                doc.Close();
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Egreso masivo", "Pdf generado corrtamente");
                MessageBox.Show("PDF creado correctamente!!");
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Ah ocurrido un error al generar el documento, por favor contacte al administrador");
                throw ex;
            }
        }

        public static void GenerarPdfPorRemitoTipo(BERemito remito)
        {
            try
            {
                Document doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                oFont = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 10, Font.BOLD, BaseColor.BLACK);

                //Dependiendo del tipo de remito que seatengo q generar el remito
                if (remito.GetType() == typeof(BERemitoIngreso))
                {
                    PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoIngreso.pdf", FileMode.Create));
                    doc.Open();
                    System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                    Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                    ItextImage.ScaleAbsolute(165f, 40f);
                    ItextImage.Alignment = Element.ALIGN_LEFT;
                    doc.Add(ItextImage);

                    doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Remito Interno - Ingreso", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Nº" + remito.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                    Paragraph ParFecha = new Paragraph("Fecha: " + remito.Fecha + "HS", oFont) { Alignment = Element.ALIGN_LEFT };
                    Paragraph ParEstado = new Paragraph("Estado del remito: " + remito.Estado.Estado, oFont) { Alignment = Element.ALIGN_LEFT };
                    doc.Add(ParFecha);
                    doc.Add(ParEstado);

                    doc.Add(new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont) { Alignment = Element.ALIGN_LEFT });

                    Paragraph Parrafo2 = new Paragraph("", oFont);

                    foreach (var item in ((BERemitoIngreso)remito).NumerosComdoc)
                    {
                        Parrafo2.Add("RTO COMDOC Nº: " + item + "\n");
                    }
                    Parrafo2.Alignment = Element.ALIGN_LEFT;
                    doc.Add(Parrafo2);

                    Paragraph Parrafo3 = new Paragraph("\n\n\n\nCorrespondiente a:\n Nota GDE Nº: " + remito.Nota_gde + "\n Area Solicitante: " + remito.AreaSolicitante.Nombre + "\n Director Autorizante: " + remito.Autorizante.Nombre + " " + remito.Autorizante.Apellido, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo3);

                    Paragraph Parrafo4 = new Paragraph("\n\n\nSon recibidas por el Archivo General del Ministerio de Transporte de La Nación, entregadas por: \n Nombre y Apellido:" + remito.Intermediario.Nombre + " " + remito.Intermediario.Apellido + " \n DNI: " + remito.Intermediario.Dni, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo4);

                    Paragraph Parrafo5 = new Paragraph("\n\n\nDichas actuaciones serán recepcionadas de manera provisoria con leyenda 'A revisar', hasta que el Archivo General compruebe" +
                      " su integridad. En caso de estar correctas, se aceptará el RTO en sistema COMDOC y se les dará ingreso. Caso contrario, se contestará la " +
                      "Nota GDE Nº: " + remito.Nota_gde + " explicando lo sucedido, serán rechazadas en el RTO del sistema COMDOC y no se les dará ingreso al Archivo General, quedando a la espera de ser retiradas por el Area Solicitante.", oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo5);

                    Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): " + remito.Observaciones, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo6);

                    Paragraph Parrafo7 = new Paragraph("\n \n \n \n \n \n  Firma" + " _____________________________________  Firma_____________________________________________  ", oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo7);
                    doc.Close();

                }
                else if (remito.GetType() == typeof(BERemitoEgreso))
                {
                    PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoEgreso.pdf", FileMode.Create));

                    doc.Open();
                    System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                    Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                    ItextImage.ScaleAbsolute(165f, 40f);
                    ItextImage.Alignment = Element.ALIGN_LEFT;
                    doc.Add(ItextImage);

                    doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Remito Interno - Egreso (Desarchivo)", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Nº " + remito.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                    Paragraph ParFecha = new Paragraph("Fecha: " + remito.Fecha + "HS", oFont) { Alignment = Element.ALIGN_LEFT };
                    Paragraph ParEstado = new Paragraph("Estado del remito: " + remito.Estado.Estado, oFont) { Alignment = Element.ALIGN_LEFT };
                    doc.Add(ParFecha);
                    doc.Add(ParEstado);

                    doc.Add(new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont) { Alignment = Element.ALIGN_LEFT });

                    Paragraph Parrafo2 = new Paragraph("", oFont);
                    if (((BERemitoEgreso)remito).ListaExpediente != null)
                    {
                        foreach (var item in ((BERemitoEgreso)remito).ListaExpediente)
                        {
                            Parrafo2.Add("DocumentoNº: " + item + "\n");
                        }
                    }

                    Parrafo2.Alignment = Element.ALIGN_LEFT;
                    doc.Add(Parrafo2);

                    Paragraph Parrafo3 = new Paragraph("\n\n\n\nCorrespondiente a:\n Nota GDE Nº: " + remito.Nota_gde + "\n Area Solicitante: " + remito.AreaSolicitante.Nombre + "\n Director Autorizante: " + remito.Autorizante.Nombre + " " + remito.Autorizante.Apellido, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo3);

                    Paragraph Parrafo4 = new Paragraph("\n\n\nSon entregadas por el Archivo General del Ministerio de Transporte de La Nación, a: \n Nombre y Apellido: " + remito.Intermediario.Nombre + " " + remito.Intermediario.Apellido + " \n DNI: " + remito.Intermediario.Dni, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo4);

                    Paragraph Parrafo5 = new Paragraph("\n\n\n Dichas actuaciones serán entregadas al área solicitante mediante la " +
                    " Nota GDE Nº: " + remito.Nota_gde, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo5);

                    Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): " + remito.Observaciones, oFont)
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

                }
                else if (remito.GetType() == typeof(BERemitoDevolucion))
                {
                    PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoDevolucion.pdf", FileMode.Create));

                    doc.Open();
                    System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                    Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                    ItextImage.ScaleAbsolute(165f, 40f);
                    ItextImage.Alignment = Element.ALIGN_LEFT;
                    doc.Add(ItextImage);

                    doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Remito Interno - Devolución", oFont) { Alignment = Element.ALIGN_RIGHT });
                    doc.Add(new Paragraph("Nº" + remito.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                    Paragraph ParFecha = new Paragraph("Fecha: " + remito.Fecha + "HS", oFont) { Alignment = Element.ALIGN_LEFT };
                    Paragraph ParEstado = new Paragraph("Estado del remito: " + remito.Estado.Estado, oFont) { Alignment = Element.ALIGN_LEFT };
                    doc.Add(ParFecha);
                    doc.Add(ParEstado);

                    Paragraph Parrafo1 = new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo1);

                    Paragraph Parrafo2 = new Paragraph("Documento: " + ((BERemitoDevolucion)remito).Expediente.Nro_expediente, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo2);

                    Paragraph Parrafo3 = new Paragraph("\n\n\n\nSolicitadas mediante: \n Nota GDE Nº: " + remito.Nota_gde + "\n Area Solicitante: " + remito.AreaSolicitante.Nombre + "\n Director Autorizante: " + remito.Autorizante.Nombre + " " + remito.Autorizante.Apellido, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo3);

                    Paragraph Parrafo4 = new Paragraph("\n\n\nSon ENTREGADAS por el Archivo General del Ministerio de Transporte de La Nación, a: \n Nombre y Apellido:" + remito.Intermediario.Nombre + " " + remito.Intermediario.Apellido + " \n DNI: " + remito.Intermediario.Dni, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo4);

                    Paragraph Parrafo6 = new Paragraph("\n \n Observaciones (Espacio para observaciones, si las hubiese): " + remito.Observaciones, oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo6);

                    Paragraph Parrafo7 = new Paragraph("\n \n \n \n \n \n  Firma" + " _____________________________________  Firma_____________________________________________  ", oFont)
                    {
                        Alignment = Element.ALIGN_LEFT
                    };
                    doc.Add(Parrafo7);
                    doc.Close();
                }
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Remitos", "Pdf generado corrtamente");
                MessageBox.Show("PDF creado correctamente!!");
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public static void GenerarPdfPorDocumento(BERemitoDevolucion remitoDevolucion, BEExpediente expediente)
        {
            try
            {
                Document doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                PdfWriter wri = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\RemitoDevolucion.pdf", FileMode.Create));
                doc.Open();
                //SI QUIERO AÑADIR UNA IMAGEN
                System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                ItextImage.ScaleAbsolute(165f, 40f);
                ItextImage.Alignment = Element.ALIGN_LEFT;
                doc.Add(ItextImage);

                //fuente
                oFont = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 10, Font.BOLD, BaseColor.BLACK);

                doc.Add(new Paragraph("ARCHIVO GENERAL", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Remito Interno - Devolución", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Nº" + remitoDevolucion.Nro_remito, oFont) { Alignment = Element.ALIGN_RIGHT });

                DateTime fechahoy = DateTime.Now;
                Paragraph ParFecha = new Paragraph($"Fecha: { fechahoy } HS", oFont) { Alignment = Element.ALIGN_LEFT };
                Paragraph ParEstado = new Paragraph($"Estado del remito: { remitoDevolucion.Estado.Estado}", oFont) { Alignment = Element.ALIGN_LEFT };
                doc.Add(ParFecha);
                doc.Add(ParEstado);

                doc.Add(new Paragraph("Por medio de la presente, se informa que las siguientes actuaciones:\n\n", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Add(new Paragraph("Documento: " + expediente.Nro_expediente, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Add(new Paragraph("\n\n\n\nSolicitadas mediante: \n Nota GDE Nº: "
                    + remitoDevolucion.Nota_gde + "\n Area Solicitante: "
                    + remitoDevolucion.AreaSolicitante.Nombre + "\n Director Autorizante: "
                    + remitoDevolucion.Autorizante.Nombre + " "
                    + remitoDevolucion.Autorizante.Apellido, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Add(new Paragraph("\n\n\nSon ENTREGADAS por el Archivo General del Ministerio de Transporte de La Nación, a: \n Nombre y Apellido:"
                    + remitoDevolucion.Intermediario.Nombre + " "
                    + remitoDevolucion.Intermediario.Apellido + " \n DNI: "
                    + remitoDevolucion.Intermediario.Dni, oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Add(new Paragraph($"\n \n Observaciones (Espacio para observaciones, si las hubiese): { remitoDevolucion.Observaciones} ", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Add(new Paragraph("\n \n \n \n \n \n  Firma" + " _____________________________________  Firma_____________________________________________  ", oFont)
                {
                    Alignment = Element.ALIGN_LEFT
                });

                doc.Close();
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Por documento", "Pdf generado corrtamente");
                MessageBox.Show("PDF creado correctamente!!");
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public static void GenerarPdfReporte(List<BEAuditoriaExpediente> ListaReporte)
        {
            try
            {
                foreach (var item in ListaReporte)
                {   //recorro para instanciar los objetos necesarios para desp mostrar la lista
                    BEExpediente oExpediente = new BEExpediente();
                    oExpediente.Codigo = item.Expediente.Codigo;
                    item.Expediente = oExpediente;

                    switch (item.Estado.Estado.Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = item.Estado.Codigo;
                                oEstadoIARevisar.Estado = item.Estado.Estado;
                                item.Estado = oEstadoIARevisar;

                            }
                            break;
                        case "Digitalizado":
                            {
                                Digitalizado oEstadoDigitalizado = new Digitalizado();
                                oEstadoDigitalizado.Codigo = item.Estado.Codigo;
                                oEstadoDigitalizado.Estado = item.Estado.Estado;
                                item.Estado = oEstadoDigitalizado;

                            }
                            break;
                        case "NoDigitalizado":
                            {
                                NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                oEstadoNoDigitalizado.Codigo = item.Estado.Codigo;
                                oEstadoNoDigitalizado.Estado = item.Estado.Estado;
                                item.Estado = oEstadoNoDigitalizado;

                            }
                            break;
                        case "Desarchivado":
                            {
                                Desarchivado oEstadoDesarchivado = new Desarchivado();
                                oEstadoDesarchivado.Codigo = item.Estado.Codigo;
                                oEstadoDesarchivado.Estado = item.Estado.Estado;
                                item.Estado = oEstadoDesarchivado;

                            }
                            break;
                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = item.Estado.Codigo;
                                oEstadoDevolucion.Estado = item.Estado.Estado;
                                item.Estado = oEstadoDevolucion;

                            }
                            break;
                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = item.Estado.Codigo;
                                oEstadoPorRetirar.Estado = item.Estado.Estado;
                                item.Estado = oEstadoPorRetirar;

                            }
                            break;
                    }


                    BEArea oArea = new BEArea();
                    oArea.Codigo = item.Area.Codigo;
                    oArea.Nombre = item.Area.Nombre;
                    item.Area = oArea;

                    BEUsuario oUsuario = new BEUsuario();
                    oUsuario.Codigo = item.Usuario.Codigo;
                    oUsuario.Nombre_usuario = item.Usuario.Nombre_usuario;
                    item.Usuario = oUsuario;


                }
                DateTime fechahoy = DateTime.Now;
                oFont = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 10, Font.BOLD, BaseColor.BLACK);
                oFont2 = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 8, Font.BOLD, BaseColor.BLACK);
                oFont3 = FontFactory.GetFont(Font.FontFamily.TIMES_ROMAN.ToString(), 8, Font.NORMAL, BaseColor.BLACK);
                //CREACION DEL PDF
                doc = new Document(PageSize.LETTER, 10, 10, 42, 35);
                PdfWriter writer = PdfWriter.GetInstance(doc, new FileStream("C:\\work\\uai\\inventarioparaarchivos\\UI\\bin\\Debug\\Reporte.pdf", FileMode.Create));

                // Inicializo Documento
                doc.Open();

                //SI QUIERO AÑADIR UNA IMAGEN
                System.Drawing.Image Img = System.Drawing.Image.FromFile("C:\\Users\\micae\\OneDrive\\Escritorio\\LogoMin.png");
                Image ItextImage = Image.GetInstance(Img, System.Drawing.Imaging.ImageFormat.Png);
                ItextImage.ScaleAbsolute(165f, 40f);
                ItextImage.Alignment = Element.ALIGN_LEFT;
                doc.Add(ItextImage);

                doc.Add(new Paragraph("ARCHIVO GENERAL - Dirección General Documental", oFont) { Alignment = Element.ALIGN_RIGHT });
                doc.Add(new Paragraph("Reporte", oFont) { Alignment = Element.ALIGN_RIGHT });


                doc.Add(new Paragraph("-----------") { Alignment = Element.ALIGN_CENTER });

                PdfPTable table = new PdfPTable(11);
                table.WidthPercentage = 100f;
                
                table.AddCell(new Paragraph("Codigo", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Codigo Exp", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Nro Exp", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Gde Electrónico", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Fecha Modif", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Estado", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Observacion", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Area", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Usuario", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Operación", oFont2) { Alignment = Element.ALIGN_CENTER });
                table.AddCell(new Paragraph("Fecha Operación", oFont2) { Alignment = Element.ALIGN_CENTER });

                //itero sobre todas las propiedades del objeto BEExpedienteAuditoria
                foreach (var item in ListaReporte)
                {
                    table.AddCell(new Paragraph(item.Codigo.ToString(), oFont3) { Alignment = Element.ALIGN_CENTER }); //codigo de mi auditoria
                    table.AddCell(new Paragraph(item.Expediente.Codigo.ToString(), oFont3) { Alignment = Element.ALIGN_CENTER }); //codigo de expediente
                    table.AddCell(new Paragraph(item.Nro_expediente.ToString(), oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Nro_gde_electronico.ToString(), oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph((item.Fecha_modificado.ToString("dd-MM-yyyy")), oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Estado.Estado, oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Observaciones, oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Area.Nombre, oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Usuario.Nombre_usuario, oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Tipo_operacion.ToString(), oFont3) { Alignment = Element.ALIGN_CENTER });
                    table.AddCell(new Paragraph(item.Fecha_operacion.ToString("dd-MM-yyyy"), oFont3) { Alignment = Element.ALIGN_CENTER });
                }

                doc.Add(table);



                // Cierro documento
                doc.Close();
                BLLoBitacora.EscribirBitacora(SingletonSesion.Instancia.Usuario.Codigo, SingletonSesion.Instancia.Usuario.Nombre_usuario, TipoLog.Evento, "Reporte", "Pdf generado corrtamente");
                MessageBox.Show("PDF creado correctamente!");

           
            }
            catch (Exception ex)
            {
                //MessageBox.Show("Ah ocurrido un error al generar el documento, por favor contacte al administrador");
                throw ex;
            }
        }
    }
}