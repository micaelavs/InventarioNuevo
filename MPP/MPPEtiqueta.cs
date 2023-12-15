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
    public class MPPEtiqueta
    {
        public List<BEEtiqueta> ListarEtiquetas()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEEtiqueta> ListaEtiquetas = new List<BEEtiqueta>();

            DS = oDatos.Leer("sp_Listar_etiquetas", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEEtiqueta oEtiqueta = new BEEtiqueta();
                    oEtiqueta.Id = Convert.ToInt32(Item["Id_etiqueta"]);
                    oEtiqueta.Nombre = Item["Nombre"].ToString();
                    ListaEtiquetas.Add(oEtiqueta);
                }

                return ListaEtiquetas;
            }
            else
            {
                return null;
            }
        }
       
        public void Alta(BEEtiqueta BEoEtiqueta)
        {
            try
            {
                string consulta;
                consulta = "sp_AltaEtiqueta";
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Nombre", BEoEtiqueta.Nombre); 

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            

        }   
        public void Baja(BEEtiqueta BEoEtiqueta)
        {
            try
            {
                string consulta;
                consulta = "sp_BajaEtiqueta";
                Hashtable hdatos = new Hashtable();
                if (BEoEtiqueta.Id != 0)
                {
                    hdatos.Add("@Id_etiqueta", BEoEtiqueta.Id);
                }

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void Modificacion(BEEtiqueta BEoEtiqueta)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarEtiqueta";
                Hashtable hdatos = new Hashtable();
                if (BEoEtiqueta.Id != 0)
                {
                    hdatos.Add("@Id_etiqueta", BEoEtiqueta.Id);
                }

                hdatos.Add("@Nombre", BEoEtiqueta.Nombre);
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
