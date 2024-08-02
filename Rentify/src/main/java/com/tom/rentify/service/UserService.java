package com.tom.rentify.service;

import com.tom.rentify.entity.Property;
import com.tom.rentify.entity.User;
import com.tom.rentify.repository.PropertyRepository;
import com.tom.rentify.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PropertyRepository propertyRepository;

    public ModelAndView registerUser(User user) {
        userRepository.save(user);
        return new ModelAndView("log");
    }

    public ModelAndView loginAuth(String email, String password) {
        User user = userRepository.findByEmail(email);
        String viewName="log";
        if (user == null) {
            return new ModelAndView(viewName);
        }
        ModelAndView mv=new ModelAndView();

        System.out.println(user.getType());
        if (user != null && user.getPassword().equals(password)) {
            mv.addObject("user", user);
            if(user.getType().equals("Buyer")) {
                List<Property> properties = propertyRepository.findAll();
                System.out.println("Image: ->"+properties.get(properties.size()-1).getImage());
                mv.addObject("properties", properties);
                viewName = "viewProperties";
            }else{
                viewName = "welcome";
            }
        }
        mv.setViewName(viewName);
        return mv;
    }
}
