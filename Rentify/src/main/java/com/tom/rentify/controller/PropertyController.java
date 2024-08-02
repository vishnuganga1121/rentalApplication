package com.tom.rentify.controller;


import com.tom.rentify.repository.PropertyRepository;
import com.tom.rentify.repository.UserRepository;
import com.tom.rentify.service.EmailService;
import com.tom.rentify.service.PropertyService;
import com.tom.rentify.entity.Property;
import com.tom.rentify.entity.User;
import com.tom.rentify.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

@Controller
public class PropertyController  {
    @Autowired
    private PropertyService propertyService;

    @Autowired
    private PropertyRepository propertyRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private EmailService emailService;

    @Autowired
    private UserService userService;

    @RequestMapping("/addPropertyRedirect")
    public ModelAndView postProperty(Long sellerId, String firstName) {
        ModelAndView mv = new ModelAndView();
        firstName=firstName.replace(",","");
        mv.addObject("sellerId", sellerId);
        mv.addObject("firstName", firstName);
        mv.setViewName("addProperty");
        return mv;
    }

    @RequestMapping("/updateProperty")
    public ModelAndView updateProperty( Long sellerId, String firstName) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("sellerId", sellerId);
        mv.addObject("firstName", firstName);
        List<Property> properties=propertyRepository.findBySellerId(sellerId);
        mv.addObject("properties", properties);
        mv.setViewName("updateProperty");
        return mv;
    }

    @RequestMapping("/getPropertyDetailsForUpdate")
    public ModelAndView getPropertyDetailsForUpdate( Long sellerId, String sellerName, String area, String nearby,
                                                     String propertyName, Long id, Long sellerNumber, Long price) {
        ModelAndView mv = new ModelAndView();
        mv.addObject("sellerId", sellerId);
        Optional<Property> property=propertyRepository.findById(id);
        List<Property> properties=propertyRepository.findBySellerId(sellerId);
        mv.addObject("sellerName", sellerName);
        mv.addObject("area", area);
        mv.addObject("nearby", nearby);
        mv.addObject("propertyName", propertyName);
        mv.addObject("sellerNumber", sellerNumber);
        mv.addObject("price", price);
        mv.addObject("properties", properties);
        mv.setViewName("updateProperty");
        return mv;
    }

    @RequestMapping("/addProperty")
    public ModelAndView addProperty ( Property property, String sellerId, String firstName,  @RequestParam("file") MultipartFile file) throws IOException {
        ModelAndView mv = new ModelAndView();
        mv.addObject("sellerId", sellerId);
        mv.addObject("firstName", firstName);
        mv.addObject("message", "Property added!");
        propertyService.save(property,file);
        mv.setViewName("welcome");
        return mv;
    }


    @GetMapping("/page")
    public Page<Property> getProperties(@RequestParam int page, @RequestParam int size) {
        return propertyService.getProperties(page, size);
    }

    @RequestMapping("/like")
    public ModelAndView likeProperty(@RequestParam Long id, @RequestParam String email) {
        propertyService.logAccess(id, email);
        List<Property> properties = propertyRepository.findAll();
        ModelAndView mv=new ModelAndView("viewProperties");
        mv.addObject("email",email);
        mv.addObject("properties", properties);

        return mv;
    }

    @RequestMapping("/unlike")
    public Property unlikeProperty(@RequestParam Long id, @RequestParam String email) {
        propertyService.logAccess(id, email);
        return propertyService.unlikeProperty(id, email);
    }

    @RequestMapping("/interested")
    public void interestedInProperty(@RequestParam Long id, @RequestParam String buyerEmail) {
        Property property = propertyRepository.findById(id).orElseThrow();
        User seller = userRepository.findById(property.getSellerId()).orElseThrow();
        emailService.sendEmail(seller.getEmail(), "Interest in your property", "Buyer interested: " + buyerEmail);
    }

    @RequestMapping("/sellerLogout")
    public ModelAndView sellerLogout() {
        return new ModelAndView("index");
    }

    @RequestMapping("/sellerHome")
    public ModelAndView sellerHome( Long sellerId,  String firstName) {
        ModelAndView mv= new ModelAndView("welcome");
        mv.addObject("sellerId", sellerId);
        firstName=firstName.replace(",","");
        mv.addObject("firstName", firstName);
        return mv;
    }

    @RequestMapping("/filterProperty")
    public ModelAndView filterProperty( String searchQuery, String filterType, Long number) {
        return propertyService.filterProperty(searchQuery, filterType, number);
    }


    @RequestMapping("/buyerLogout")
    public ModelAndView buyerLogout() {
        ModelAndView mv= new ModelAndView("index");
        return mv;
    }



}
