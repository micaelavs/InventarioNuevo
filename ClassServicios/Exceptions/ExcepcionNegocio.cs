using System;

namespace ClassServicios.Exceptions
{
    public class ExcepcionNegocio : Exception
    {
        public ExcepcionNegocio(string message) : base(message)
        {
        }
    }
}