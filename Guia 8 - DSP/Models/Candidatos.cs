using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Guia_8___DSP.Models
{
    public class Candidato : Usuario
    {
        public List<SelectListItem> CandidatosList { get; set; }
        public int nIdCandidato;
        public string sExperiencia;
    }
}