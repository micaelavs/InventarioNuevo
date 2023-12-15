using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEUsuario: BEPersona
    {
        #region "Propiedades"
        public string Nombre_usuario { get; set; }
        public string Email { get; set; }
        public string Contrasenia { get; set; }
        public BEIdioma Idioma { get; set; } 
        public bool Activo { get; set; }
        public long Dvh { get; set; }
        #endregion
        List<BEComponente> _permisos; 
        public BEUsuario() 
        {
            _permisos = new List<BEComponente>();
        }
        public List<BEComponente> Permisos 
        {
            get
            {
                return _permisos;
            }
        }
                
        public override string ToString()
        {
            return $"{Nombre_usuario}";

        }


    }
}
