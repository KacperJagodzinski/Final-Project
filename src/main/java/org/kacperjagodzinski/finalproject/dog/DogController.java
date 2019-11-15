package org.kacperjagodzinski.finalproject.dog;

import org.kacperjagodzinski.finalproject.rase.Rase;
import org.kacperjagodzinski.finalproject.rase.RaseService;
import org.kacperjagodzinski.finalproject.user.User;
import org.kacperjagodzinski.finalproject.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/dog")
public class DogController {

    private final DogService dogService;
    private final RaseService raseService;
    private final UserService userService;

    public DogController(DogService dogService, RaseService raseService, UserService userService) {
        this.dogService = dogService;
        this.raseService = raseService;
        this.userService = userService;
    }

    @GetMapping("/add")
    public String addDog(Model model){
        Dog dog = new Dog();
        model.addAttribute("dog", dog);
        return "dog-add";
    }

    @PostMapping("/add")
    public String addedDog(@Valid Dog dog, BindingResult result,HttpSession session){
        if(result.hasErrors()){
            return "dog-add";
        }
        dogService.create(dog);
        Long id = (Long) session.getAttribute("id");
        User user = userService.findOne(id);
        List<Dog> dogs = user.getDogs();
        dogs.add(dog);
        userService.update(user);
        return "redirect:/dog/list";
    }

    @GetMapping("/list")
    public String listOfDogs(Model model, HttpSession session){
        Long id = (Long) session.getAttribute("id");
        if(id==null){
            return "redirect:/user/login";
        }
        User user = userService.findOne(id);
        List<Dog> dogs = user.getDogs();
        model.addAttribute("dogs",dogs);
        return "dog-list";
    }

    @GetMapping("/edit/{id}")
    public String editDog(Model model, @PathVariable Long id){
        Dog dog = dogService.findOne(id);
        model.addAttribute("dog",dog);
        return "dog-edit";
    }

    @PostMapping("/edit/{id}")
    public String editedDog(@Valid Dog dog,BindingResult result){
        if(result.hasErrors()){
            return "dog-edit";
        }
        dogService.update(dog);
        return "redirect:/dog/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteDog(@PathVariable Long id){
        dogService.deleteOne(id);
        return "redirect:/dog/list";
    }

    @ModelAttribute("gender")
    public List<String> gender(){
        List<String> genders = new ArrayList<>();
        genders.add("suczka");
        genders.add("pies");
        return genders;
    }

    @ModelAttribute("rases")
    public List<Rase> getRases(){
        return raseService.findAll();
    }
}
