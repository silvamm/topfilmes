/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.service;

import javax.transaction.Transactional;
import mobi.stos.dao.UsuarioDAO;
import mobi.stos.model.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Matheus
 */
@Service
public class UsuarioServiceImpl implements UsuarioService{

    @Autowired
    private UsuarioDAO usuarioDAO;
    

    @Override @Transactional
    public boolean existeUsuario(Usuario usuario) {
        boolean existeUsuario = usuarioDAO.existeUsuario(usuario);
        return existeUsuario;
    }
    
}
