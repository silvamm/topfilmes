/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.dao;

import java.util.List;
import mobi.stos.model.Filme;

/**
 *
 * @author Matheus
 */
public interface FilmeDAO {

    public void salvarFilme(Filme filme);

    public List<Filme> getAllFilmes();

    public Filme getFilmePorId(Long filmeId);

    public void deletarFilme(Filme filme);
    
}
