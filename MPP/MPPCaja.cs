using BE;
using ClassServicios;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MPP
{
    public class MPPCaja
    {
        public List<BECaja> ListarCajas()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarCajas";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BECaja> ListaCaja = new List<BECaja>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    if (Convert.ToInt32(Item["Sala"]) != 2)
                    {
                        BECaja oCaja = new BECaja();
                        oCaja.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oCaja.Sala = Convert.ToInt32(Item["Sala"]);
                        oCaja.Capacidad = Convert.ToInt32(Item["Capacidad"]);
                        oCaja.Disponible = Convert.ToDouble(Item["Disponible"]);
                        ListaCaja.Add(oCaja);
                    }

                }
                return ListaCaja;
            }
            return null;

        }

        public List<BECaja> ListarCajasSala2()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarCajas";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BECaja> ListaCaja = new List<BECaja>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows) 
                {
                    if (Convert.ToInt32(Item["Sala"]) == 2)
                    {
                        BECaja oCaja = new BECaja();
                        oCaja.Codigo = Convert.ToInt32(Item["Codigo"]);
                        oCaja.Sala = Convert.ToInt32(Item["Sala"]);
                        oCaja.Capacidad = Convert.ToInt32(Item["Capacidad"]);
                        oCaja.Disponible = Convert.ToDouble(Item["Disponible"]);
                        ListaCaja.Add(oCaja);
                    }

                }
                return ListaCaja;
            }
            return null;

        }
        public int TraerCodigoCajaSala2()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_CodigoCajaSala2";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            BECaja Caja = new BECaja();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    Caja.Codigo = Convert.ToInt32(Item["Codigo"]);
                }
                return Caja.Codigo;
            }
            return 0;
        }

        public void ActualizarDisponible(BECaja oCaja)
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "sp_ActualizarDisponibleCaja";
                hdatos.Add("@Codigo", oCaja.Codigo);
                hdatos.Add("@Disponible", oCaja.Disponible);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public void LiberarEspacio(int CodigoCaja, int Valor)
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "sp_LiberarEspacio";
                hdatos.Add("@Codigo_caja", CodigoCaja);
                hdatos.Add("@valor", Valor);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }
        public void QuitarEspacioSala2(int CodigoSala, int Valor)
        {
            try
            {
                string consulta;
                Hashtable hdatos = new Hashtable();

                consulta = "sp_QuitarEspacioSala2";
                hdatos.Add("@Codigo_sala", CodigoSala);
                hdatos.Add("@valor", Valor);

                Persistencia oDatos = new Persistencia();
                oDatos.Escribir(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public double TraerDisponibilidad(int CodigoCaja)
        {
            string consulta;
            Hashtable hdatos = new Hashtable();
            Persistencia oDatos = new Persistencia();
            consulta = "sp_TraerDisponibilidadCaja";
            hdatos.Add("@Codigo_caja", CodigoCaja);
            DataSet DS = new DataSet();
            DS = oDatos.Leer(consulta, hdatos);
            BECaja oCaja = new BECaja();
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    oCaja.Disponible = Convert.ToInt32(Item["Disponible"]);
                }

            }
            return oCaja.Disponible;
        }

    }
}
