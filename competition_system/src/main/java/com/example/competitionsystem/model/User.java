package com.example.competitionsystem.model;

import javax.persistence.*;

@Entity
@Table(name = "user") // 映射到数据库中的 user 表
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id") // 映射到 id 列
    private Long id;

    private String email;
    private String phoneNumber;
    @Column(name = "nickname", nullable = false, length = 100) // 映射到 nickname 列
    private String nickname;
    private String studentId;
    private String password;

    private boolean isActive; // 是否注销

    public void setActive(boolean b) {

    }

    // Getters 和 Setters
}
