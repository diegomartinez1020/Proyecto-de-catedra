using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace SitioWebdeSUCARNET.Models
{
    public class Empresa
    {
        public List<SelectListItem> Empresas { get; set; }
        public int nIdEmpresa;
        public string sNombreEmpresa;
        public string sPathImage;
        public string sDescripcion;
        public string sTelefono;
        public string sDireccion;
        public string sEmail;
    }
}