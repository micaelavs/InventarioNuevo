using BE;
using Servicios;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios
{
    public class Buckup
    {
        public static void Respaldar(string Nombre, string Destino)
        {
            try
            {
                
                Destino = Destino + "\\" + Nombre + ".bak";
                string consulta;
                Persistencia oDatos = new Persistencia();
                Hashtable hdatos = new Hashtable();
                consulta = "sp_BaseDatosRespaldar";
                hdatos.Add("@Nombre", Nombre);
                hdatos.Add("@Destino", Destino);
                oDatos.EscribirST(consulta, hdatos);
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
           
   
        }

        public static void Restaurar(string Nombre, string Ubicacion)
        {
            try
            {
                Persistencia oDatos = new Persistencia();

                string stringPararProcesos = "DECLARE @ProcessId varchar(4) " + Environment.NewLine + "DECLARE CurrentProcesses SCROLL CURSOR FOR" + Environment.NewLine +
                              "select spid from sysprocesses where dbid = (select dbid from sysdatabases where name = 'Inventario_para_Archivo2' ) order by spid " + Environment.NewLine +
                              "FOR READ ONLY" + Environment.NewLine + "OPEN CurrentProcesses" + Environment.NewLine + "FETCH NEXT FROM CurrentProcesses INTO @ProcessId" +
                              Environment.NewLine + "WHILE @@FETCH_STATUS <> -1" + Environment.NewLine + "BEGIN" + Environment.NewLine + "	Exec ('KILL ' +  @ProcessId)" +
                              Environment.NewLine + "	FETCH NEXT FROM CurrentProcesses INTO @ProcessId" + Environment.NewLine + "                    End" + Environment.NewLine +
                              "CLOSE CurrentProcesses" + Environment.NewLine + "DeAllocate CurrentProcesses";

                string stringRestaurar = "RESTORE DATABASE " + Nombre + " FROM DISK = '" + Ubicacion + "' WITH REPLACE, RECOVERY";

                oDatos.EscribirQueryRestore(stringPararProcesos);
                oDatos.EscribirQueryRestore(stringRestaurar);
            }
            catch (Exception ex)
            {

                throw ex;
            }
         
            

     
            

        }


    }
}
