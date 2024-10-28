package com.example.competitionsystem.model;
import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Competition {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // 赛事名称
    private String description; // 赛事描述
    private LocalDateTime startTime; // 开始时间
    private LocalDateTime endTime; // 结束时间
    private String password; // 赛事密码
    private boolean isPublic; // 赛事类型（公开/私密）

    // Getters 和 Setters
}
