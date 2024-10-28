package com.example.competitionsystem.model;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Submission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne // 外键，关联用户
    private User user;

    @ManyToOne // 外键，关联题目
    private Question question;

    @ManyToOne // 外键，关联赛事
    private Competition competition;

    private LocalDateTime submissionTime; // 提交时间
    private String result; // 评测结果（AC/WA/RE等）
    private int memoryUsed; // 使用内存（KB）
    private int timeUsed; // 使用时间（毫秒）

    // Getters 和 Setters
}
