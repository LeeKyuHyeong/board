package com.board.repo;

import java.util.List;

import com.board.entity.TeamEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface TeamRepository extends JpaRepository<TeamEntity, Long>{

    @Query(value = "select g from game g where g.game_dt = ?1")
    public List<TeamEntity> findByGameDate(String nowstr);
}