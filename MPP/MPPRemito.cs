using BE;
using ClassServicios;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;

namespace MPP
{
    public class MPPRemito
    {
        public int TraerUltimoId()
        {
            Persistencia oDatos = new Persistencia();
            DataSet DS = new DataSet();
            var codigo = 0;
            DS = oDatos.Leer("sp_BuscarUltimoRemito", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    codigo = Convert.ToInt32(Item["Codigo"]);
                }

                return codigo; 
            }
            else
            {
                return codigo; 
            }
        }

        public List<BERemito> ListarRemitos()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BERemito> ListaRemitos = new List<BERemito>();

            DS = oDatos.Leer("sp_ListarRemitos", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    if ((Convert.ToInt32(Item["Tipo"])) == 1)
                    {
                        BERemitoIngreso oRemitoIngreso = new BERemitoIngreso();

                        oRemitoIngreso.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oRemitoIngreso.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoIngreso.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoIngreso.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoIngreso.Intermediario = oIntermediario;

                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "ARevisar":
                                {
                                    Arevisar oARevisar = new Arevisar();
                                    oARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oARevisar.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oARevisar;
                                }
                                break;

                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oAceptado;
                                }
                                break;

                            case "Rechazado":
                                {
                                    Rechazado oRechazado = new Rechazado();
                                    oRechazado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oRechazado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oRechazado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoIngreso.AreaSolicitante = oArea;

                        oRemitoIngreso.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoIngreso.Observaciones = Item["Observaciones"].ToString();
                     

                        ListaRemitos.Add(oRemitoIngreso);
                    }
                    else if ((Convert.ToInt32(Item["Tipo"])) == 2)
                    {
                        BERemitoEgreso oRemitoEgreso = new BERemitoEgreso();

                        oRemitoEgreso.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oRemitoEgreso.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoEgreso.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoEgreso.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoEgreso.Intermediario = oIntermediario;

                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoEgreso.Estado = oAceptado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoEgreso.AreaSolicitante = oArea;

                        oRemitoEgreso.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoEgreso.Observaciones = Item["Observaciones"].ToString();

                        ListaRemitos.Add(oRemitoEgreso);
                    }
                    else if ((Convert.ToInt32(Item["Tipo"])) == 3)
                    {
                        BERemitoDevolucion oRemitoDevolucion = new BERemitoDevolucion();

                        oRemitoDevolucion.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oRemitoDevolucion.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoDevolucion.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoDevolucion.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoDevolucion.Intermediario = oIntermediario;
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoDevolucion.Estado = oAceptado;
                                }
                                break;

                            case "Anulado":
                                {
                                    Anulado oAnulado = new Anulado();
                                    oAnulado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAnulado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoDevolucion.Estado = oAnulado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoDevolucion.AreaSolicitante = oArea;

                        oRemitoDevolucion.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoDevolucion.Observaciones = Item["Observaciones"].ToString();

                        ListaRemitos.Add(oRemitoDevolucion);
                    }
                }

                return ListaRemitos;
            }
            else
            {
                return null;
            }
        }

        public void OperacionModDevolucion(BERemitoDevolucion BEoRemito)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Codigo", BEoRemito.Codigo);
                hdatos.Add("@Codigo_estado", BEoRemito.Estado.Codigo); // alta
                hdatos.Add("@Nro_remito", BEoRemito.Nro_remito);
                hdatos.Add("@Codigo_area", BEoRemito.AreaSolicitante.Codigo);
                hdatos.Add("@Fecha", BEoRemito.Fecha);
                hdatos.Add("@Codigo_autorizante", BEoRemito.Autorizante.Codigo);
                hdatos.Add("@Nota_gde", BEoRemito.Nota_gde);
                hdatos.Add("@Codigo_intermediario", BEoRemito.Intermediario.Codigo);
                hdatos.Add("@Observaciones", BEoRemito.Observaciones);
                hdatos.Add("@Tipo", ObtenerTipo(BEoRemito));
                oDatos.Escribir("sp_ModificarRemito", hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
            
        }

        public void AltaIngreso(BERemitoIngreso BEoRemito)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                string consulta;
                consulta = "sp_AltaRemito";
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Codigo_estado", BEoRemito.Estado.Codigo);
                hdatos.Add("@Nro_remito", BEoRemito.Nro_remito);
                hdatos.Add("@Codigo_area", BEoRemito.AreaSolicitante.Codigo);
                hdatos.Add("@Fecha", BEoRemito.Fecha);
                hdatos.Add("@Codigo_autorizante", BEoRemito.Autorizante.Codigo);
                hdatos.Add("@Nota_gde", BEoRemito.Nota_gde);
                hdatos.Add("@Codigo_intermediario", BEoRemito.Intermediario.Codigo);
                hdatos.Add("@Observaciones", BEoRemito.Observaciones);
                hdatos.Add("@Tipo", ObtenerTipo(BEoRemito));


                int indice = oDatos.EscribirReturnIndice(consulta, hdatos);

                //inserto los numeros comdoc para ese remito
                Hashtable hdatos2 = new Hashtable();

                foreach (var Nro_comdoc in BEoRemito.NumerosComdoc)
                {
                    hdatos2.Add("@Codigo_remito", indice);
                    hdatos2.Add("@Nro_comdoc", Nro_comdoc);
                    oDatos.Escribir("sp_CargarNrosComdoc", hdatos2);
                    hdatos2.Clear();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void ModificacionIngreso(BERemitoIngreso BEoRemito)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                string consulta;
                consulta = "sp_ModificarRemito";

                Hashtable hdatos = new Hashtable();

                if (BEoRemito.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoRemito.Codigo);
                }

                hdatos.Add("@Codigo_estado", BEoRemito.Estado.Codigo); 
                hdatos.Add("@Nro_remito", BEoRemito.Nro_remito);
                hdatos.Add("@Codigo_area", BEoRemito.AreaSolicitante.Codigo);
                hdatos.Add("@Fecha", BEoRemito.Fecha);
                hdatos.Add("@Codigo_autorizante", BEoRemito.Autorizante.Codigo);
                hdatos.Add("@Nota_gde", BEoRemito.Nota_gde);
                hdatos.Add("@Codigo_intermediario", BEoRemito.Intermediario.Codigo);
                hdatos.Add("@Observaciones", BEoRemito.Observaciones);
                hdatos.Add("@Tipo", ObtenerTipo(BEoRemito));

                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        
              
        }
    
        public void AltaEgreso(BERemitoEgreso BEoRemito)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                string consulta;

                consulta = "sp_AltaRemito"; 

                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Codigo_estado", BEoRemito.Estado.Codigo);
                hdatos.Add("@Nro_remito", BEoRemito.Nro_remito);
                hdatos.Add("@Codigo_area", BEoRemito.AreaSolicitante.Codigo);
                hdatos.Add("@Fecha", BEoRemito.Fecha);
                hdatos.Add("@Codigo_autorizante", BEoRemito.Autorizante.Codigo);
                hdatos.Add("@Nota_gde", BEoRemito.Nota_gde);
                hdatos.Add("@Codigo_intermediario", BEoRemito.Intermediario.Codigo);
                hdatos.Add("@Observaciones", BEoRemito.Observaciones);
                hdatos.Add("@Tipo", ObtenerTipo(BEoRemito));


                int indice = oDatos.EscribirReturnIndice(consulta, hdatos);

                //inserto los numeros comdoc para ese remito
                Hashtable hdatos2 = new Hashtable();
                Hashtable hdatos3 = new Hashtable();

                foreach (var expediente in BEoRemito.ListaExpediente)
                {
                    var RemitoAsociado = TaerRemitoAsociado(expediente); //busco si cada uno teine un remito asociado
                    if (RemitoAsociado != null)
                    {   //actualizo
                        hdatos3.Add("@Codigo_remito", indice);
                        hdatos3.Add("@Codigo_expediente", expediente.Codigo);
                        oDatos.Escribir("sp_ActualizarRemitoAsociado", hdatos3);
                        hdatos3.Clear();
                    }
                    else
                    {
                        //inserto por primera vez
                        hdatos2.Add("@Codigo_remito", indice);
                        hdatos2.Add("@Codigo_expediente", expediente.Codigo);
                        oDatos.Escribir("sp_CargarRemitoExpedientes", hdatos2);
                        hdatos2.Clear();
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
          

                  
        }
        public BERemito TaerRemitoAsociado(BEExpediente oExpediente)
        {
            Persistencia oDatos = new Persistencia();
            DataSet DS = new DataSet();
            Hashtable hdatos = new Hashtable();

            hdatos.Add("@Codigo_expediente", oExpediente.Codigo);

            DS = oDatos.Leer("sp_TraerRemitoAsociado", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    if ((Convert.ToInt32(Item["Tipo"])) == 1)
                    {
                        BERemitoIngreso oRemitoIngreso = new BERemitoIngreso();

                        oRemitoIngreso.Codigo = Convert.ToInt32(Item["Codigo_remito"]);
                        oRemitoIngreso.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoIngreso.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoIngreso.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoIngreso.Intermediario = oIntermediario;

                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "ARevisar":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oAceptado;
                                }
                                break;

                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oAceptado;
                                }
                                break;

                            case "Rechazado":
                                {
                                    Rechazado oRechazado = new Rechazado();
                                    oRechazado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oRechazado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoIngreso.Estado = oRechazado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoIngreso.AreaSolicitante = oArea;

                        oRemitoIngreso.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoIngreso.Observaciones = Item["Observaciones"].ToString();
                   
                        return oRemitoIngreso;
                    }
                    else if ((Convert.ToInt32(Item["Tipo"])) == 2)
                    {
                        BERemitoEgreso oRemitoEgreso = new BERemitoEgreso();

                        oRemitoEgreso.Codigo = Convert.ToInt32(Item["Codigo_remito"]);
                        oRemitoEgreso.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoEgreso.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoEgreso.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoEgreso.Intermediario = oIntermediario;

                        switch (Convert.ToString(Item["Codigo_estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Codigo_estado"]);
                                    oRemitoEgreso.Estado = oAceptado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoEgreso.AreaSolicitante = oArea;

                        oRemitoEgreso.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoEgreso.Observaciones = Item["Observaciones"].ToString();

                        return oRemitoEgreso;
                    }
                    else if ((Convert.ToInt32(Item["Tipo"])) == 3)
                    {
                        BERemitoDevolucion oRemitoDevolucion = new BERemitoDevolucion();

                        oRemitoDevolucion.Codigo = Convert.ToInt32(Item["Codigo_remito"]);
                        oRemitoDevolucion.Nro_remito = (Item["Nro_remito"]).ToString();
                        oRemitoDevolucion.Nota_gde = (Item["Nota_gde"]).ToString();

                        BEAutorizante oAutorizante = new BEAutorizante();
                        oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                        oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                        oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                        oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                        BEDependencia oDependencia = new BEDependencia();
                        oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                        oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                        oAutorizante.Dependencia = oDependencia;

                        oRemitoDevolucion.Autorizante = oAutorizante;

                        BEIntermediario oIntermediario = new BEIntermediario();
                        oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                        oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                        oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                        oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                        oRemitoDevolucion.Intermediario = oIntermediario;

                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oAceptado = new Aceptado();
                                    oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoDevolucion.Estado = oAceptado;
                                }
                                break;

                            case "Anulado":
                                {
                                    Anulado oAnulado = new Anulado();
                                    oAnulado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                    oAnulado.Estado = Convert.ToString(Item["Estado"]);
                                    oRemitoDevolucion.Estado = oAnulado;
                                }
                                break;
                        }

                        BEArea oArea = new BEArea();
                        oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                        oArea.Nombre = Item["Nombre_area"].ToString();

                        oRemitoDevolucion.AreaSolicitante = oArea;

                        oRemitoDevolucion.Fecha = Convert.ToDateTime(Item["Fecha"]);
                        oRemitoDevolucion.Observaciones = Item["Observaciones"].ToString();

                        return oRemitoDevolucion;
                    }
                }
            }
            return null;
        }

        public int ObtenerTipo(BERemito BEoRemito)
        {
            int tipoDevuelto = 0;
            Type tipo = BEoRemito.GetType();

            if (typeof(BERemitoIngreso).Equals(tipo))
            {
                tipoDevuelto = 1;
            }
            else if (typeof(BERemitoEgreso).Equals(tipo))
            {
                tipoDevuelto = 2;
            }
            else if (typeof(BERemitoDevolucion).Equals(tipo))
            {
                tipoDevuelto = 3;
            }
            return tipoDevuelto;
        }

        public bool BuscarRtoComdoc(string RtoComdoc)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();
            Hashtable hdatos = new Hashtable();
            hdatos.Add("@RtoComdoc", RtoComdoc);

            DS = oDatos.Leer("sp_BuscarRtoComdoc", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool BuscarNotaGde(string NotaGde)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();
            Hashtable hdatos = new Hashtable();
            hdatos.Add("@Nota_gde", NotaGde);

            DS = oDatos.Leer("sp_VerificarNotaGDE", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public List<BEIntermediario> ListarIntermediarios()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEIntermediario> ListaIntermediarios = new List<BEIntermediario>();

            DS = oDatos.Leer("sp_Listar_intermediarios", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEIntermediario oInter = new BEIntermediario();
                    oInter.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oInter.Dni = Convert.ToInt32(Item["Dni"]);
                    oInter.Nombre = Convert.ToString(Item["Nombre"]);
                    oInter.Apellido = Convert.ToString(Item["Apellido"]);
                    ListaIntermediarios.Add(oInter);
                }

                return ListaIntermediarios;
            }
            else
            {
                return null;
            }
        }

        public List<BERemitoIngreso> ListarNotasGdeIngreso() //traigo notas gde de remitos de tipo ingreso con estado aceptado o ing a revisar
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BERemitoIngreso> ListaNotasGDE = new List<BERemitoIngreso>();

            DS = oDatos.Leer("sp_ListarNotasGdeIngreso", null); 

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BERemitoIngreso oRemito = new BERemitoIngreso();
                    oRemito.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oRemito.Nota_gde = Convert.ToString(Item["Nota_gde"]);
                    ListaNotasGDE.Add(oRemito);
                }

                return ListaNotasGDE;
            }

            return null;
        }

        public BERemitoIngreso TraerDatosRemitoPorNOTA(string NotaGde)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            Hashtable hdatos = new Hashtable();

            hdatos.Add("@NotaGde", NotaGde);
            DS = oDatos.Leer("sp_TraerDatosRemitoPorNOTAGDE", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BERemitoIngreso oRemitoIngreso = new BERemitoIngreso();

                    oRemitoIngreso.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oRemitoIngreso.Nro_remito = (Item["Nro_remito"]).ToString();
                    oRemitoIngreso.Nota_gde = (Item["Nota_gde"]).ToString();

                    BEAutorizante oAutorizante = new BEAutorizante();
                    oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                    oAutorizante.Nombre = (Item["Nombre_autorizante"]).ToString();
                    oAutorizante.Apellido = (Item["Apellido_autorizante"]).ToString();
                    oAutorizante.Dni = Convert.ToInt32(Item["Dni_autorizante"]);

                    BEDependencia oDependencia = new BEDependencia();
                    oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                    oDependencia.Nombre = Item["Nombre_dependencia"].ToString();

                    oAutorizante.Dependencia = oDependencia;

                    oRemitoIngreso.Autorizante = oAutorizante;

                    BEIntermediario oIntermediario = new BEIntermediario();
                    oIntermediario.Codigo = Convert.ToInt32(Item["Codigo_intermediario"]);
                    oIntermediario.Nombre = Item["Nombre_intermediario"].ToString();
                    oIntermediario.Apellido = Item["Apellido_intermediario"].ToString();
                    oIntermediario.Dni = Convert.ToInt32(Item["Dni_intermediario"]);

                    oRemitoIngreso.Intermediario = oIntermediario;

                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "ARevisar":
                            {
                                Arevisar oARevisar = new Arevisar();
                                oARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oARevisar.Estado = Convert.ToString(Item["Estado"]);
                                oRemitoIngreso.Estado = oARevisar;
                            }
                            break;

                        case "Aceptado":
                            {
                                Aceptado oAceptado = new Aceptado();
                                oAceptado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oAceptado.Estado = Convert.ToString(Item["Estado"]);
                                oRemitoIngreso.Estado = oAceptado;
                            }
                            break;

                        case "Rechazado":
                            {
                                Rechazado oRechazado = new Rechazado();
                                oRechazado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oRechazado.Estado = Convert.ToString(Item["Estado"]);
                                oRemitoIngreso.Estado = oRechazado;
                            }
                            break;
                    }

                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                    oArea.Nombre = Item["Nombre_area"].ToString();

                    oRemitoIngreso.AreaSolicitante = oArea;

                    oRemitoIngreso.Fecha = Convert.ToDateTime(Item["Fecha"]);
                    oRemitoIngreso.Observaciones = Item["Observaciones"].ToString();

                    return oRemitoIngreso;
                }
            }

            return null;
        }

        public void AsociarRemitoExpInsertar(BERemito oRemito, BEExpediente oExpediente)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Codigo_remito", oRemito.Codigo);
                hdatos.Add("@Codigo_expediente", oExpediente.Codigo);

                oDatos.Escribir("sp_insertarRemitoExpediente", hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public int InsertarRemitoDevolucion(BERemitoDevolucion oRemito)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();

                //todos los datos para la tabla remito esta nota GDE se repite con la de ingreso pero este es de otro tipo
                hdatos.Add("@Nro_remito", oRemito.Nro_remito);
                hdatos.Add("@Nota_gde", oRemito.Nota_gde);
                hdatos.Add("@Codigo_autorizante", oRemito.Autorizante.Codigo);
                hdatos.Add("@Codigo_intermediario", oRemito.Intermediario.Codigo);
                hdatos.Add("@Codigo_estado", oRemito.Estado.Codigo);
                hdatos.Add("@Codigo_area", oRemito.AreaSolicitante.Codigo);
                hdatos.Add("@Observaciones", oRemito.Observaciones);
                hdatos.Add("@Tipo", ObtenerTipo(oRemito));

                return oDatos.EscribirReturnIndice("sp_InsertarRemitoDevolucion", hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public List<string> TraerNumerosComdocRemito(BERemitoIngreso BEoRemito)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            Hashtable hdatos = new Hashtable();
            List<string> ListaNumerosComdoc = new List<string>();
            hdatos.Add("@Codigo_remito", BEoRemito.Codigo);
            DS = oDatos.Leer("sp_TraerNumerosComdocRemito", hdatos); 

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    var NumeroComdoc = Convert.ToString(Item["Nro_comdoc"]);

                    ListaNumerosComdoc.Add(NumeroComdoc);
                }
                return ListaNumerosComdoc;
            }
            return null;
        }

        public List<BEExpediente> TraerExpedientesPorCodigoRemito(BERemitoEgreso BEoRemito)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            Hashtable hdatos = new Hashtable();
            List<BEExpediente> ListaExpedientes = new List<BEExpediente>();
            hdatos.Add("@Codigo_remito", BEoRemito.Codigo);
            DS = oDatos.Leer("sp_TraerExpedientesPorCodigoRemito", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEExpediente oExpediente = new BEExpediente();
                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo_expediente"]);
                    oExpediente.Nro_expediente = Item["Nro_expediente"].ToString();
                    oExpediente.Nro_gde_electronico = Item["Nro_gde_electronico"].ToString();

                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoIARevisar;
                            }
                            break;

                        case "Digitalizado":
                            {
                                Digitalizado oEstadoDigitalizado = new Digitalizado();
                                oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDigitalizado;
                            }
                            break;

                        case "NoDigitalizado":
                            {
                                NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoNoDigitalizado;
                            }
                            break;

                        case "Desarchivado":
                            {
                                Desarchivado oEstadoDesarchivado = new Desarchivado();
                                oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDesarchivado;
                            }
                            break;

                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDevolucion;
                            }
                            break;

                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoPorRetirar;
                            }
                            break;
                    }

                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                    oArea.Nombre = Item["Nombre_area"].ToString();

                    oExpediente.Area = oArea;

                    oExpediente.Observaciones = Item["Observaciones"].ToString();
                    oExpediente.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);

                    ListaExpedientes.Add(oExpediente);
                }
                return ListaExpedientes;
            }
            return null;
        }

        public BEExpediente TraerExpAsociadoARemitoDev(BERemitoDevolucion BEoRemito)
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            Hashtable hdatos = new Hashtable();

            hdatos.Add("@Codigo_remito", BEoRemito.Codigo);

            DS = oDatos.Leer("sp_TraerExpedientePorRemitoDev", hdatos);

            BEExpediente oExpediente = new BEExpediente();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo_expediente"]);
                    oExpediente.Nro_expediente = Item["Nro_expediente"].ToString();
                    oExpediente.Nro_gde_electronico = Item["Nro_gde_electronico"].ToString();

                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoIARevisar;
                            }
                            break;

                        case "Digitalizado":
                            {
                                Digitalizado oEstadoDigitalizado = new Digitalizado();
                                oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDigitalizado;
                            }
                            break;

                        case "NoDigitalizado":
                            {
                                NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoNoDigitalizado;
                            }
                            break;

                        case "Desarchivado":
                            {
                                Desarchivado oEstadoDesarchivado = new Desarchivado();
                                oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDesarchivado;
                            }
                            break;

                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoDevolucion;
                            }
                            break;

                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                                oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                oExpediente.Estado = oEstadoPorRetirar;
                            }
                            break;
                    }

                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo_area"]);
                    oArea.Nombre = Item["Nombre_area"].ToString();

                    oExpediente.Area = oArea;

                    oExpediente.Observaciones = Item["Observaciones"].ToString();
                    oExpediente.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);
                }
                return oExpediente;
            }
            return oExpediente;
        }

        /*******modificaciones para state *******************/

        public List<BERemitoEstado> ObtenerEstadosPermitidos(BERemito oRemito) // Dado un remito me fijo de que tipo es y en base a eso cargo la lista con estadospermitidos
        {
            List<BERemitoEstado> ListaEstadosRemito = new List<BERemitoEstado>();
            Type tipo = oRemito.GetType();
            Persistencia oDatos = new Persistencia();
            DataSet DSIngreso = new DataSet();
            DataSet DSEgreso = new DataSet();
            DataSet DSDevolucion = new DataSet();

            Hashtable hdatos = new Hashtable();

            if (typeof(BERemitoIngreso).Equals(tipo))
            {
                DSIngreso = oDatos.Leer("sp_traerEstadosIngreso", null);

                if (DSIngreso.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Item in DSIngreso.Tables[0].Rows)
                    {
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "ARevisar":
                                {
                                    Arevisar oEstadoARevisar = new Arevisar();
                                    oEstadoARevisar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoARevisar.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoARevisar);
                                }
                                break;

                            case "Aceptado":
                                {
                                    Aceptado oEstadoAceptado = new Aceptado();
                                    oEstadoAceptado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoAceptado);
                                }
                                break;

                            case "Rechazado":
                                {
                                    Rechazado oEstadoRechazado = new Rechazado();
                                    oEstadoRechazado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoRechazado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoRechazado);
                                }
                                break;
                        }
                    }
                }
            }
            else if (typeof(BERemitoEgreso).Equals(tipo))
            {
                DSEgreso = oDatos.Leer("sp_traerEstadosEgreso", null);

                if (DSEgreso.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Item in DSEgreso.Tables[0].Rows)
                    {
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oEstadoAceptado = new Aceptado();
                                    oEstadoAceptado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoAceptado);
                                }
                                break;
                        }
                    }
                }
            }
            else if (typeof(BERemitoDevolucion).Equals(tipo))
            {
                DSDevolucion = oDatos.Leer("sp_traerEstadosDevolucion", null);
                if (DSDevolucion.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Item in DSDevolucion.Tables[0].Rows)
                    {
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "Aceptado":
                                {
                                    Aceptado oEstadoAceptado = new Aceptado();
                                    oEstadoAceptado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoAceptado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoAceptado);
                                }
                                break;

                            case "Anulado":
                                {
                                    Anulado oEstadoAnulado = new Anulado();
                                    oEstadoAnulado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoAnulado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosRemito.Add(oEstadoAnulado);
                                }
                                break;
                        }
                    }
                }
            }
            return ListaEstadosRemito;
        }

        public BERemitoEstado CargarDatosEstado(BERemitoEstado oEstado, int TipoRemito)
        {
            Persistencia oDatos = new Persistencia();
            DataSet DS = new DataSet();
            Hashtable hdatos = new Hashtable();
            hdatos.Add("@Estado", oEstado.GetType().Name);
            hdatos.Add("@TipoRemito", TipoRemito);
            DS = oDatos.Leer("sp_TraerDatosEstado", hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    switch (Convert.ToString(Item["Estado"]).Trim())

                    {
                        case "Aceptado":
                            {
                                oEstado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstado.Estado = Convert.ToString(Item["Estado"]);
                            }
                            break;

                        case "Rechazado":
                            {
                                oEstado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstado.Estado = Convert.ToString(Item["Estado"]);
                            }
                            break;

                        case "ARevisar":
                            {
                                oEstado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstado.Estado = Convert.ToString(Item["Estado"]);
                            }
                            break;

                        case "Anulado":
                            {
                                oEstado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstado.Estado = Convert.ToString(Item["Estado"]);
                            }
                            break;
                    }
                }
            }
            return oEstado;
        }
    }
}