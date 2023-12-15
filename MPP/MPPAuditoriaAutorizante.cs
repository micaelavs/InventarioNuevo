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
    public class MPPAuditoriaAutorizante
    {
        public List<BEAuditoriaAutorizante> Recuperar(BEAutorizante Objeto)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_RecuperarAutorizanteDeAuditoria";
            hdatos.Add("@Codigo_autorizante", Objeto.Codigo);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);

            List<BEAuditoriaAutorizante> ListaAuditoria = new List<BEAuditoriaAutorizante>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) //esto es al cuete xq es un solo registro
                {
                    BEAuditoriaAutorizante oAuditoriaAuto = new BEAuditoriaAutorizante();

                    BEAutorizante oAutorizante = new BEAutorizante();

                    oAuditoriaAuto.Codigo = Convert.ToInt32(Item["Codigo"]);
                    /*Cargo el autorizante*/
                    oAutorizante.Codigo = Convert.ToInt32(Item["Codigo_autorizante"]);
                    oAutorizante.Nombre = Convert.ToString(Item["Nombre"]);
                    oAutorizante.Apellido = Convert.ToString(Item["Apellido"]);
                    oAutorizante.Dni = Convert.ToInt32(Item["Dni"]);
                    BEDependencia oDependenciaAuto = new BEDependencia();
                    oDependenciaAuto.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                    oDependenciaAuto.Nombre = Convert.ToString(Item["Nombre_dependencia"]);
                    oAutorizante.Dependencia = oDependenciaAuto;
                    //oAutorizante.Activo = Convert.ToBoolean(Item["Activo"]);
                    /****/
                    oAuditoriaAuto.Autorizante = oAutorizante;
                    oAuditoriaAuto.Dni = Convert.ToInt32(Item["Dni"]);
                    oAuditoriaAuto.Nombre = Convert.ToString(Item["Nombre"]);
                    oAuditoriaAuto.Apellido = Convert.ToString(Item["Apellido"]);

                    BEDependencia oDependencia = new BEDependencia();
                    oDependencia.Codigo = Convert.ToInt32(Item["Codigo_dependencia"]);
                    oDependencia.Nombre = Convert.ToString(Item["Nombre_dependencia"]);
                    oAuditoriaAuto.Dependencia = oDependencia;
                    //oAuditoriaAuto.Activo = Convert.ToBoolean(Item["Activo"]);
                    oAuditoriaAuto.Tipo_operacion = (TipoAccion)Enum.Parse(typeof(TipoAccion), Item["Codigo_operacion"].ToString());
                    BEUsuario oUsuario = new BEUsuario();
                    oUsuario.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsuario.Nombre_usuario = Convert.ToString(Item["Nombre_usuario"]);

                    oAuditoriaAuto.Usuario = oUsuario;
                    oAuditoriaAuto.Fecha_operacion = Convert.ToDateTime(Item["Fecha_operacion"]);
                    ListaAuditoria.Add(oAuditoriaAuto);

                }

            }
            return ListaAuditoria;
        }
    }
}
