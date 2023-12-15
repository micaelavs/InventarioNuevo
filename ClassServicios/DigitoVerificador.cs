using BE;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ClassServicios
{
    public class DigitoVerificador
    {
        public static bool BanderaDigito = true; //para bloquear las pestañas
    
        public static long DVCalcularDVH(object Objeto) //calculo digito veridicador horizontal
        {
            string TipoObj;
            string ClaveStr;
            string ClaveHash;

            try
            {
                TipoObj = Objeto.GetType().Name;
                //Usuario
                if (TipoObj == "BEUsuario")
                {
                    BEUsuario oUsuario = Objeto as BEUsuario;
                    ClaveStr = oUsuario.Codigo.ToString() + oUsuario.Nombre.ToString() + oUsuario.Apellido + oUsuario.Dni.ToString() + oUsuario.Nombre_usuario.ToString() + oUsuario.Email.ToString() + oUsuario.Contrasenia.ToString() +
                         oUsuario.Idioma.Id.ToString() + oUsuario.Idioma.Nombre.ToString() + oUsuario.Activo.ToString();
                    ClaveHash = Servicios.Encriptador.AplicarHash(ClaveStr); //lo encripto

                    long Acum = 0;
                    foreach (char letra in ClaveHash)
                    {

                        Acum += (long)letra; //por cada char lo guardo en el acumulador
                    }

                    return Acum;

                }
                return 0;
            }
            catch (Exception ex)
            {
                throw ex;
                
            }
        }
        public static void DVActualizarDVH(int IdFila, long Acum, string NomTabla, string NomColumnaWhere) 
        {

            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "DVActualizarDVH";
                hdatos.Add("@NombreTabla", NomTabla);
                hdatos.Add("@Codigo", IdFila); //Codigo que querés modificar
                hdatos.Add("@ValorAcum", Acum);
                hdatos.Add("@NomColumna", NomColumnaWhere);


                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
                DVActualizarDVV(NomTabla);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          

        }

        public static void DVCargarDVH(int IdFila, long Acum, string NomTabla, string NomColumnaWhere)
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();
                Persistencia oDatos = new Persistencia();
                consulta = "DVActualizarDVH"; //el registro ya lo tengo quda actualizar el dvh
                hdatos.Add("@NombreTabla", NomTabla);
                hdatos.Add("@Codigo", IdFila); //Codigo que querés modificar
                hdatos.Add("@ValorAcum", Acum);
                hdatos.Add("@NomColumna", NomColumnaWhere);
                oDatos.Escribir(consulta, hdatos);
                DVCargarDVV(NomTabla);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
          
        }
            
        public static void DVCargarDVV(string NomTabla) // por primera vez
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();
                long unDVH = new long();
                consulta = "DVInsertarDVV"; //debo insertar valor segun la tabla q sea
                unDVH = DVCalcularDVV(NomTabla); //aca calculo, es decir traigo la suma
                hdatos.Add("@NombreTabla", NomTabla);
                hdatos.Add("@ValorDVV", unDVH);
                Persistencia oDatos = new Persistencia();
                if (unDVH == 0)
                    throw new Exception("El Digito Verificador Horizantal es cero!");

                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }


        public static void DVActualizarDVV(string NomTabla) 
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();
                long unDVH = new long();
                consulta = "DVActualizarDVV";
                unDVH = DVCalcularDVV(NomTabla);
                hdatos.Add("@NombreTabla", NomTabla);
                hdatos.Add("@ValorDVV", unDVH);
                Persistencia oDatos = new Persistencia();
                if (unDVH == 0)
                    throw new Exception("El digitoVH es cero");

                    oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }


        public static long DVCalcularDVV(string NomTabla) 
        {
            string consulta;
            Hashtable hdatos = new Hashtable();
            consulta = "DVCalcularDVV";
            hdatos.Add("@NombreTabla", NomTabla);
            long unDVH = new long();
            unDVH = 0;
          
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    
                    unDVH = (long)Item["Dvh"];
                    

                }
                return unDVH;
            }
            return unDVH;
        }

        public static long DVTraerDVV(string NomTabla) 
        {

            string consulta;
            Hashtable hdatos = new Hashtable();
            consulta = "DVTraerDVV";
            hdatos.Add("@NombreTabla", NomTabla);
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            long unDVV = new long();
            unDVV = 0;
            DS = oDatos.Leer(consulta, hdatos); 
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {

                    unDVV = (long)Item["ValorDigitoVV"];

                }
                return unDVV;
            }
            return unDVV;
        }

        public static bool DVVerificarIntegridadBD()
        {

            try
            {
                //Usuario
                string consulta;
                consulta = "sp_TodosLosUsuariosActivosyNoActivos";
                long Acum = new long();

                List<long> LisDVHs = new List<long>();
                List<BEUsuario> ListaUsuarios = new List<BEUsuario>();
                DataSet DS = new DataSet();
                Persistencia oDatos = new Persistencia();
                DS = oDatos.Leer(consulta, null);
                if (DS.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow Item in DS.Tables[0].Rows)
                    {
                        BEUsuario oUsuario = new BEUsuario();
                        oUsuario.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oUsuario.Nombre = Item["Nombre"].ToString();
                        oUsuario.Apellido = Item["Apellido"].ToString();
                        oUsuario.Dni = Convert.ToInt32(Item["Dni"]);
                        oUsuario.Nombre_usuario = Item["Nombre_usuario"].ToString();
                        oUsuario.Email = Item["Email"].ToString();
                        oUsuario.Contrasenia = Item["Contrasenia"].ToString();
                        BEIdioma oIdioma = new BEIdioma();
                        oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                        oIdioma.Nombre = Item["Nombre_Idioma"].ToString();
                        oUsuario.Idioma = oIdioma;
                        oUsuario.Activo = Convert.ToBoolean(Item["Activo"]);
                        oUsuario.Dvh = (long)Item["Dvh"];
                        ListaUsuarios.Add(oUsuario);
                    }
                }
                foreach (var usuario in ListaUsuarios)
                {
                    LisDVHs.Add(DVCalcularDVH(usuario)); //en la lista esta cada uno de los horizontales calculados nuevamente
                }

                Acum = 0;
                foreach (var valor in LisDVHs) //por cada valor en la lista de cada digito horizontal lo voy sumando para obtener el vertical
                {
                    Acum += valor;
                }
                long DVVBD = DVTraerDVV("Usuario"); //traigo el digito vertical de la base

                if (Acum == DVVBD)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
                
         
        }
    }
}
