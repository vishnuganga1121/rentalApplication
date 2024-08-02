package com.tom.rentify.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
public class AppConfig {

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        //multipartResolver.setMaxUploadSize(2097152); // 2MB
        return new CommonsMultipartResolver();
    }
}
