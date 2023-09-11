using EFCoreTablePerHierarchyInheritance.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EFCoreTablePerHierarchyInheritance.Controllers
{
    public class MotorcyclesController : Controller
    {
        private readonly MyApplicationContext _context;

        public MotorcyclesController(MyApplicationContext context)
        {
            _context = context;
        }


        [HttpGet]
        public IActionResult Index()
        {
            var motorcycles = _context.Vehicles.OfType<Motorcycle>().AsNoTracking().ToList();
            return View(motorcycles);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Motorcycle motorModel)
        {
            if (ModelState.IsValid)
            {
                _context.Vehicles.Add(motorModel);
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(motorModel);
        }
    }
}
