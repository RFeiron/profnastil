package ua.com.feiron.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import ua.com.feiron.domain.Profnastil;
import ua.com.feiron.repository.ProfnastilRepository;

import java.util.List;

@Controller
public class ProfnastilController {

    private ProfnastilRepository profnastilRepository;

    @Autowired
    public  ProfnastilController(ProfnastilRepository profnastilRepository){
        this.profnastilRepository = profnastilRepository;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getProfnastil(Model model){
        List<Profnastil> lists = this.profnastilRepository.listAll();
        model.addAttribute("lists", lists);
        return "index";
    }
    @RequestMapping(value = "addProfnastil", method = RequestMethod.GET)
    public String addProfnastil(Model model){
        model.addAttribute("profnastil", new Profnastil());
        return "addProfnastil";
    }

    @RequestMapping(value = "addProfnastil", method = RequestMethod.POST)
    public String addProfnastil(@ModelAttribute("profnastil") Profnastil profnastil){

        this.profnastilRepository.addProfnastil(profnastil);
        return "redirect:/";
    }

    @RequestMapping(value = "deleteProfnastil/{id}", method = RequestMethod.GET)
    public String deleteProfnastil(@PathVariable Integer id){

        this.profnastilRepository.removeProfnastil(id);
        return "redirect:/";
    }
}
