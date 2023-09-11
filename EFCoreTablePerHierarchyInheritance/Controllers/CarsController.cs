using EFCoreTablePerHierarchyInheritance.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace EFCoreTablePerHierarchyInheritance.Controllers
{
    public class CarsController : Controller
    {
        private readonly MyApplicationContext _context;

        public CarsController(MyApplicationContext context)
        {
            _context = context;
        }


        [HttpGet]
        public IActionResult Index()
        {
            var cars = _context.Vehicles.OfType<Car>().AsNoTracking().ToList();
            return View(cars);
        }

        [HttpGet]
        public IActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Car carModel)
        {
            if (ModelState.IsValid)
            {
                _context.Vehicles.Add(carModel);
                _context.SaveChanges();

                return RedirectToAction("Index");
            }

            return View(carModel);
        }
    }
}
