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
import streaming_springmvc.entity.Film;
import streaming_springmvc.entity.Genre;
import streaming_springmvc.service.FilmCrudService;
import streaming_springmvc.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller
public class FilmController {

    @Autowired
    private FilmCrudService filmCrudService;
    
    @Autowired
    private GenreCrudService genreCrudService;

    @RequestMapping(value = "/new_film", method = RequestMethod.GET)
    public String newFilm(Model model) {

        model.addAttribute("newFilm", new Film());
        
        Iterable<Genre> listGenres = genreCrudService.findAll();
        model.addAttribute("mesGenres", listGenres);

        System.out.println("New film");

        return "new_film";
    }

    @RequestMapping(value = "/ajouter_film", method = RequestMethod.POST)
    public String ajouterFilm(@ModelAttribute(value = "newFilm") Film f) {

        filmCrudService.save(f);
        System.out.println("Ajouter film");

        return "lister_films";
    }

    @RequestMapping(value = "/lister_film", method = RequestMethod.GET)
    public String listerFilm(Model model) {

        Iterable<Film> listFilms = filmCrudService.findAll();

        model.addAttribute("mesFilms", listFilms);
        System.out.println("Liste des film");

        return "lister_films";
    }
}
