using Microsoft.EntityFrameworkCore;

namespace EFCoreTablePerHierarchyInheritance.Models
{
    public class MyApplicationContext : DbContext
    {
        public MyApplicationContext(DbContextOptions<MyApplicationContext> options) : base(options)
        {
            
        }

        public DbSet<Vehicle> Vehicles { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Car>();
            modelBuilder.Entity<Motorcycle>(); 
            base.OnModelCreating(modelBuilder);
        }
    }
}
