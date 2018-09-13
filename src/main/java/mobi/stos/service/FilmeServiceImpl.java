/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.service;

import java.util.List;
import javax.transaction.Transactional;
import mobi.stos.dao.FilmeDAO;
import mobi.stos.model.Filme;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Matheus
 */
@Service
public class FilmeServiceImpl implements FilmeService{
    
    @Autowired
    private FilmeDAO filmeDAO;

    @Override @Transactional
    public void salvarFilme(Filme filme) {
        filmeDAO.salvarFilme(filme);
    }

    @Override @Transactional
    public List<Filme> getAllFilmes() {
        return filmeDAO.getAllFilmes();
    }

    @Override @Transactional
    public Filme getFilmePorId(Long filmeId) {
        return filmeDAO.getFilmePorId(filmeId);
    }

    @Override @Transactional
    public void deletarFilme(Filme filme) {
        filmeDAO.deletarFilme(filme);
    }
    
}
