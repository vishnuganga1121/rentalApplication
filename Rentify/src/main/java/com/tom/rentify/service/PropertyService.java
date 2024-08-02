package com.tom.rentify.service;


import com.tom.rentify.entity.AccessLog;
import com.tom.rentify.entity.Property;
import com.tom.rentify.repository.AccessLogRepository;
import com.tom.rentify.repository.PropertyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@Service
public class PropertyService {
    @Autowired
    private PropertyRepository propertyRepository;

    @Autowired
    private AccessLogRepository accessLogRepository;

    public void save(Property property, MultipartFile file) throws IOException {
        property.setImage(file.getBytes());
        propertyRepository.save(property);
    }

    public Page<Property> getProperties(int page, int size) {
        return propertyRepository.findAll(PageRequest.of(page, size));
    }

    public Property likeProperty(Long propertyId, String email) {
        Property property = propertyRepository.findById(propertyId).orElseThrow();
        property.addLike(email);
        return propertyRepository.save(property);
    }

    public Property unlikeProperty(Long propertyId, String email) {
        Property property = propertyRepository.findById(propertyId).orElseThrow();
        property.removeLike(email);
        return propertyRepository.save(property);
    }

    public void logAccess(Long propertyId, String userEmail) {
        AccessLog accessLog = new AccessLog();
        accessLog.setPropertyId(propertyId);
        accessLog.setUserEmail(userEmail);
        accessLog.setAccessTime(LocalDateTime.now()); // Or use your preferred timestamp

        // Save the AccessLog to the database
        accessLogRepository.save(accessLog);
    }


    public ModelAndView filterProperty(String searchQuery, String filterType, Long number) {
        ModelAndView mv = new ModelAndView();
        System.out.println("filter type:"+filterType);
        List<Property> properties = switch (filterType) {
            case "name" -> propertyRepository.findBySellerName(searchQuery);
            case "location" -> propertyRepository.findByLocation(searchQuery);
            case "price" -> propertyRepository.findByPrice();
            default -> propertyRepository.findAll();
        };
        mv.addObject("properties",properties);
        mv.setViewName("viewProperties");

        return mv;
    }
}
