using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Servicios
{
    public class SingletonSesion
    {
        private static Sesion _instancia;

        public static Sesion Instancia
        {
            get
            {
                {
                    if (_instancia == null)
                        _instancia = new Sesion();
                }

                return _instancia;
            }
        }

        private SingletonSesion() //asegura que no puedan crear la instancia desde afuera y garantiza que sea unica
        {

        }
    }
}
