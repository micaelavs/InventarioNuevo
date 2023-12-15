using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BE
{
    public class BECaja: BEEntidad
    {
        public int Sala { get; set; }
        public double Disponible { get; set; } 
        public int Capacidad { get; set; }

        public override string ToString()
        {
            return "Nº "+Codigo+ " Sala: " +Sala+" ( Disp: "+Disponible+" - Cap: "+Capacidad+")" ;

        }
    }
}
