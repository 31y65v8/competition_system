package com.example.competitionsystem.controller;

import com.example.competitionsystem.model.Submission;
import com.example.competitionsystem.service.SubmissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/submissions")
public class SubmissionController {
    @Autowired
    private SubmissionService submissionService;

    @PostMapping
    public Submission submitCode(@RequestBody Submission submission) {
        return submissionService.submitCode(submission);
    }

    @GetMapping
    public List<Submission> getAllSubmissions() {
        return submissionService.getAllSubmissions();
    }
}
