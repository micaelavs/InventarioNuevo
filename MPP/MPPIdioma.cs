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
    public class MPPIdioma
    {
        public List<BEIdioma> ListarIdiomas()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BEIdioma> ListaIdioma = new List<BEIdioma>();

            DS = oDatos.Leer("sp_Listar_idiomas", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEIdioma oBEIdioma = new BEIdioma();
                    oBEIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oBEIdioma.Nombre = Item["Nombre"].ToString();
                    oBEIdioma.Default = Convert.ToBoolean(Item["Idioma_default"]);
                    ListaIdioma.Add(oBEIdioma);
                }

                return ListaIdioma;
            }
            else
            {
                return null;
            }
        }
     
        public void Alta(BEIdioma BEoIdioma)
        {
            try
            {
                string consulta;
                consulta = "sp_AltaIdioma";
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Nombre", BEoIdioma.Nombre);
                hdatos.Add("@Idioma_default", BEoIdioma.Default);
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           

        }

        public void Modificacion(BEIdioma BEoIdioma)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarIdioma";
                Hashtable hdatos = new Hashtable();
                if (BEoIdioma.Id != 0)
                {
                    hdatos.Add("@Id_idioma", BEoIdioma.Id);
                }
                hdatos.Add("@Nombre", BEoIdioma.Nombre);
                hdatos.Add("@Idioma_default", BEoIdioma.Default);
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }

        public void Baja(BEIdioma BEoIdioma)
        {
            try
            {
                string consulta;
                consulta = "sp_BajaIdioma";
                Hashtable hdatos = new Hashtable();


                if (BEoIdioma.Id != 0) // si existe ya el id
                {
                    hdatos.Add("@Id_idioma", BEoIdioma.Id);
                }
                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           

        }

        public BEIdioma BuscarIdiomaPorId(int id)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_BuscarIdiomaPorId";
            hdatos.Add("@Id", id);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            BEIdioma oIdioma = new BEIdioma();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre"].ToString();
                    //oIdioma.Default = Convert.ToBoolean(Item["Default"]);

                }
                return oIdioma;
            }
            else
            {
                return oIdioma;
            }

        }
    }
}
