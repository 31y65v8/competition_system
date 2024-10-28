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

    // 用户注册时设置为激活状态
    public User registerUser(User user) {
        user.setActive(true); // 默认激活用户
        return userRepository.save(user);
    }

    // 通过邮箱或手机号登录
    public User login(String identifier) {
        User user = userRepository.findByEmail(identifier);
        if (user == null) {
            user = userRepository.findByPhoneNumber(identifier);
        }
        // 根据业务逻辑，可能还需要在这里添加密码验证
        return user;
    }

    // 删除用户
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    // 获取所有用户
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    // 停用用户（逻辑删除）
    public void deactivateUser(Long id) {
        User user = userRepository.findById(id).orElse(null);
        if (user != null) {
            user.setActive(false); // 设置用户为非激活状态
            userRepository.save(user);
        }
    }
}
