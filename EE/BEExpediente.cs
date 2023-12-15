using System;
using System.Collections.Generic;

namespace BE
{
    public class BEExpediente : BEEntidad
    {
        private BEExpedienteEstado _estado;
        private BEArea _area;
        private List<BECuerpo> _cuerpos;

        public string Nro_expediente { get; set; }
        public string Nro_gde_electronico { get; set; }
        public DateTime Fecha_modificado { get; set; }
        public string Observaciones { get; set; }

        public BEExpediente(BEExpedienteEstado EstadoParam, BEArea AreaParam, string Nro_expedienteParam, string Nro_gde_electronicoParam, DateTime Fecha_modificadoParam, string ObservacionesParam)
        {
            _estado = EstadoParam;

            _area = AreaParam;

            Nro_expediente = Nro_expedienteParam;

            Nro_gde_electronico = Nro_gde_electronicoParam;

            Fecha_modificado = Fecha_modificadoParam;

            Observaciones = ObservacionesParam;

            _cuerpos = new List<BECuerpo>();
        }

        public BEExpediente()
        {
            _cuerpos = new List<BECuerpo>();
        }

        public void AgregarCuerpo(BECuerpoEstado oCuerpoEstado, BECaja oCaja, int Nro_cuerpo, int Fojas, int Hojas, string Observaciones)
        {
            _cuerpos.Add(new BECuerpo(oCuerpoEstado, oCaja, Nro_cuerpo, Fojas, Hojas, Observaciones));
        }

        public void LimpiarLista()
        {
            _cuerpos.Clear();
        }

        public BEExpedienteEstado Estado
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

        public BEArea Area
        {
            get
            {
                return _area;
            }
            set
            {
                _area = value;
            }
        }

        public IReadOnlyCollection<BECuerpo> Cuerpos
        {
            get
            {
                return _cuerpos.AsReadOnly();
            }
        }

        public override string ToString()
        {
            return $"{Nro_expediente}";
        }

        //public BERemitoIngreso RemitoIngreso { get; set; } //ESTE REMITO AL FINAL no va
    }
}