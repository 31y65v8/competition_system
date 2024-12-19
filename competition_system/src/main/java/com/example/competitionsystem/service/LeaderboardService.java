package com.example.competitionsystem.service;

import com.example.competitionsystem.model.Leaderboard;
import com.example.competitionsystem.repository.LeaderboardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 积分榜服务类，提供对积分榜的管理功能。
 */
@Service
public class LeaderboardService {

    private final LeaderboardRepository leaderboardRepository;

    /**
     * 构造函数注入LeaderboardRepository。
     *
     * @param leaderboardRepository 积分榜数据访问层接口
     */
    @Autowired
    public LeaderboardService(LeaderboardRepository leaderboardRepository) {
        this.leaderboardRepository = leaderboardRepository;
    }

    /**
     * 创建新的积分榜。
     *
     * @param leaderboard 待创建的积分榜对象
     * @return 创建后的积分榜对象
     */
    public Leaderboard createLeaderboard(Leaderboard leaderboard) {
        return leaderboardRepository.save(leaderboard);
    }

    /**
     * 获取所有积分榜。
     *
     * @return 所有积分榜的列表
     */
    public List<Leaderboard> getAllLeaderboards() {
        return leaderboardRepository.findAll();
    }
}
