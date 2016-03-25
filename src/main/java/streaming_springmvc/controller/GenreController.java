/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming_springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming_springmvc.entity.Genre;
import streaming_springmvc.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
public class GenreController {
    
    @Autowired
    private GenreCrudService genreCrudService;
    
    @RequestMapping(value = "/new_genre", method = RequestMethod.GET)
    public String newGenre(Model model){
        
        model.addAttribute("newGenre", new Genre());
        
        System.out.println("New genre");
        
        return "newGenre";
    }
    
    @RequestMapping(value = "/ajouter_genre", method = RequestMethod.POST)
    public String ajouterGenre(@ModelAttribute(value = "newGenre") Genre g){
        genreCrudService.save(g);
        
        System.out.println("Ajouter genre");
        
        return "redirect:lister_genres";
    }
    
    
    @RequestMapping(value = "/lister_genres", method = RequestMethod.GET)
    public String listerGenres(Model model){
        
        Iterable<Genre> listGenres = genreCrudService.findAll();
        
        model.addAttribute("mesGenres", listGenres);
        System.out.println("Liste des genres");
        
        return "lister_genres";
    }
}
