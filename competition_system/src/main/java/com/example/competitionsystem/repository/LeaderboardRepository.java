package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Competition;
import com.example.competitionsystem.model.Leaderboard;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface LeaderboardRepository extends JpaRepository<Leaderboard, Long> {
    Leaderboard createLeaderboard(Leaderboard leaderboard);
    List<Leaderboard> getAllLeaderboards();
}
