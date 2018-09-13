/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.dao;

import java.util.List;
import mobi.stos.model.Filme;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Matheus
 */
@Repository
public class FilmeDAOImpl implements FilmeDAO{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void salvarFilme(Filme filme) {
        sessionFactory.getCurrentSession().saveOrUpdate(filme);
    }

    @Override
    public List<Filme> getAllFilmes() {
        return sessionFactory.getCurrentSession().createQuery("from Filme").list();
    }

    @Override
    public Filme getFilmePorId(Long filmeId) {
        Filme filme = (Filme) sessionFactory.getCurrentSession().get(Filme.class, filmeId);
        return filme;
    }

    @Override
    public void deletarFilme(Filme filme) {
        sessionFactory.getCurrentSession().delete(filme);
    }
    
}
