using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BECuerpo : BEEntidad
    {

        private BECuerpoEstado _estado;

        private BECaja _caja;

        public int Nro_cuerpo { get; set; }
        public int Fojas { get; set; }
        public int Hojas { get; set; }

        public string Observaciones { get; set; }

        public BECuerpo(BECuerpoEstado EstadoParam, BECaja CajaParam, int Nro_cuerpoParam, int FojasParam, int HojasParam, string ObservacionesParam)
        {
            _estado = EstadoParam;

            _caja = CajaParam;

            Nro_cuerpo = Nro_cuerpoParam;

            Fojas = FojasParam;

            Hojas = HojasParam;

            Observaciones = ObservacionesParam;
        }

        public BECuerpo()
        {
        }

   
        public BECuerpoEstado Estado
        {
            get
            {
                return _estado;
            }
            set
            {
                _estado = value;
            }

        }

        public BECaja Caja
        {
            get
            {
                return _caja;
            }
            set
            {
                _caja = value;
            }

        }


    }
}
