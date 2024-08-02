package com.tom.rentify.repository;

import com.tom.rentify.entity.Property;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PropertyRepository extends JpaRepository<Property, Long> {

    @Query(value = "select p from Property p where p.sellerId=:id")
    List<Property> findBySellerId(Long id);

    @Query("select p from Property p where p.sellerName like %:searchQuery%")
    List<Property> findBySellerName(String searchQuery);

    @Query(value = "select p from Property p order by p.price")
    List<Property> findByPrice();

    @Query(value = "select p from Property p where p.area like %:searchQuery%")
    List<Property> findByLocation(String searchQuery);
}
