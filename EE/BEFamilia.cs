using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BEFamilia: BEComponente
    {
        private IList<BEComponente> _hijos;
        public BEFamilia()
        {
            _hijos = new List<BEComponente>();
        }

        public override IList<BEComponente> Hijos
        {
            get
            {
                return _hijos.ToArray();
            }

        }

        public override void VaciarHijos()
        {
            _hijos = new List<BEComponente>();
        }
        public override void AgregarHijo(BEComponente c)
        {
            _hijos.Add(c);
        }
    }
}
