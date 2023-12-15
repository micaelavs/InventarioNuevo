using BE;
using MPP;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BLLPermiso
    {
        MPPPermiso _permisos;

        public BLLPermiso()
        {
            _permisos = new MPPPermiso();
        }

        public bool Existe(BEComponente c, int id)
        {
            bool existe = false;

            if (c.Id.Equals(id))
                existe = true;
            else

                foreach (var item in c.Hijos)
                {

                    existe = Existe(item, id);
                    if (existe) return true;
                }

            return existe;

        }

        public Array GetAllPermission()
        {
            return _permisos.GetAllPermission();
        }

        public BEComponente GuardarComponente(BEComponente p, bool esfamilia)
        {
            try
            {
                return _permisos.GuardarComponente(p, esfamilia);
            }
            catch (Exception ex)
            {

                throw ex;
            }
            
        }

        public void GuardarFamilia(BEFamilia c)
        {
            try
            {
                _permisos.GuardarFamilia(c);
            }
            catch (Exception ex)
            {

                throw ex;
            }
           
        }

        public IList<BEPatente> GetAllPatentes()
        {
            return _permisos.GetAllPatentes();
        }

        public IList<BEFamilia> GetAllFamilias()
        {
            return _permisos.GetAllFamilias();
        }

        public IList<BEComponente> GetAll(string familia)
        {
            return _permisos.GetAll(familia);

        }

        public void FillUserComponents(BEUsuario u)
        {
            _permisos.FillUserComponents(u);

        }

        public void FillFamilyComponents(BEFamilia familia)
        {
            _permisos.FillFamilyComponents(familia);
        }


        public void ExistePatente(BEPatente p)
        {
            var todasLasPatentes = this.GetAllPatentes();
            if (todasLasPatentes.Where(x => x.Nombre == p.Nombre).Any())
            {
               throw new Exception("Ya existe la Pantente ingresada");
            }
        }

        public void ExisteFamilia(BEFamilia f)
        {
            var todasLasPatentes = this.GetAllFamilias();
            if (todasLasPatentes.Where(x => x.Nombre == f.Nombre).Any())
            {
                throw new Exception("Ya existe la Familia ingresada");
            }
        }


    }
}
