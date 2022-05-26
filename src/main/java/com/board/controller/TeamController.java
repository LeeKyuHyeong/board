package com.board.controller;

import com.board.vo.TeamVO;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TeamController {
    
    @RequestMapping("/viewteamList")
    @ResponseBody
    public TeamVO teamList() {
        final TeamVO teamVO = new TeamVO();

        teamVO.setGameDate("22/05/26");
        return teamVO;
    }
}
