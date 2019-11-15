package org.kacperjagodzinski.finalproject.home;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController implements ErrorController {

    @GetMapping("/")
    public String homePage(){
        return "home";
    }

    @RequestMapping("/error")
    public String errorRedirect(){
        return "redirect:/user/login";
    }

    @Override
    public String getErrorPath() {
        return "/error";
    }

}
