using ExoAPI.Contexts;
using ExoAPI.Models;
using ExoAPI.Repositories;

namespace ExoAPI.Repositories
{
    public class ProjetoRepository
    {
        private readonly dbExoAPIContext _context;

        public ProjetoRepository(dbExoAPIContext context) 
        {
            _context = context;
        }

        public List<Projetos> Listar()
        {
            return _context.Projeto.ToList();
        }

        public Projetos BuscarPorId(int id) 
        {
            return _context.Projeto.Find(id);
        }

        public void Cadastrar(Projetos projeto) 
        {
            _context.Projeto.Add(projeto);
            _context.SaveChanges();
        } 

        public void Atualizar(int id, Projetos projeto) 
        {
            Projetos projetoBuscado = _context.Projeto.Find(id);
            if(projetoBuscado != null ) 
            {
                projetoBuscado.Titulo = projeto.Titulo;
                projetoBuscado.Status = projeto.Status;
                projetoBuscado.Data_De_Inicio = projeto.Data_De_Inicio;
                projetoBuscado.Area = projeto.Area;
            }

            _context.Projeto.Update(projetoBuscado);
            _context.SaveChanges();


        }

        public void Deletar(int id)
        {
            Projetos projeto = _context.Projeto.Find(id);
            _context.Projeto.Remove(projeto);
            _context.SaveChanges();
        }
    }
}
