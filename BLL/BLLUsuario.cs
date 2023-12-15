using BE;
using ClassServicios;
using ClassServicios.Bitacora;
using MPP;
using Servicios;
using System;
using System.Collections.Generic;

namespace BLL
{
    public class BLLUsuario
    {
        private MPPUsuario _usuarios;
        private BLLBitacora BLLoBitacora;
        private BLLTraductor BLLoTraductor;

        public BLLUsuario()
        {
            _usuarios = new MPPUsuario();
            BLLoBitacora = new BLLBitacora();
            BLLoTraductor = new BLLTraductor();
        }

        public List<BEUsuario> GetAll()
        {
            return _usuarios.GetAll();
        }
        public List<BEUsuario> TraerActivosyNoActivos()
        {
            return _usuarios.TraerActivosyNoActivos();
        }

        public void GuardarPermisos(BEUsuario u)
        {
            try
            {
                _usuarios.GuardarPermisos(u);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        /**************/

        public LoginResult Login(BEUsuario BEoUsuario)
        {
          
                MPPUsuario MPPoUsuHash = new MPPUsuario();

                if (SingletonSesion.Instancia.IsLogged())
                {
                    throw new Exception("Ya hay una sesión iniciada");
                }
                var user = MPPoUsuHash.BuscarUsuarioPorNombre(BEoUsuario);
                if (user == null)
                {
                    throw new LoginException(LoginResult.InvalidUsername); //o si no se encontro el usuario, tira usuario invalido
                }
                // MessageBox.Show(Encriptador.Hash(BEoUsuario.Contrasenia)); solo para ver que da el encriptador
                // MessageBox.Show((user.Contrasenia));
                //Encriptador.Encriptar((textBoxContrasenia.Text).ToString());
                if (!Encriptador.Encriptar(BEoUsuario.Contrasenia.Trim()).Equals(user.Contrasenia.Trim()))
                {
                    throw new LoginException(LoginResult.InvalidPassword); // o tiro password invalido
                }

                if (user.Activo == false)
                {
                    throw new LoginException(LoginResult.UserInactivo);
                }

                else
                {
                    SingletonSesion.Instancia.Login(user);

                    (new MPPPermiso()).FillUserComponents(user); //cargo los patentes y famlia del usuario recien cuando esta logueado y tengo todos sus datos

                    var res = LoginResult.ValidUser;

                    BLLoTraductor.LogeoDeTraducciones(user); //si valida el usuario en el login obtenes las traducciones del idioma del usuario

                    return res;
                }
            
          
        }
        //Cambio esto a servicios
        /*public IDictionary<string, BETraduccion> LogeoDeTraducciones(BEUsuario user)
        {
            return MPPTraductor.ObtenerTraducciones(user.Idioma);
        }*/

        public void Logout()
        {
            try
            {
                if (!SingletonSesion.Instancia.IsLogged())
                {
                    BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Excepcion, "Login", "No hay sesión iniciada");
                    throw new Exception("No hay sesión iniciada");
                }


                SingletonSesion.Instancia.Logout();
                BLLoBitacora.EscribirBitacora(0, "Sin usuario", TipoLog.Evento, "Logout", "Logout correcto");
                Sesion.Notificar(MPPTraductor.ObtenerIdiomaDefault());
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
                                                                   
        }

        public void Alta(BEUsuario oBEUsuario)
        {
            try
            {
                MPPUsuario MPPoUsuario = new MPPUsuario();
                MPPoUsuario.Alta(oBEUsuario);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void Baja(BEUsuario oBEUsuario)
        {
            try
            {
                MPPUsuario MPPoUsuario = new MPPUsuario();
                MPPoUsuario.Baja(oBEUsuario);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void Modificacion(BEUsuario oBEUsuario)
        {
            try
            {
                MPPUsuario MPPoUsuario = new MPPUsuario();
                MPPoUsuario.Modificacion(oBEUsuario);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void VerificarNombreUsu(string NombreUsu)
        {
            MPPUsuario oUsu = new MPPUsuario();
            if (oUsu.VerificarNombreUsu(NombreUsu))
                throw new Exception("El usuario ingresado ya existe");
        }
    }
}