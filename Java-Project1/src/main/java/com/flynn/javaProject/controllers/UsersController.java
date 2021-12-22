package com.flynn.javaProject.controllers;

import java.security.Principal;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.flynn.javaProject.models.User;
import com.flynn.javaProject.services.UserService;
import com.flynn.javaProject.validator.UserValidator;

@Controller
public class UsersController {
	
    private UserService userService;
    
    private UserValidator userValidator;
    
    public UsersController(UserService userService, UserValidator userValidator) {
        this.userService = userService;
        this.userValidator = userValidator;
    }
    
    //	**** Register User *********************************
    
    @GetMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
    
    
    @PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
    	userValidator.validate(user, result);
    	if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        userService.saveWithUserRole(user);
        return "redirect:/login";
    }
    
    //	**** Register Admin ********************************
    
    @GetMapping("/registration/admin")
    public String registerAdminForm(@Valid @ModelAttribute("user") User user) {
        return "registrationAdminPage.jsp";
    }
    
    //Kept saying there was a duplicate method. Not sure where.
    //Changed method from 'registration' to 'register' -FA
    @PostMapping("/registration/admin")
    public String register(@Valid @ModelAttribute("user") User user, BindingResult result, Model model, HttpSession session) {
    	userValidator.validate(user, result);
    	if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        userService.saveWithUserRole(user);
        return "redirect:/login";
    }
        
    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required=false) String error, @RequestParam(value="logout", required=false) String logout, Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
            return "loginPage.jsp";
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
            return "loginPage.jsp";
        }
        return "loginPage.jsp";
    }
    
    @RequestMapping(value = {"/", "/home"})
    public String home(Principal principal, Model model) {
        System.out.println("******** in Home **************");
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "homePage.jsp";
    }
}
