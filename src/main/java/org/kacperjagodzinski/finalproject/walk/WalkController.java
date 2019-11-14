package org.kacperjagodzinski.finalproject.walk;

import org.kacperjagodzinski.finalproject.user.User;
import org.kacperjagodzinski.finalproject.user.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/walk")
public class WalkController {

   private final WalkService walkService;
   private final UserService userService;

    public WalkController(WalkService walkService, UserService userService) {
        this.walkService = walkService;
        this.userService = userService;
    }

    @GetMapping("/add")
    public String addWalk(Model model){
        Walk walk = new Walk();
        model.addAttribute("walk", walk);
        return "walk-add";
    }

    @PostMapping("/add")
    public String addedWalk(@Valid Walk walk, BindingResult result,HttpSession session){
        System.out.println("Datetime: " + walk.getDatetime());
        if(result.hasErrors()){
            return "walk-add";
        }
        Long id = (Long) session.getAttribute("id");
        User user = userService.findOne(id);
        walk.setUser(user);
        walkService.create(walk);
        List<Walk> walks = user.getWalks();
        walks.add(walk);
        userService.update(user);

        return "redirect:/walk/list";
    }

    @GetMapping("/edit/{id}")
    public String editWalk(Model model, @PathVariable Long id){
        Walk walk = walkService.findOne(id);
        model.addAttribute("walk", walk);
        return "walk-edit";
    }

    @PostMapping("/edit/{id}")
    public String editedWalk(@Valid Walk walk,BindingResult result){
        if(result.hasErrors()){
            return "walk-edit";
        }
        walkService.update(walk);
        return "redirect:/walk/list";
    }

    @GetMapping("/delete/{id}")
    public String deleteWalk(@PathVariable Long id,HttpSession session){
        Walk walk = walkService.findOne(id);
        List<User> users = walk.getUsers();
        for (User user:users
             ) {
            user.getWalks().remove(walkService.findOne(id));
            userService.update(user);
        }

        //walkService.update(walk);
        walkService.deleteOne(id);


//        walkService.deleteOne(id);
        return "redirect:/walk/list";
    }

    @GetMapping("/list")
    public String listWalk(HttpSession session, Model model){
        Long id = (Long) session.getAttribute("id");
        User user = userService.findOne(id);
        List<Walk> walks = user.getWalks();
        List<Walk> userWalks = walks.stream().filter(Walk::isIfActive)
                .sorted(
                        Comparator.comparing(Walk::getDatetime)
        ).collect(Collectors.toList());
        model.addAttribute("userWalks", userWalks);
        return "walk-list";
    }

    @GetMapping("/alllist")
    public String listOfAllWalks(Model model){
       List<Walk> walks = walkService.findAllActiveWalks();
       model.addAttribute("walks",walks);
        return "walk-list-all";
    }

    @GetMapping("/join/{id}")
    public String joinWalk(@PathVariable Long id,HttpSession session){
        Long userId = (Long) session.getAttribute("id");
        User user = userService.findOne(userId);
        Walk walk = walkService.findOne(id);
        List<Walk> walks = user.getWalks();
        walks.add(walk);
        userService.update(user);
        return "redirect:/walk/alllist";
    }
}
