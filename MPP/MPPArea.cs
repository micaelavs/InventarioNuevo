using BE;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassServicios;

namespace MPP
{
    public class MPPArea
    {
        public List<BEArea> ListarAreas()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEArea> ListaArea = new List<BEArea>();

            DS = oDatos.Leer("sp_Listar_areas", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEArea oArea = new BEArea();
                    oArea.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oArea.Nombre = Item["Nombre"].ToString();
                    ListaArea.Add(oArea);
                }

                return ListaArea;
            }
            else
            {
                return null;
            }
        }
    
        public void Alta(BEArea BEoArea)
        {
            try
            {
                string consulta;
                consulta = "sp_AltaArea";
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Nombre", BEoArea.Nombre);
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          

        }
        public void Baja(BEArea BEoArea)
        {
            try
            {
                string consulta;
                consulta = "sp_BajaArea";
                Hashtable hdatos = new Hashtable();
                if (BEoArea.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoArea.Codigo);
                }
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void Modificacion(BEArea BEoArea)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarArea";
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                if (BEoArea.Codigo != 0) 
                {
                    hdatos.Add("@Codigo", BEoArea.Codigo);
                }

                hdatos.Add("@Nombre", BEoArea.Nombre);
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
    }
}
