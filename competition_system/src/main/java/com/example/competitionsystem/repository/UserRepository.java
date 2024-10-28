package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User findByPhoneNumber(String phoneNumber);
}
