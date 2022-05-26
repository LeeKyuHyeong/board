package com.board.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class TeamVO {
    private String gameDate;
    private String gameHome;
    private String homeWinLose;
    private String homeSp;
    private String homeSpEra;

    private String gameaway;
    private String awayWinLose;
    private String awaySp;
    private String awaySpEra;

    private String latestScore;
}
