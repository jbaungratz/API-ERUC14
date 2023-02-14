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
            {               
                optionsBuilder.UseSqlServer("Data Source = DESKTOP-T0IARII\\SQLEXPRESS; initial catalog = dbExoAPI; User Id = sa; Password = 1459");
            }
        }

        public DbSet<Projetos> Projeto { get; set; }
    }
} 
