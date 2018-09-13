/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.dao;

import mobi.stos.model.Usuario;

/**
 *
 * @author Matheus
 */
public interface UsuarioDAO {


    public boolean existeUsuario(Usuario usuario);
    
}
