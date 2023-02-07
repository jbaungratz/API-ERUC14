using Microsoft.EntityFrameworkCore;
using ExoAPI.Models;

namespace ExoAPI.Contexts
{
    public class dbExoAPIContext: DbContext
    {
        public dbExoAPIContext() 
        {
        }

        public dbExoAPIContext(DbContextOptions<dbExoAPIContext> options) : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if(!optionsBuilder.IsConfigured)
            {               //; Password = vip12345
                optionsBuilder.UseSqlServer("Data Source = DESKTOP-T0IARII\\SQLEXPRESS; initial catalog = dbExoAPI; User Id = sa");
            }
        }

        public DbSet<Projeto> Projetos { get; set; }
    }
} 
