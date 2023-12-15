using BE;
using ClassServicios;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MPP
{
    public class MPPAuditoriaExpediente
    {
        public List<BEAuditoriaExpediente> Recuperar(BEExpediente Objeto)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_RecuperarExpedienteDeAuditoria";
            hdatos.Add("@Nro_expediente", Objeto.Nro_expediente);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);

            List<BEAuditoriaExpediente> ListaAuditoria = new List<BEAuditoriaExpediente>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    BEAuditoriaExpediente oAuditoriaExp = new BEAuditoriaExpediente();

                    BEExpediente oExpediente = new BEExpediente();

                    oAuditoriaExp.Codigo = Convert.ToInt32(Item["Codigo"]);

                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo_expediente"]);

                    oAuditoriaExp.Expediente = oExpediente;
                    oAuditoriaExp.Nro_expediente = Item["Nro_expediente"].ToString();
                    oAuditoriaExp.Nro_gde_electronico = Item["Nro_gde_electronico"].ToString();
                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoIARevisar;

                            }
                            break;
                        case "Digitalizado":
                            {
                                Digitalizado oEstadoDigitalizado = new Digitalizado();
                                oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDigitalizado;

                            }
                            break;
                        case "NoDigitalizado":
                            {
                                NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoNoDigitalizado;

                            }
                            break;
                        case "Desarchivado":
                            {
                                Desarchivado oEstadoDesarchivado = new Desarchivado();
                                oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDesarchivado;

                            }
                            break;
                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDevolucion;

                            }
                            break;
                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoPorRetirar;

                            }
                            break;
                    }
                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                    oArea.Nombre = Convert.ToString(Item["Nombre_area"]);

                    oAuditoriaExp.Area = oArea;
                    oAuditoriaExp.Observaciones = Convert.ToString(Item["Observaciones"]);
                    oAuditoriaExp.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);
                    oAuditoriaExp.Tipo_operacion = (TipoAccion)Enum.Parse(typeof(TipoAccion), Item["Codigo_operacion"].ToString());

                    BEUsuario oUsuario = new BEUsuario();
                    oUsuario.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsuario.Nombre_usuario = Convert.ToString(Item["Nombre_usuario"]);

                    oAuditoriaExp.Usuario = oUsuario;
                    oAuditoriaExp.Fecha_operacion = Convert.ToDateTime(Item["Fecha_operacion"]);
                    ListaAuditoria.Add(oAuditoriaExp);

                }
                
            }
            return ListaAuditoria;
        }

        public List<BEAuditoriaExpediente> ExpedienteVerReporte()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ExpedienteVerReporte";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEAuditoriaExpediente> ListaAuditoria = new List<BEAuditoriaExpediente>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    BEAuditoriaExpediente oAuditoriaExp = new BEAuditoriaExpediente();
                    BEExpediente oExpediente = new BEExpediente();
                    oAuditoriaExp.Codigo = Convert.ToInt32(Item["Codigo"]);

                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo_expediente"]);
                    oAuditoriaExp.Expediente = oExpediente;

                    oAuditoriaExp.Nro_expediente = Item["Nro_expediente"].ToString();
                    oAuditoriaExp.Nro_gde_electronico = Item["Nro_gde_electronico"].ToString();
                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoIARevisar;

                            }
                            break;
                        case "Digitalizado":
                            {
                                Digitalizado oEstadoDigitalizado = new Digitalizado();
                                oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDigitalizado;

                            }
                            break;
                        case "NoDigitalizado":
                            {
                                NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoNoDigitalizado;

                            }
                            break;
                        case "Desarchivado":
                            {
                                Desarchivado oEstadoDesarchivado = new Desarchivado();
                                oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDesarchivado;

                            }
                            break;
                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoDevolucion;

                            }
                            break;
                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                oAuditoriaExp.Estado = oEstadoPorRetirar;

                            }
                            break;
                    }
                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                    oArea.Nombre = Convert.ToString(Item["Nombre_area"]);

                    oAuditoriaExp.Area = oArea;
                    oAuditoriaExp.Observaciones = Convert.ToString(Item["Observaciones"]);
                    oAuditoriaExp.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);
                    oAuditoriaExp.Tipo_operacion = (TipoAccion)Enum.Parse(typeof(TipoAccion), Item["Codigo_operacion"].ToString());

                    BEUsuario oUsuario = new BEUsuario();
                    oUsuario.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsuario.Nombre_usuario = Convert.ToString(Item["Nombre_usuario"]);

                    oAuditoriaExp.Usuario = oUsuario;
                    oAuditoriaExp.Fecha_operacion = Convert.ToDateTime(Item["Fecha_operacion"]);
                    ListaAuditoria.Add(oAuditoriaExp);

                }

            }
            return ListaAuditoria;
        }


    }
}
