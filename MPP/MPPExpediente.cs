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
    public class MPPExpediente : IAuditable<BEExpediente, TipoAccion, BEUsuario>
    {

        public void Auditar(BEExpediente Objeto, TipoAccion Operacion, BEUsuario Usuario)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                Hashtable hdatos2 = new Hashtable();
                hdatos.Add("@Codigo_expediente", Objeto.Codigo);
                hdatos.Add("@Nro_expediente", Objeto.Nro_expediente);
                hdatos.Add("@Nro_gde_electronico", Objeto.Nro_gde_electronico);
                hdatos.Add("@Codigo_estado", Objeto.Estado.Codigo);
                hdatos.Add("@Codigo_area", Objeto.Area.Codigo);
                hdatos.Add("@Observaciones", Objeto.Observaciones);
                hdatos.Add("@Fecha_modificado", Objeto.Fecha_modificado);
                hdatos.Add("@Codigo_operacion", Operacion);
                hdatos.Add("@Codigo_usuario", Usuario.Codigo);
                oDatos.Escribir("sp_AuditarExp", hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
       
        public BEExpediente TraerExpediente(string NroDocumento) //sin cuerpos
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_TraerExpediente";
            hdatos.Add("@NroDocumento", NroDocumento);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            BEExpediente oExpediente = new BEExpediente();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo"]);
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
                    oArea.Nombre = Item["Nombre"].ToString();
                    oExpediente.Area = oArea;
                    oExpediente.Observaciones = Item["Observaciones"].ToString();
                    oExpediente.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);

                }
                return oExpediente;
            }
            else
            {
                return oExpediente; 
            }

        }

        public bool VerificarNroExpElectronico(string NRoExpElectronico)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_VerificarNroExpElectronico";
            hdatos.Add("@Nro_exp_electronico", NRoExpElectronico);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            BEExpediente oExpediente = new BEExpediente();
            if (DS.Tables[0].Rows.Count > 0)
            {
                return true;

            }
            return false;
        }

        public List<BEExpedienteEstado> VerificarEstadoSala2()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_VerificarEstadoSala2";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEExpedienteEstado> ListaEstadosExp = new List<BEExpedienteEstado>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                
                    switch (Convert.ToString(Item["Estado"]).Trim())
                    {
                        case "IngresoARevisar":
                            {
                                IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                ListaEstadosExp.Add(oEstadoIARevisar);

                            }
                            break;
                        case "Devolucion":
                            {
                                Devolucion oEstadoDevolucion = new Devolucion();
                                oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                ListaEstadosExp.Add(oEstadoDevolucion);

                            }
                            break;
                        case "PorRetirar":
                            {
                                PorRetirar oEstadoPorRetirar = new PorRetirar();
                                oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                ListaEstadosExp.Add(oEstadoPorRetirar);

                            }
                            break;
                    }

                }
                return ListaEstadosExp;
            }
            return null;
        }

        public List<BEExpedienteEstado> ListarEstadosExp()  
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarEstadosExpediente";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEExpedienteEstado> ListaEstadosExp = new List<BEExpedienteEstado>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {

                    {
                        
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "IngresoARevisar":
                                {
                                    IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                    oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoIARevisar);


                                }
                                break;
                            case "Digitalizado":
                                {
                                    Digitalizado oEstadoDigitalizado = new Digitalizado();
                                    oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDigitalizado);


                                }
                                break;
                            case "NoDigitalizado":
                                {
                                    NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                    oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoNoDigitalizado);


                                }
                                break;
                            case "Desarchivado":
                                {
                                    Desarchivado oEstadoDesarchivado = new Desarchivado();
                                    oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDesarchivado);

                                }
                                break;
                            case "Devolucion":
                                {
                                    Devolucion oEstadoDevolucion = new Devolucion();
                                    oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDevolucion);

                                }
                                break;
                            case "PorRetirar":
                                {
                                    PorRetirar oEstadoPorRetirar = new PorRetirar();
                                    oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoPorRetirar);

                                }
                                break;
                        }

                    }

                }
                return ListaEstadosExp;
            }
            return null;

        }

        public List<BEExpedienteEstado> ListarTodosEstadosExpediente()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarTodosEstadosExpediente";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEExpedienteEstado> ListaEstadosExp = new List<BEExpedienteEstado>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {

                    {
                       
                        switch (Convert.ToString(Item["Estado"]).Trim())
                        {
                            case "IngresoARevisar":
                                {
                                    IngresoARevisar oEstadoIARevisar = new IngresoARevisar();
                                    oEstadoIARevisar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoIARevisar.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoIARevisar);


                                }
                                break;
                            case "Digitalizado":
                                {
                                    Digitalizado oEstadoDigitalizado = new Digitalizado();
                                    oEstadoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDigitalizado);


                                }
                                break;
                            case "NoDigitalizado":
                                {
                                    NoDigitalizado oEstadoNoDigitalizado = new NoDigitalizado();
                                    oEstadoNoDigitalizado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoNoDigitalizado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoNoDigitalizado);


                                }
                                break;
                            case "Desarchivado":
                                {
                                    Desarchivado oEstadoDesarchivado = new Desarchivado();
                                    oEstadoDesarchivado.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDesarchivado.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDesarchivado);

                                }
                                break;
                            case "Devolucion":
                                {
                                    Devolucion oEstadoDevolucion = new Devolucion();
                                    oEstadoDevolucion.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoDevolucion.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoDevolucion);

                                }
                                break;
                            case "PorRetirar":
                                {
                                    PorRetirar oEstadoPorRetirar = new PorRetirar();
                                    oEstadoPorRetirar.Codigo = Convert.ToInt32(Item["Codigo"]);
                                    oEstadoPorRetirar.Estado = Convert.ToString(Item["Estado"]);
                                    ListaEstadosExp.Add(oEstadoPorRetirar);

                                }
                                break;
                        }

                    }

                }
                return ListaEstadosExp;
            }
            return null;

        }

        public void CambiarEstado(BEExpediente oExpediente, int codigo)
        {
            try
            {
                string consulta;
                DataSet DS = new DataSet();
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();

                consulta = "sp_CambiarEstadoExpediente";
                hdatos.Add("@Codigo", oExpediente.Codigo);
                hdatos.Add("@Codigo_estado", codigo);

                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
       

        }

        public void Alta(BEExpediente BEoExpediente)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                string consulta;

                consulta = "sp_AltaExpediente";
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Nro_expediente", BEoExpediente.Nro_expediente);
                hdatos.Add("@Nro_gde_electronico", BEoExpediente.Nro_gde_electronico);
                hdatos.Add("@Codigo_estado", BEoExpediente.Estado.Codigo);
                hdatos.Add("@Codigo_area", BEoExpediente.Area.Codigo);
                hdatos.Add("@Observaciones", BEoExpediente.Observaciones);
                hdatos.Add("@Fecha_modificado", BEoExpediente.Fecha_modificado);
                int indice = oDatos.EscribirReturnIndice(consulta, hdatos);

                Hashtable hdatos2 = new Hashtable();

                foreach (var cuerpo in BEoExpediente.Cuerpos) 
                {
                    hdatos2.Add("@Nro_cuerpo", cuerpo.Nro_cuerpo);
                    hdatos2.Add("@Fojas", cuerpo.Fojas);
                    hdatos2.Add("@Hojas", cuerpo.Hojas);
                    hdatos2.Add("@Codigo_estado", cuerpo.Estado.Codigo);
                    hdatos2.Add("@Codigo_expediente", indice);
                    hdatos2.Add("@Codigo_caja", cuerpo.Caja.Codigo);
                    hdatos2.Add("@Observaciones", cuerpo.Observaciones);
                    oDatos.Escribir("sp_AltaCuerpo", hdatos2);
                    hdatos2.Clear();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            

        }
        public void Modificacion(BEExpediente BEoExpediente)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                string consulta;
                consulta = "sp_ModificarExpediente";
                if (BEoExpediente.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoExpediente.Codigo);
                }

                hdatos.Add("@Nro_expediente", BEoExpediente.Nro_expediente);
                hdatos.Add("@Nro_gde_electronico", BEoExpediente.Nro_gde_electronico);
                hdatos.Add("@Codigo_estado", BEoExpediente.Estado.Codigo);
                hdatos.Add("@Codigo_area", BEoExpediente.Area.Codigo);
                hdatos.Add("@Observaciones", BEoExpediente.Observaciones);
                hdatos.Add("@Fecha_modificado", BEoExpediente.Fecha_modificado);
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           

        }

        public void Baja(BEExpediente BEoExpediente)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                string consulta;
                Hashtable hdatos = new Hashtable();
                consulta = "sp_BajaExpediente";
                if (BEoExpediente.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoExpediente.Codigo);
                }

                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public List<BEExpediente> ListarExpedientes() //con cuerpos
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "sp_ListarExpedientes";

                DataSet DS = new DataSet();
                Persistencia oDatos = new Persistencia();
                DS = oDatos.Leer(consulta, null);

                List<BEExpediente> ListaExpedientes = new List<BEExpediente>();

                if (DS.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Item in DS.Tables[0].Rows)
                    {

                        BEExpediente oExpediente = new BEExpediente();
                        oExpediente.Codigo = Convert.ToInt32(Item["Codigo"]);
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

                        var Nro_cuerpo = Convert.ToInt32(Item["Nro_cuerpo"]);
                        var Fojas = Convert.ToInt32(Item["Fojas"]);
                        var Hojas = Convert.ToInt32(Item["Hojas"]);
                        var Observaciones = Item["Observaciones"].ToString();


                        BECuerpoEstado oCuerpoEstado = new BECuerpoEstado();
                        oCuerpoEstado.Codigo = Convert.ToInt32(Item["Codigo_cuerpo_estado"]);
                        oCuerpoEstado.Estado = Item["Estado_cuerpo"].ToString();

                        BECaja oCaja = new BECaja();
                        oCaja.Codigo = Convert.ToInt32(Item["Codigo_caja"]);
                        oCaja.Sala = Convert.ToInt32(Item["Sala"]);

                        oExpediente.AgregarCuerpo(oCuerpoEstado, oCaja, Nro_cuerpo, Fojas, Hojas, Observaciones);

                        oExpediente.Observaciones = Item["Observaciones_expediente"].ToString();
                        oExpediente.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);

                        ListaExpedientes.Add(oExpediente);


                    }
                    return ListaExpedientes;
                }
                return null;
            }

        public List<BEExpediente> ListarExpedientesSinCuerpos()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarExpedientesSinCuerpos";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEExpediente> ListaExpedientes = new List<BEExpediente>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {

                    BEExpediente oExpediente = new BEExpediente();
                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo"]);
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


                    oExpediente.Observaciones = Item["Observaciones_expediente"].ToString();
                    oExpediente.Fecha_modificado = Convert.ToDateTime(Item["Fecha_modificado"]);

                    ListaExpedientes.Add(oExpediente);


                }
                return ListaExpedientes;
            }
            return null;
        }

        public List<BECuerpo> TraerCuerposExp(BEExpediente oExpe)
        {

            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_TraerCuerposExp";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();

            hdatos.Add("@Codigo_exp", oExpe.Codigo);
            List<BECuerpo> ListaCuerpo = new List<BECuerpo>();
            DS = oDatos.Leer(consulta, hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BECuerpo oCuerpo = new BECuerpo();
                    oCuerpo.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oCuerpo.Nro_cuerpo = Convert.ToInt32(Item["Nro_cuerpo"]);
                    oCuerpo.Fojas = Convert.ToInt32(Item["Fojas"]);
                    oCuerpo.Hojas = Convert.ToInt32(Item["Hojas"]);

                    BECuerpoEstado oCuerpoEstado = new BECuerpoEstado();
                    oCuerpoEstado.Codigo = Convert.ToInt32(Item["Codigo_estado"]);
                    oCuerpoEstado.Estado = Item["Estado"].ToString();

                    oCuerpo.Estado = oCuerpoEstado;

                    BECaja oCaja = new BECaja();
                    oCaja.Codigo = Convert.ToInt32(Item["Codigo_caja"]);
                    oCaja.Sala = Convert.ToInt32(Item["Sala"]);
                    oCaja.Capacidad = Convert.ToInt32(Item["Capacidad"]);
                    oCaja.Disponible = Convert.ToDouble(Item["Disponible"]);

                    oCuerpo.Caja = oCaja;

                    oCuerpo.Observaciones = Item["Observaciones"].ToString();

                    ListaCuerpo.Add(oCuerpo);

                }
                return ListaCuerpo;
            }
            return null;
        }

        public int BuscarCodigoExp(string Nro_expediente)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_TraerExpedientePorNroExp";
            hdatos.Add("@Nro_expediente", Nro_expediente);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            BEExpediente oExpediente = new BEExpediente();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    oExpediente.Codigo = Convert.ToInt32(Item["Codigo"]);

                }
                return oExpediente.Codigo;
            }
            return 0;

        }

    }
}