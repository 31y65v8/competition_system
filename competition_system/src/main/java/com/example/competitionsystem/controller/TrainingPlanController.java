package com.example.competitionsystem.controller;

import com.example.competitionsystem.model.TrainingPlan;
import com.example.competitionsystem.service.TrainingPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/training-plans")
public class TrainingPlanController {
    @Autowired
    private TrainingPlanService trainingPlanService;

    @PostMapping
    public TrainingPlan createTrainingPlan(@RequestBody TrainingPlan trainingPlan) {
        return trainingPlanService.createTrainingPlan(trainingPlan);
    }

    @GetMapping
    public List<TrainingPlan> getAllTrainingPlans() {
        return trainingPlanService.getAllTrainingPlans();
    }
}
