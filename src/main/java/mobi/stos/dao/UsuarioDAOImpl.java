/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.dao;

import javax.servlet.ServletException;
import mobi.stos.model.Usuario;
import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Matheus
 */

@Repository
public class UsuarioDAOImpl implements UsuarioDAO{

    
    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public boolean existeUsuario(Usuario usuario) {
        
        Usuario pegandoUsuario =  (Usuario) sessionFactory.getCurrentSession()
                    .createQuery("FROM Usuario u WHERE u.login=:login  and u.senha=:senha ")
                    .setParameter("login", usuario.getLogin())
                    .setParameter("senha", usuario.getSenha())
                    .uniqueResult();
        
        return pegandoUsuario != null;
    }
    
}
