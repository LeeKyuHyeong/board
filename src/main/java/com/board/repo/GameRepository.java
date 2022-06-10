package com.board.repo;

import java.util.List;

import com.board.entity.GameEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface GameRepository extends JpaRepository<GameEntity, Long>{

    @Query(value = "select g from kh_game_info g where g.game_dt = ?1")
    public List<GameEntity> findByGameDate(String nowstr);
}