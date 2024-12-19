package com.example.competitionsystem.model;

import javax.persistence.*;
import java.util.List;

@Entity
public class Question {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name; // 题目名称
    private String description; // 描述
    private String inputDescription; // 输入说明
    private String outputDescription; // 输出说明
    private String sampleInput; // 输入样例
    private String sampleOutput; // 输出样例
    private int timeLimit; // 时间限制
    private int memoryLimit; // 内存限制

    @ElementCollection
    private List<String> testData; // 测试数据

    // Getters 和 Setters
}
