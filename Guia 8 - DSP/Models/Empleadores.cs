using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Guia_8___DSP.Models
{
    public class Empleador : Usuario
    {
   
        public List<SelectListItem> EmpleadoresList { get; set; }
        public int nIdEmpleador;
        public string sEmpresa;
    }
}