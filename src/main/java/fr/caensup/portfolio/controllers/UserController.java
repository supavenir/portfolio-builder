package fr.caensup.portfolio.controllers;

import fr.caensup.portfolio.dtos.UserDto;
import fr.caensup.portfolio.entities.User;
import fr.caensup.portfolio.exceptions.UserNotFoundException;
import fr.caensup.portfolio.repositories.UserRepository;
import fr.caensup.portfolio.ui.UiMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Controller
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @Value("${application.url}")
    private String applicationUrl;
    
    @ModelAttribute("applicationUrl")
    private String getApplicationUrl(){
        return applicationUrl;
    }

    @RequestMapping(value = "",method = {
            RequestMethod.GET,
            RequestMethod.POST
    })
    public ModelAndView index(){
        List<User> users=userRepository.findAllWithProfiles();
        return new ModelAndView("/users/index","users",users);
    }

    @GetMapping("/{id}")
    public ModelAndView getOne(@PathVariable UUID id){
        Optional<User> opt=userRepository.findById(id);
        if(opt.isPresent()){
            return new ModelAndView("/users/index","user",opt.get());
        }
        return null;
    }

    @GetMapping("/add")
    public ModelAndView addForm(){
        ModelAndView mv=new ModelAndView("/users/userForm","user",new UserDto());
        mv.addObject("action","/users/add");
        return mv;
    }

    @PostMapping("/add")
    public RedirectView submitAdd(
            @ModelAttribute UserDto userDto,
            RedirectAttributes attrs
    ){
        User newUser=new User();
        userDto.toEntity(newUser);
        userRepository.save(newUser);
        attrs.addFlashAttribute("message",
                new UiMessage("Ajout","L'utilisateur "+newUser.getLogin()+ " a été ajouté","success","info circle")
        );
        return new RedirectView("/users");
    }

    @GetMapping("/edit/{id}")
    public ModelAndView editForm(
            @PathVariable UUID id
    ) throws UserNotFoundException {
        Optional<User> optUser=userRepository.findById(id);
        if(optUser.isPresent()) {
            ModelAndView mv= new ModelAndView("/users/userForm", "user", optUser.get());
            mv.addObject("action","/users/edit/"+id);
            return mv;
        }
        throw new UserNotFoundException("Utilisateur d'id "+id+" non trouvé !");
    }

    @PostMapping("/edit/{id}")
    public RedirectView submitEdit(
            @PathVariable UUID id,
            @ModelAttribute UserDto userDto,
            RedirectAttributes attrs
    ) throws UserNotFoundException {
        Optional<User> optUser=userRepository.findById(id);
        if(optUser.isPresent()) {
            User user=optUser.get();
            userDto.toEntity(user);
            userRepository.save(user);
            attrs.addFlashAttribute("message",
                    new UiMessage("Modification","L'utilisateur "+user.getLogin()+ " a été modifié","success","info circle")
            );
            return new RedirectView("/users");
        }

        throw new UserNotFoundException("Utilisateur d'id "+id+" non trouvé !");
    }

    @GetMapping("/delete/{id}")
    public RedirectView delete(
            @PathVariable() UUID id,
            RedirectAttributes attrs
            ) throws UserNotFoundException {
        Optional<User> optUser=userRepository.findById(id);
        if(optUser.isPresent()) {
            User u=optUser.get();
            userRepository.delete(u);
            attrs.addFlashAttribute("message",
                    new UiMessage("Suppression","L'utilisateur "+u.getLogin()+ " a été supprimé","success","info circle")
            );
            return new RedirectView("/users");
        }
        throw new UserNotFoundException("Utilisateur d'id "+id+" non trouvé !");
    }

    @PostMapping("/search")
    public ModelAndView search(@RequestParam String searchText){
        List<User> users=userRepository.search("%"+searchText.toLowerCase()+"%");
        return new ModelAndView("/users/index","users",users);
    }

}
