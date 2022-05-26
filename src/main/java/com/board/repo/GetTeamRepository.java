package com.board.repo;

import java.time.LocalDate;
import java.util.List;

import com.board.entity.TeamEntity;

public interface GetTeamRepository {
    
    List<TeamEntity> findByGameDate(LocalDate dt);
}
