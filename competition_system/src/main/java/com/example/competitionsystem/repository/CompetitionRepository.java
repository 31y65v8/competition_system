package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Competition;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CompetitionRepository extends JpaRepository<Competition, Long> {
    Competition findByName(String name); // 根据名称查找赛事
}
