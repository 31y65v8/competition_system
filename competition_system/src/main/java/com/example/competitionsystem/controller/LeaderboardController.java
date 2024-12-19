package com.example.competitionsystem.controller;

import com.example.competitionsystem.model.Leaderboard;
import com.example.competitionsystem.service.LeaderboardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/leaderboards")
public class LeaderboardController {
    @Autowired
    private LeaderboardService leaderboardService;

    @PostMapping
    public Leaderboard createLeaderboard(@RequestBody Leaderboard leaderboard) {
        return leaderboardService.createLeaderboard(leaderboard);
    }

    @GetMapping
    public List<Leaderboard> getAllLeaderboards() {
        return leaderboardService.getAllLeaderboards();
    }
}
