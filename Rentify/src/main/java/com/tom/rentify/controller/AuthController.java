package com.tom.rentify.controller;


import com.tom.rentify.entity.User;
import com.tom.rentify.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class AuthController {
    @Autowired
    private UserService userService;

    @RequestMapping("/signup")
    public ModelAndView register() {
        return new ModelAndView("signup");
    }

    @RequestMapping("/registerForm")
    public ModelAndView registerForm( User user) {
        return userService.registerUser(user);
    }

    @RequestMapping("/login")
    public ModelAndView login() {
        return new ModelAndView("log");
    }

    @RequestMapping("/loginAuth")
    public ModelAndView loginAuth( String email,  String password) {
        return userService.loginAuth(email, password);
    }


}
