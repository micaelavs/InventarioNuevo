using Servicios;
using System.Collections.Generic;

namespace ClassServicios
{
    public class BitacoraServicio
    {
        // la acciones se pueden cambiar por un enum para limitar errores de tipeo
        // los tipoLog se puede cambiar por un enum para limitar errores de tipeo
        // la entidad usuario no se deberia conocer aca pq sino se esta rompiendo la arquitectura de que SERVICIOS no conozca a BE, aca solo deberia llegar o no el valor primitivo
        public static void CrearLog(string tipoLog, int? usuario, string accion, string mensaje)//Bitacora Eventos
        {
            // aca el store si viene por aca tiene que poder aceptar valores nulos
            // persistencia ahora tiene el metodo estatico de escribir bitacora
            PersistenciaBitacora.EscribirBitacora(
                    tipoLog,
                    SingletonSesion.Instancia.Usuario != null ? usuario : null,
                    accion,
                    mensaje
                    );
        }

        public static List<Bitacora> Listar()
        {
            return PersistenciaBitacora.ListarBitacora();
        }
    }

    public class Bitacora
    {
        public int IdBitacora { get; set; }
        public int? UsuarioCodigo { get; set; }
        public string Accion { get; set; }
        public string TipoLog { get; set; }
        public string Mensaje { get; set; }
    }
}