package com.example.competitionsystem.service;

import com.example.competitionsystem.model.User;
import com.example.competitionsystem.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public User registerUser(User user) {
       // user.setActive(true); // 用户默认是激活状态
        return userRepository.save(user);
    }

    public User login(String identifier) {
        User user = userRepository.findByEmail(identifier);
        if (user == null) {
            user = userRepository.findByPhoneNumber(identifier);
        }
        return user; // 需要根据业务逻辑进行密码验证
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public void deactivateUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
           // user.setActive(false); // 逻辑删除
            userRepository.save(user);
        }
    }
}
