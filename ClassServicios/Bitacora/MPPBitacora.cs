using BE;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios.Bitacora
{
    public class MPPBitacora
    {
        public List<BEBitacora> ListarBitacora()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_BitacoraListar";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEBitacora> ListaBitacora = new List<BEBitacora>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEBitacora oBitacora = new BEBitacora();
                    BEUsuario oUsuario = new BEUsuario();
                    oBitacora.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oUsuario.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsuario.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oBitacora.Usuario = oUsuario;
                    oBitacora.TipoLog = (TipoLog)Enum.Parse(typeof(TipoLog), Item["TipoLog"].ToString());
                    oBitacora.Accion = Item["Accion"].ToString();
                    oBitacora.Mensaje = Item["Mensaje"].ToString();
                    oBitacora.Fecha_operacion = Convert.ToDateTime(Item["Fecha_operacion"]);
                    ListaBitacora.Add(oBitacora);
                }
                return ListaBitacora;
            }
            return null;
        }

        public void EscribirBitacora(int Codigo_usuario, string Nombre_usuario, TipoLog TipoLog, string Accion, string Mensaje, DateTime Fecha_operacion)
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "sp_AltaBitacora";
                hdatos.Add("@Codigo_usuario", Codigo_usuario);
                hdatos.Add("@Nombre_usuario", Nombre_usuario);
                hdatos.Add("@TipoLog", TipoLog.ToString());
                hdatos.Add("@Accion", Accion);
                hdatos.Add("@Mensaje", Mensaje);
                hdatos.Add("@fecha_operacion", Fecha_operacion);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public List<BEBitacora> BitacoraVerLogs(string TipoLog, DateTime? fechaInicio = null, DateTime? fechaFin = null)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();
            consulta = "sp_BitacoraVerLogs";
            hdatos.Add("@TipoLog", TipoLog);
            hdatos.Add("@FechaInicio",fechaInicio);
            hdatos.Add("@FechaFin",fechaFin);
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);

            List<BEBitacora> ListaBitacora = new List<BEBitacora>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEBitacora oBitacora = new BEBitacora();
                    oBitacora.Codigo = Convert.ToInt32(Item["Codigo"]);
                    BEUsuario oUsuario = new BEUsuario();
                    oUsuario.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsuario.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oBitacora.Usuario = oUsuario;
                    oBitacora.TipoLog = (TipoLog)Enum.Parse(typeof(TipoLog), Item["TipoLog"].ToString());
                    oBitacora.Accion = Item["Accion"].ToString();
                    oBitacora.Mensaje = Item["Mensaje"].ToString();
                    oBitacora.Fecha_operacion = Convert.ToDateTime(Item["Fecha_operacion"]);
                    ListaBitacora.Add(oBitacora);
                }
                return ListaBitacora;
            }
            return null;
        }
    }
}
