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
    public class MPPCuerpo
    {
       
        public List<BECuerpoEstado> ListarCuerpoEstado()
        {
            string consulta;
            Hashtable hdatos = new Hashtable();

            consulta = "sp_ListarCuerpoEstados";

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, null);

            List<BECuerpoEstado> ListaCuerpoEstados= new List<BECuerpoEstado>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BECuerpoEstado oEstadoCuerpo = new BECuerpoEstado();
                    oEstadoCuerpo.Codigo = Convert.ToInt32(Item["Codigo"]);
                    oEstadoCuerpo.Estado = Item["Estado"].ToString();
                    ListaCuerpoEstados.Add(oEstadoCuerpo);
                }
                return ListaCuerpoEstados;
            }
            return null;

        }


        public void MoverASala2(BEExpediente BEoExpediente) //actualiza el codigo de caja(sala2) en cada cuerpo
        {
            try
            {
                MPPCaja MPPoCaja = new MPPCaja();
                int codigoCajaSala2 = MPPoCaja.TraerCodigoCajaSala2();
                string consulta;
                Hashtable hdatos = new Hashtable();

                Persistencia oDatos = new Persistencia();
                consulta = "sp_MoverASala2";
                foreach (var cuerpo in BEoExpediente.Cuerpos)
                {
                    hdatos.Add("@Codigo_caja", codigoCajaSala2);
                    hdatos.Add("@Codigo_expediente", BEoExpediente.Codigo);
                    oDatos.Escribir(consulta, hdatos);
                    hdatos.Clear();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        
        }

        
    }
}
