package com.tom.rentify.repository;


import com.tom.rentify.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Long> {

    @Query(value = "select u from User u where u.email =:email")
    User findByEmail(String email);
}
