package com.example.competitionsystem.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class TrainingPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // 训练计划名称
    private String description; // 描述

    @ManyToMany // 多对多关系，关联用户
    private List<User> participants;

    @ElementCollection // 训练计划中包含的赛事
    private List<Long> competitionIds;

    // Getters 和 Setters
}
