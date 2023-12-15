using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public enum TipoPermiso: int
    {   
        ConfiguracionPerfiles=1,
        AdminIngreso_EgresoMasivo=2,
        AdminDeServicios=3,
        Remitos = 4,
        GestionExpedientes = 5,
        Por_Documento = 6,
        Bitacora = 7,
        BuckupYRestore = 8,
    }
}
