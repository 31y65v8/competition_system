package com.example.competitionsystem.controller;

import com.example.competitionsystem.model.Testdata;
import com.example.competitionsystem.model.TrainingPlan;
import com.example.competitionsystem.service.TestdataService;
import com.example.competitionsystem.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/testdatas")
public class TestdataController {
    @Autowired
    private TestdataService testdataService;

    @PostMapping
    public void createTestData(@RequestBody Testdata testdata) {
         testdataService.createTestData(testdata);
    }

    @GetMapping
    public List<Testdata> getAllTestdataByQuestionid(int questionid) {
        return testdataService.getAllTestdataByQuestionid(questionid);
    }


}
