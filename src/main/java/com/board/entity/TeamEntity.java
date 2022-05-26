package com.board.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
@AllArgsConstructor
@Entity(name = "game")
public class TeamEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long game_idx;

    @Column(nullable = false)
    private String game_dt;

    @Column(nullable = false, length = 45)
    private String game_home;

    @Column(nullable = true, length = 3)
    private String home_win_lose;

    @Column(nullable = false, length = 45)
    private String home_sp;

    @Column(nullable = true, length = 10)
    private String home_sp_era;

    @Column(nullable = false, length = 45)
    private String game_away;

    @Column(nullable = true, length = 3)
    private String away_win_lose;

    @Column(nullable = false, length = 45)
    private String away_sp;

    @Column(nullable = true, length = 10)
    private String away_sp_era;

    @Column(nullable = false, length = 45)
    private String latest_score;

    @Column(nullable = false, length = 255)
    private String home_stad;

    public TeamEntity() {

    }
}
