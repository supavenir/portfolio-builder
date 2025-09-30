package fr.caensup.portfolio.controllers;

import fr.caensup.portfolio.entities.User;
import fr.caensup.portfolio.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("")
    public ModelAndView index(){
        List<User> users=userRepository.findAll();
        return new ModelAndView("users/index","users",users);
    }

    @GetMapping("/{id}")
    public ModelAndView getOne(@PathVariable UUID id){
        Optional<User> opt=userRepository.findById(id);
        if(opt.isPresent()){
            return new ModelAndView("users/index","user",opt.get());
        }
        return null;
    }
}
