package com.flynn.javaProject.repositories;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.flynn.javaProject.models.User;

@Repository
@ComponentScan(basePackages = "com.flynn.javaProject.*")
public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
}
