package com.example.competitionsystem.service;

import com.example.competitionsystem.model.Competition;
import com.example.competitionsystem.repository.CompetitionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CompetitionService {
    @Autowired
    private CompetitionRepository competitionRepository;

    public Competition createCompetition(Competition competition) {
        return competitionRepository.save(competition);
    }

    public List<Competition> getAllCompetitions() {
        return competitionRepository.findAll();
    }

    public void deleteCompetition(Long id) {
        competitionRepository.deleteById(id);
    }
}
