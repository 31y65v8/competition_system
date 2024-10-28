package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuestionRepository extends JpaRepository<Question, Long> {
    Question findByName(String name); // 根据名称查找题目
}
