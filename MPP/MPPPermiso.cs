using BE;
using ClassServicios;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MPP
{
    public class MPPPermiso
    {
        public Array GetAllPermission()
        {
            return Enum.GetValues(typeof(TipoPermiso));
        }

        public BEComponente GuardarComponente(BEComponente componente, bool esfamilia)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable Hdatos = new Hashtable();
                DataSet DS = new DataSet();

                Hdatos.Add("@Nombre", componente.Nombre);

                if (esfamilia)
                { 
                    Hdatos.Add("@Permiso", DBNull.Value);
                }
                else
                {
                    Hdatos.Add("@Permiso", componente.Permiso.ToString());
                }
                oDatos.Escribir("sp_GuardarPermiso", Hdatos); 
                DS = oDatos.Leer("sp_traerUltimoID", null); 
                if (DS.Tables[0].Rows.Count > 0) 
                {
                    foreach (DataRow Item in DS.Tables[0].Rows) 
                    {
                        componente.Id = Convert.ToInt32(Item["Id"]);
                    }
                    return componente;
                }
                else
                {
                    return componente;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
          
        }
        public void GuardarFamilia(BEFamilia familia)
        {
            try
            {
                Persistencia oDatos = new Persistencia();
                Hashtable Hdatos = new Hashtable();

                Hdatos.Add("@Id", familia.Id);
                oDatos.Escribir("sp_borrarPadre", Hdatos);
                foreach (var item in familia.Hijos)
                {
                    Hashtable Hdatos2 = new Hashtable(); 
                    Hdatos2.Add("@Id_Permiso_padre", familia.Id);
                    Hdatos2.Add("@Id_Permiso_hijo", item.Id);
                    oDatos.Escribir("sp_GuardarPadreHijo", Hdatos2);
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
           

        }

        public List<BEPatente> GetAllPatentes()
        {
            
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            List<BEPatente> ListaPatente = new List<BEPatente>();
            

            DS = oDatos.Leer("sp_todasLasPatentes", null);
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEPatente oPatente = new BEPatente();
                    oPatente.Id = Convert.ToInt32(Item["Id"]);
                    oPatente.Nombre = Item["Nombre"].ToString();
                    oPatente.Permiso = (TipoPermiso)Enum.Parse(typeof(TipoPermiso), Item["Permiso"].ToString());
                    ListaPatente.Add(oPatente);
                }
                return ListaPatente;
            }
            else
            {
                return ListaPatente;
            }

        }

        public List<BEFamilia> GetAllFamilias()
        {
            
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            List<BEFamilia> ListaFamilia = new List<BEFamilia>();
           

            DS = oDatos.Leer("sp_todasLasFamilias", null);
            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    BEFamilia oFamilia = new BEFamilia();
                    oFamilia.Id = Convert.ToInt32(Item["Id"]);
                    oFamilia.Nombre = Item["Nombre"].ToString();
                    ListaFamilia.Add(oFamilia);
                }
                return ListaFamilia;
            }
            else
            {
                return ListaFamilia;
            }

        }

        public List<BEComponente> GetAll(string familia)
        {
            var where = "is NULL";

            if (!String.IsNullOrEmpty(familia))
            {
                where = familia;
            }

            Hashtable Hdatos = new Hashtable();
            Hdatos.Add("@familia", where);
            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer("sp_TraerTodo", Hdatos);
            var lista = new List<BEComponente>();

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {
                    int id_padre = 0;
                    if (Item["Id_Permiso_padre"] != DBNull.Value)
                    {
                        id_padre = Convert.ToInt32(Item["Id_Permiso_padre"]);

                    }

                    var id = Convert.ToInt32(Item["Id"]);
                    var nombre = Convert.ToString(Item["Nombre"]);

                    var permiso = string.Empty;
                    if (Item["Permiso"] != DBNull.Value)
                        permiso = Convert.ToString(Item["Permiso"]);


                    BEComponente c;

                    if (string.IsNullOrEmpty(permiso))//usamos este campo para identificar. Solo las patentes van a tener un permiso del sistema relacionado
                        c = new BEFamilia();

                    else
                        c = new BEPatente();

                    c.Id = id;
                    c.Nombre = nombre;
                    if (!string.IsNullOrEmpty(permiso))
                        c.Permiso = (TipoPermiso)Enum.Parse(typeof(TipoPermiso), permiso);

                    var padre = GetComponent(id_padre, lista);

                    if (padre == null)
                    {
                        lista.Add(c);
                    }
                    else
                    {
                        padre.AgregarHijo(c);
                    }
                }
                return lista;

            }

            else
            {
                return lista;
            }

        }

        private BEComponente GetComponent(int id, IList<BEComponente> Lista)
        {
            BEComponente component = Lista != null ? Lista.Where(i => i.Id.Equals(id)).FirstOrDefault() : null;

            if (component == null && Lista != null)
            {
                foreach (var c in Lista)
                {
                    var comp = GetComponent(id, c.Hijos);
                    if (comp != null && comp.Id == id) return comp;
                    else
                    if (comp != null)
                        return GetComponent(id, comp.Hijos);

                }
            }
            return component;
        }

        public void FillUserComponents(BEUsuario usu)//llena los cmponentes al usuario
        {
            string consulta;
            consulta = "sp_TraerPermisosUsuario";
            Hashtable Hdatos = new Hashtable();
            Hdatos.Add("@Id", usu.Codigo);
            usu.Permisos.Clear(); 

            DataSet DS = new DataSet();
            Persistencia oDatos = new Persistencia();
            DS = oDatos.Leer(consulta, Hdatos);

            if (DS.Tables[0].Rows.Count > 0)
            {
                foreach (DataRow Item in DS.Tables[0].Rows)
                {   
                    var idp = Convert.ToInt32(Item["Id"]);
                    var nombrep = Item["Nombre"].ToString();

                    var permisop = String.Empty;
                    if (Item["Permiso"] != DBNull.Value)
                        permisop = Item["Permiso"].ToString();

                    BEComponente oComponente;
                    if (!String.IsNullOrEmpty(permisop))
                    {
                        oComponente = new BEPatente();
                        oComponente.Id = idp;
                        oComponente.Nombre = nombrep;
                        oComponente.Permiso = (TipoPermiso)Enum.Parse(typeof(TipoPermiso), permisop);
                        usu.Permisos.Add(oComponente);
                    }
                    else
                    {
                        oComponente = new BEFamilia();
                        oComponente.Id = idp;
                        oComponente.Nombre = nombrep;

                        var f = GetAll("=" + idp);

                        foreach (var familia in f)
                        {
                            oComponente.AgregarHijo(familia);
                        }
                        usu.Permisos.Add(oComponente);
                    }
                }

            }
        }

        public void FillFamilyComponents(BEFamilia familia)
        {
            familia.VaciarHijos();
            foreach (var item in GetAll("=" + familia.Id))
            {
                familia.AgregarHijo(item);
            }
        }

    }
}
