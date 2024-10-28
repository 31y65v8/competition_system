package com.example.competitionsystem.repository;

import com.example.competitionsystem.model.Leaderboard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LeaderboardRepository extends JpaRepository<Leaderboard, Long> {
}
