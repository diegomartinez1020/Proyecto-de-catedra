using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Guia_8___DSP.Models
{
    public class Datos
    {
        public List<Datos> DatosOfertas { get; set; }
        public String sNombreCategoria { get; set; }
        public String nIdOferta { get; set; }
        public String sTituloOferta { get; set; }
        public String nTipoContrato { get; set; }
        public String nTipoJornada { get; set; }
        public String nTipoLocalidad { get; set; }
        public String fSalario { get; set; }
        public String dFechaPublicacion { get; set; }
        public String dFechaContratacion { get; set; }
        public String sNombreEmpresa { get; set; }
        public String sNombreMunicipio { get; set; }
        public String sDescripcion { get; set; }
        public String nVacantes { get; set; }
        public string nIdLocalidad { get; set; }
        public string nIdCategoria { get; set; }
        public string nIdEmpresa { get; set; }
    }

    public class Candidato
    {
        public string nombreCandidato { get; set; }
        public string telefonoCandidato { get; set; }
        public string correoCandidato { get; set; }
        public string ubicacionCandidato { get; set; }
        public string fechaNacimiento { get; set; }
        public string conocimiento { get; set; }
    }

    public class Empleador
    {
        public string nombresEmpleador { get; set; }
        public string telefonoEmpleador { get; set; }
        public string correoEmpleador { get; set; }
        public string ubicacion { get; set; }
        public string fechaNacimiento { get; set; }
        public string empresa { get; set; }
    }
}