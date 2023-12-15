using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEPatente:BEComponente
    {
        public override IList<BEComponente> Hijos
        {
            get
            {
                return new List<BEComponente>();
            }

        }

        public override void AgregarHijo(BEComponente c)
        {
            //patente no tiene hijo es la clase más atómica
        }

        public override void VaciarHijos()
        {
            //por lo mismo, no tiene hijos
        }
    }
}
