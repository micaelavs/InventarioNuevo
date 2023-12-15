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
    public class MPPAutorizante : IAuditable<BEAutorizante, TipoAccion, BEUsuario>
    {
        public void Auditar(BEAutorizante Objeto, TipoAccion Operacion, BEUsuario Usuario)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                Hashtable hdatos2 = new Hashtable();
                hdatos.Add("@Codigo_autorizante", Objeto.Codigo);
                hdatos.Add("@Dni", Objeto.Dni);
                hdatos.Add("@Nombre", Objeto.Nombre);
                hdatos.Add("@Apellido", Objeto.Apellido);
                hdatos.Add("@Codigo_dependencia", Objeto.Dependencia.Codigo);
                hdatos.Add("@Codigo_operacion", Operacion);
                hdatos.Add("@Codigo_usuario", Usuario.Codigo);
                oDatos.Escribir("sp_AuditarAutorizante", hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public List<BEAutorizante> ListarAutorizantes() 
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEAutorizante> ListaAutorizante = new List<BEAutorizante>();

            DS = oDatos.Leer("sp_Listar_autorizantes", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEAutorizante oAutorizante = new BEAutorizante();
                    oAutorizante.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oAutorizante.Nombre = Item["Nombre"].ToString();
                    oAutorizante.Apellido = Item["Apellido"].ToString();
                    oAutorizante.Dni = Convert.ToInt32(Item["Dni"]);
                    BEDependencia oDependencia = new BEDependencia();
                    oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]); ;
                    oDependencia.Nombre = Item["Dependencia"].ToString();
                    oAutorizante.Dependencia = oDependencia;
                    ListaAutorizante.Add(oAutorizante);
                }

                return ListaAutorizante;
            }
            else
            {
                return null;
            }
        }


        public void Alta(BEAutorizante BEoAutorizante)
        {
            try
            {
                string consulta;
                consulta = "sp_AltaAutorizante";
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Nombre", BEoAutorizante.Nombre);
                hdatos.Add("@Apellido", BEoAutorizante.Apellido);
                hdatos.Add("@Dni", BEoAutorizante.Dni);
                hdatos.Add("@Codigo_dependencia", BEoAutorizante.Dependencia.Codigo);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
           
        }
      

        public void Modificacion(BEAutorizante BEoAutorizante)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarAutorizante";
                Hashtable hdatos = new Hashtable();

                if (BEoAutorizante.Codigo != 0) 
                {
                    hdatos.Add("@Codigo", BEoAutorizante.Codigo); 
                }

                hdatos.Add("@Nombre", BEoAutorizante.Nombre);
                hdatos.Add("@Apellido", BEoAutorizante.Apellido);
                hdatos.Add("@Dni", BEoAutorizante.Dni);
                hdatos.Add("@Codigo_dependencia", BEoAutorizante.Dependencia.Codigo);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public int TraerCodUltAutorizante() 
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();
            BEAutorizante Autorizante = new BEAutorizante();

            DS = oDatos.Leer("sp_TraerCodUltimoAutorizante", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    Autorizante.Codigo = Convert.ToInt32(Item["Codigo"]);

                }
                return Autorizante.Codigo;
            }
            return 0;
        }
    }
}
