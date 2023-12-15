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
    public class MPPDependencia
    {
        public List<BEDependencia> ListarDependencias()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEDependencia> ListaDependencia = new List<BEDependencia>();

            DS = oDatos.Leer("sp_Listar_dependencias", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEDependencia oDependencia = new BEDependencia();
                    oDependencia.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oDependencia.Nombre = Item["Nombre"].ToString();
                    ListaDependencia.Add(oDependencia);
                }

                return ListaDependencia;
            }
            else
            {
                return null;
            }
        }

        public void Alta(BEDependencia BEoDepen)
        {
            try
            {
                string consulta;
                consulta = "sp_AltaDependencia";
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Nombre", BEoDepen.Nombre); 
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }   
           
        }

        public void Baja(BEDependencia BEoDepen)
        {
            try
            {
                string consulta;
                consulta = "sp_BajaDependencia";
                Hashtable hdatos = new Hashtable();
                if (BEoDepen.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoDepen.Codigo);  
                }

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           

        }
        public void Modificacion(BEDependencia BEoDepen)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarDependencia";
                Hashtable hdatos = new Hashtable();

                if (BEoDepen.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoDepen.Codigo);
                }
                hdatos.Add("@Nombre", BEoDepen.Nombre);
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          

        }
    }
}
