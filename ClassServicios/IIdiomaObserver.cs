﻿using BE;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassServicios
{
    public interface IIdiomaObserver
    {
        void UpdateLanguage(BEIdioma idioma);
    }
}
