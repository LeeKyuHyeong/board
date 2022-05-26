package com.board.repo;

import java.time.LocalDate;
import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import com.board.entity.TeamEntity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class GetTeamRepositoryImpl implements GetTeamRepository{

    @Autowired
    EntityManager entityManager;

    @Override
    public List<TeamEntity> findByGameDate(LocalDate dt) {
        List<TeamEntity> list = entityManager.createQuery("SELECT g FROM game g WHERE g.game_dt = ?1", TeamEntity.class).getResultList();
        return list;
    }
    
}
