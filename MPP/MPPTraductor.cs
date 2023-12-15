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
    public class MPPTraductor
    {
        public static IList<BEIdioma> ObtenerIdiomas()
        {

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            List<BEIdioma> ListaIdioma = new List<BEIdioma>();
        
            DS = oDatos.Leer("sp_TraerIdiomas",null);
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEIdioma oIdioma = new BEIdioma();
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre"].ToString();
                    oIdioma.Default = Convert.ToBoolean(Item["Idioma_default"]);
                    ListaIdioma.Add(oIdioma);
                }
                return ListaIdioma;
            }
            else
            {
                return ListaIdioma;
            }

        }

        public static BEIdioma ObtenerIdiomaDefault()
        {
            return ObtenerIdiomas().Where(i => i.Default).FirstOrDefault();
        }

        public static IDictionary<string, BETraduccion> ObtenerTraducciones(BEIdioma idioma = null)
        {
            //si no hay idioma definido, traigo el idioma por default
            if (idioma == null)
            {
                idioma = ObtenerIdiomaDefault();
            }
            Persistencia oDatos = new Persistencia();
            IDictionary<string, BETraduccion> Traducciones = new Dictionary<string, BETraduccion>(); //lista clave valor tiene un string = nombre de etiqueta y un objeto traduccion que tiene un id, ub obj etiqueta y un texto
            Hashtable Hdatos = new Hashtable();
            DataSet DS = new DataSet();


            Hdatos.Add("@Id_idioma", idioma.Id);
            DS = oDatos.Leer("sp_Traducciones", Hdatos);


            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {

                    var etiqueta = Item["Nombre_etiqueta"].ToString();

                    Traducciones.Add(etiqueta,
                     new BETraduccion()
                     {

                         Texto = Item["Traduccion_Traduccion"].ToString(), //tradu

                         Etiqueta = new BEEtiqueta()
                         {
                             Id = Convert.ToInt32(Item["Id_etiqueta"]),
                             Nombre = Item["Nombre_etiqueta"].ToString()
                         }

                     });
                }
                return Traducciones;
            }
            else
            {
                return Traducciones;
            }

        }
     
        public void Alta(BETraduccion BEoTraduccion){
            try
            {
                string consulta;
                consulta = "sp_AltaTraduccion";
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Id_etiqueta", BEoTraduccion.Etiqueta.Id);
                hdatos.Add("@Id_idioma", BEoTraduccion.Id);
                hdatos.Add("@Texto", BEoTraduccion.Texto);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }
        public void Baja(BETraduccion BEoTraduccion){
            try
            {
                string consulta;
                consulta = "sp_BajaTraduccion";
                Hashtable hdatos = new Hashtable();
                hdatos.Add("@Id_idioma", BEoTraduccion.Id);
                hdatos.Add("@Id_etiqueta", BEoTraduccion.Etiqueta.Id);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void Modificacion(BETraduccion BEoTraduccion)
        {
            try
            {
                string consulta;
                consulta = "sp_ModificarTraduccion";
                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Id_etiqueta", BEoTraduccion.Etiqueta.Id);
                hdatos.Add("@Id_idioma", BEoTraduccion.Id);
                hdatos.Add("@Texto", BEoTraduccion.Texto);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
         
        }
        public List<BETraduccion> ListarTraducciones()
        {
            Persistencia oDatos = new Persistencia();

            DataSet DS = new DataSet();

            List<BETraduccion> ListaTraducciones = new List<BETraduccion>();

            DS = oDatos.Leer("sp_Listar_traducciones", null);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BETraduccion oTraduccion = new BETraduccion();
                    oTraduccion.Id = Convert.ToInt32(Item["Id_idioma"]); //guardo en Id de traduccion el id de idioma
                    BEEtiqueta BEoEtiqueta = new BEEtiqueta();
                    BEoEtiqueta.Id = Convert.ToInt32(Item["Id_etiqueta"]);
                    BEoEtiqueta.Nombre = Item["Nombre"].ToString();
                    oTraduccion.Etiqueta = BEoEtiqueta;
                    oTraduccion.Texto = Item["Traduccion"].ToString();
                    ListaTraducciones.Add(oTraduccion);
                }
                return ListaTraducciones;
            }
            else
            {
                return null;
            }
        }


    }
}
