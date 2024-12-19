package com.example.competitionsystem.model;

import javax.persistence.*;

@Entity
public class Leaderboard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne // 外键，关联用户
    private User user;

    private int totalCompetitions; // 参与赛事次数
    private int totalPenalties; // 总罚时
    private int totalQuestions; // 出题总数

    // Getters 和 Setters
}
