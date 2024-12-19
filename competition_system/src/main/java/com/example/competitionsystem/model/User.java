package com.example.competitionsystem.model;

import javax.persistence.*;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email;
    private String phoneNumber;
    private String nickname;
    private String studentId;
    private String password;

    private boolean isActive; // 是否注销

    // Getters 和 Setters
}
