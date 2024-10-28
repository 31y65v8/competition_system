package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.TrainingPlan;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrainingPlanRepository extends JpaRepository<TrainingPlan, Long> {
}
