using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Guia_8___DSP.Models;


namespace Guia_8___DSP.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login
        public ActionResult Index()
        {
            conexion obj = new conexion();
            return View();
        }
    }
}