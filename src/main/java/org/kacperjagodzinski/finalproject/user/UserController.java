package org.kacperjagodzinski.finalproject.user;

import org.kacperjagodzinski.finalproject.filter.BCrypt;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/register")
    public String registrationForm(Model model) {
        User user = new User();
        model.addAttribute(user);
        return "user-register";
    }

    @PostMapping("/register")
    public String registerUser(@Valid User user, BindingResult result,
                               @RequestParam String password2) {
        if (result.hasErrors()) {
            return "user-register";
        }
        User existingUser = userService.findFirstByEmail(user.getEmail());
        if (existingUser != null) {
            result.addError(new FieldError("user", "email",
                    "Email already exists"));
            return "user-register";
        }

        if (!user.getPassword().equals(password2)) {
            result.addError(new FieldError("user", "password",
                    "Passwords do not match"));
            return "user-register";
        }
        user.setPassword(BCrypt.hashpw(user.getPassword(),BCrypt.gensalt()));
        userService.create(user);
        return "redirect:/user/login";
    }

    @GetMapping("/login")
    public String loginForm(Model model) {
        model.addAttribute(new User());
        return "user-login";
    }

    @PostMapping("/login")
    public String loging(@Valid User user, BindingResult result,HttpSession session) {
        if (result.hasErrors()) {
            return "user-login";
        }
        boolean loggedIn = true;
        User existingUser = userService.findFirstByEmail(user.getEmail());
        if (existingUser == null) {
            loggedIn = false;
        } else if (!BCrypt.checkpw(user.getPassword(), existingUser.getPassword())) {
            loggedIn = false;
        }

        if (!loggedIn) {
            result.addError(new FieldError("user", "email",
                    "Incorrect email or password"));
            return "user-login";
        }

        session.setAttribute("email", user.getEmail());
        session.setAttribute("firstName", existingUser.getFirstName());
        session.setAttribute("id",existingUser.getId());

        return "redirect:/";
    }

    @GetMapping("/edit")
    public String editUser(Model model,HttpSession session){
        Long id = (Long) session.getAttribute("id");
        System.out.println(id);

        User user = userService.findOne(id);
        model.addAttribute("user",user);
        return "user-edit";
    }

    @PostMapping("/edit")
    public String editedUser(@Valid User user,BindingResult result, HttpSession session){
        userService.update(user);
        session.setAttribute("email", user.getEmail());
        session.setAttribute("firstName", user.getFirstName());
        return "home";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }
}