/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.controller;

import mobi.stos.model.Usuario;
import mobi.stos.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Matheus
 */

@Controller
public class LoginController {
    
    @Autowired
    private UsuarioService usuarioService;
    
    @RequestMapping(value = "/")
    public String paginaInicial(Model model){
        Usuario usuario = new Usuario();
        model.addAttribute(usuario);
        FilmeController.ENTRADA = false;
        return "login";
    }
    
    @RequestMapping(value = "/login")
    public String paginaInicialSair(Model model){
        Usuario usuario = new Usuario();
        model.addAttribute(usuario);
        FilmeController.ENTRADA = false;
        return "login";
    }
    
    
}
