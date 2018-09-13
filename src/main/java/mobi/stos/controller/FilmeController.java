/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mobi.stos.controller;

import java.util.List;
import mobi.stos.model.Filme;
import mobi.stos.model.Usuario;
import mobi.stos.service.FilmeService;
import mobi.stos.service.UsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Matheus
 */

@Controller
public class FilmeController {
    
    @Autowired
    private FilmeService filmeService;
    
    @Autowired
    private UsuarioService usuarioService;
    
    public static boolean ENTRADA;
    
    
    @RequestMapping(value ="/adicionar")
    public String paginaAdicionar(Model model){
        Filme filme = new Filme();
        model.addAttribute("filme", filme);
        return "adicionar";
    }
    
    @RequestMapping(value ="/salvarFilme")
    public String salvarFilme(@ModelAttribute("filme") Filme filme, Model model){
        filmeService.salvarFilme(filme);
        List<Filme> listaFilmes = filmeService.getAllFilmes();
        model.addAttribute("listaFilmes", listaFilmes);
        return "listafilmes";
    }
   
    @RequestMapping(value = "/listafilmes")
    public String getAllFilmes(@ModelAttribute("usuario") Usuario usuario, Model model){
        
        if(ENTRADA == false){
            boolean existeUsuario = usuarioService.existeUsuario(usuario);
            if(existeUsuario){
                List<Filme> listaFilmes = filmeService.getAllFilmes();
                model.addAttribute("listaFilmes", listaFilmes);
                ENTRADA = true;
                return "listafilmes";
            }else{
                return "redirect:/";
            }
        }else{
            List<Filme> listaFilmes = filmeService.getAllFilmes();
            model.addAttribute("listaFilmes", listaFilmes);
            return "listafilmes"; 
        }

    }
    
    @RequestMapping(value="/editarFilme")
    public String editarFilme(@RequestParam("filmeId") Long filmeId, Model model){
        Filme filme = getFilmePorId(filmeId);
        model.addAttribute("filme", filme);
        return "adicionar";
    }
    
    @RequestMapping(value ="/deletarFilme")
    public String deletarFilme(@RequestParam ("filmeId") Long filmeId){
        Filme filme = getFilmePorId(filmeId);
        filmeService.deletarFilme(filme);
        return "redirect:/listafilmes";
    }
    
    
    private Filme getFilmePorId(Long filmeId){
        Filme filme = filmeService.getFilmePorId(filmeId);
        return filme;
    }
    
}
