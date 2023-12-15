using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BE;
using ClassServicios;

namespace Servicios
{
    public class Sesion
    {
        private BEUsuario _user { get; set; } 
        
        static IList<IIdiomaObserver> _observers = new List<IIdiomaObserver>(); //la sesion tieene la lista de idioma
        public BEUsuario Usuario
        {
            get
            {
                return _user;
            }
        }


        public void Login(BEUsuario usuario)
        {
            _user = usuario;
        }

        public void Logout()
        {
            _user = null;
          
        }

        public bool IsLogged()
        {
            return _user != null;
        }
         /******************Composite*************************/
        bool isInRole(BEComponente c, TipoPermiso permiso, bool existe) 
        {
            if (c.Permiso.Equals(permiso))
                existe = true;
            else
            {
                foreach (var item in c.Hijos)
                {
                    existe = isInRole(item, permiso, existe);
                    if (existe) return true;
                }



            }

            return existe;
        }

        public bool IsInRole(TipoPermiso permiso)
        {
            bool existe = false;
            foreach (var item in Usuario.Permisos)
            {
                if (item.Permiso.Equals(permiso))
                    return true;
                else
                {
                    existe = isInRole(item, permiso, existe);
                    if (existe) return true;
                }

            }

            return existe;
        }
        /*******************MultiIdioma*******************/
        public static void SuscribirObservador(IIdiomaObserver o)
        {
            _observers.Add(o);
        }
        public static void DesuscribirObservador(IIdiomaObserver o)
        {
            _observers.Remove(o);
        }
        public static void Notificar(BEIdioma idioma) 
        {
            foreach (var o in _observers)
            {
                o.UpdateLanguage(idioma);
            }
        }
        public static void CambiarIdioma(BEIdioma idioma)
        {
            if (SingletonSesion.Instancia != null) 
            {
                SingletonSesion.Instancia.Usuario.Idioma = idioma; //si hay sesion cambio el idioma
                Notificar(idioma);
            }
        }

      
    }
}
