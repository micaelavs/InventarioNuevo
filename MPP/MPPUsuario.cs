using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using System.Data;
using System.Collections;
using ClassServicios;

namespace MPP
{
    public class MPPUsuario
    {
        public MPPUsuario()
        {
            
        }
        public bool VerificarNombreUsu(string NombreUsu)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();
            consulta = "sp_VerificarNombreUsu";
            hdatos.Add("@Nombre_usuario", NombreUsu);
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool BuscarUsuario(BEUsuario usuario)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();
          
            consulta = "sp_BuscarUsuario";
            hdatos.Add("@Nombre_usuario", usuario.Nombre_usuario);
            hdatos.Add("@Contrasenia", usuario.Contrasenia);
              
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public BEUsuario BuscarUsuarioPorNombre(BEUsuario usuario)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_BuscarUsuarioPorNombre";
            hdatos.Add("@Nombre_usuario", usuario.Nombre_usuario);

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, hdatos);
            BEUsuario oUsu = new BEUsuario();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEIdioma oIdioma = new BEIdioma();
                    oUsu.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oUsu.Nombre = Item["Nombre"].ToString();
                    oUsu.Apellido = Item["Apellido"].ToString();
                    oUsu.Dni = Convert.ToInt32(Item["Dni"]);
                    oUsu.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oUsu.Email = Item["Email"].ToString();
                    oUsu.Contrasenia = Item["Contrasenia"].ToString();
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre_idioma"].ToString();
                    oUsu.Activo = Convert.ToBoolean(Item["Activo"]);
                    oUsu.Idioma = oIdioma;
               
                }
                return oUsu;
            }
            else
            {
                return null;
            }

        }

        public List<BEUsuario> GetAll()
        {
            string consulta;
      
            consulta = "sp_TodosLosUsuarios";
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);
            
            List<BEUsuario> ListaUsuario = new List<BEUsuario>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEUsuario oUsu = new BEUsuario();
                    BEIdioma oIdioma = new BEIdioma();
                    oUsu.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oUsu.Nombre = Item["Nombre"].ToString();
                    oUsu.Apellido = Item["Apellido"].ToString();
                    oUsu.Dni = Convert.ToInt32(Item["Dni"]);
                    oUsu.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oUsu.Email = Item["Email"].ToString();
                    oUsu.Contrasenia = Item["Contrasenia"].ToString();
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre_idioma"].ToString();
                    oUsu.Activo = Convert.ToBoolean(Item["Activo"]);
                    oUsu.Idioma = oIdioma;
                    ListaUsuario.Add(oUsu);
                }
                return ListaUsuario;
            }
            else
            {
                return ListaUsuario;
            }
         
        }
      
        public List<BEUsuario> TraerActivosyNoActivos()
        {
            string consulta;

            consulta = "sp_TodosLosUsuariosActivosyNoActivos";
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEUsuario> ListaUsuario = new List<BEUsuario>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEUsuario oUsu = new BEUsuario();
                    BEIdioma oIdioma = new BEIdioma();
                    oUsu.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oUsu.Nombre = Item["Nombre"].ToString();
                    oUsu.Apellido = Item["Apellido"].ToString();
                    oUsu.Dni = Convert.ToInt32(Item["Dni"]);
                    oUsu.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oUsu.Email = Item["Email"].ToString();
                    oUsu.Contrasenia = Item["Contrasenia"].ToString();
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre_idioma"].ToString();
                    oUsu.Activo = Convert.ToBoolean(Item["Activo"]);
                    oUsu.Idioma = oIdioma;
                    ListaUsuario.Add(oUsu);
                }
                return ListaUsuario;
            }
            else
            {
                return ListaUsuario;
            }

        }
        public void GuardarPermisos(BEUsuario usu)
        {
            try
            {
                Persistencia oDatos = new Persistencia();

                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Codigo_usuario", usu.Codigo);
                oDatos.Escribir("sp_borrarPermisoUsuario", hdatos);

                foreach (var item in usu.Permisos)
                {
                    Hashtable hdatos2 = new Hashtable();
                    hdatos2.Add("@Codigo_usuario", usu.Codigo);
                    hdatos2.Add("@Id_permiso", item.Id);
                    oDatos.Escribir("sp_GuardarPermisoUsuario", hdatos2);
                }
            }
        
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public void Alta(BEUsuario BEoUsuario)
        {
            
            try
            {
                long ResAcum = 0;
                Persistencia oDatos = new Persistencia();
                string consulta;
                consulta = "sp_AltaUsuario";

                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Nombre", BEoUsuario.Nombre);
                hdatos.Add("@Apellido", BEoUsuario.Apellido);
                hdatos.Add("@Dni", BEoUsuario.Dni);
                hdatos.Add("@Nombre_usuario", BEoUsuario.Nombre_usuario);
                hdatos.Add("@Contrasenia", BEoUsuario.Contrasenia);
                hdatos.Add("@Email", BEoUsuario.Email);
                hdatos.Add("@Id_idioma", BEoUsuario.Idioma.Id);

                int indice = oDatos.EscribirReturnIndice(consulta, hdatos);
                BEoUsuario.Codigo = indice;
                BEoUsuario.Activo = true;

                ResAcum = DigitoVerificador.DVCalcularDVH(BEoUsuario);
                if (ResAcum > 0)
                {
                    int longitud = (BEoUsuario.GetType().Name).Length;
                    DigitoVerificador.DVCargarDVH(BEoUsuario.Codigo, ResAcum, (BEoUsuario.GetType().Name).Substring(2, longitud - 2), "Codigo");
                   
                }
               
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
            
        }

        public void Baja(BEUsuario BEoUsuario)
        {
            try
            {
               
                long ResAcum = 0;
                Persistencia oDatos = new Persistencia();
                string consulta;
                consulta = "sp_BajaUsuario";

                Hashtable hdatos = new Hashtable();

                hdatos.Add("@Codigo", BEoUsuario.Codigo); 
                BEoUsuario.Activo = false;
                oDatos.Escribir(consulta, hdatos);
                ResAcum = DigitoVerificador.DVCalcularDVH(BEoUsuario);
                if (ResAcum > 0)
                {
                    int longitud = (BEoUsuario.GetType().Name).Length;
                    DigitoVerificador.DVActualizarDVH(BEoUsuario.Codigo, ResAcum, (BEoUsuario.GetType().Name).Substring(2, longitud - 2), "Codigo"); //cambia 1 a 0 campo Activo
                    
                }
                
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
         
        }
        public void Modificacion(BEUsuario BEoUsuario)
        {
            try
            {
               
                long ResAcum = 0;
                Persistencia oDatos = new Persistencia();
                string consulta;
                consulta = "sp_ModificarUsuario";
                Hashtable hdatos = new Hashtable();

                if (BEoUsuario.Codigo != 0)
                {
                    hdatos.Add("@Codigo", BEoUsuario.Codigo);
                }

                hdatos.Add("@Nombre", BEoUsuario.Nombre); 
                hdatos.Add("@Apellido", BEoUsuario.Apellido);
                hdatos.Add("@Dni", BEoUsuario.Dni);
                hdatos.Add("@Nombre_usuario", BEoUsuario.Nombre_usuario);
                hdatos.Add("@Contrasenia", BEoUsuario.Contrasenia);
                hdatos.Add("@Email", BEoUsuario.Email);
                hdatos.Add("@Id_idioma", BEoUsuario.Idioma.Id);

                oDatos.Escribir(consulta, hdatos);
                ResAcum = DigitoVerificador.DVCalcularDVH(BEoUsuario);
                if (ResAcum > 0)
                {
                    int longitud = (BEoUsuario.GetType().Name).Length;
                    DigitoVerificador.DVActualizarDVH(BEoUsuario.Codigo, ResAcum, (BEoUsuario.GetType().Name).Substring(2, longitud - 2), "Codigo");
                   
                }
            
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
           
        }
        public List<BEUsuario> TodosLosAdmin() //No se si esto lo voy a usar
        {
            string consulta;

            consulta = "sp_UsuariosAdmin";
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BEUsuario> ListaUsuario = new List<BEUsuario>();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEUsuario oUsu = new BEUsuario();
                    BEIdioma oIdioma = new BEIdioma();
                    oUsu.Codigo = Convert.ToInt32(Item["Codigo_usuario"]);
                    oUsu.Nombre = Item["Nombre"].ToString();
                    oUsu.Apellido = Item["Apellido"].ToString();
                    oUsu.Dni = Convert.ToInt32(Item["Dni"]);
                    oUsu.Nombre_usuario = Item["Nombre_usuario"].ToString();
                    oUsu.Email = Item["Email"].ToString();
                    oUsu.Contrasenia = Item["Contrasenia"].ToString();
                    oIdioma.Id = Convert.ToInt32(Item["Id_idioma"]);
                    oIdioma.Nombre = Item["Nombre_idioma"].ToString();
                    oUsu.Activo = Convert.ToBoolean(Item["Activo"]);
                    oUsu.Dvh = (long)Item["Dvh"];
                    oUsu.Idioma = oIdioma;
                    ListaUsuario.Add(oUsu);
                }
                return ListaUsuario;
            }
            else
            {
                return ListaUsuario;
            }

        }

    }
}
