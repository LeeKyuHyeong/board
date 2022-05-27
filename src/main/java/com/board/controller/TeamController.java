package com.board.controller;


import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.board.entity.TeamEntity;
import com.board.repo.TeamRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class TeamController {
    
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    private final TeamRepository teamRepository;

    // @RequestMapping("/templates/thymeleaf/teamList")
    // public String teamList() {

    //     return "thymeleaf/teamList";
    // }
    @RequestMapping(value = "viewteamList")
    public String findAllMember(Model model) {
        List<TeamEntity> map = new ArrayList<TeamEntity>();        
                
        String nowstr = String.valueOf(LocalDate.now());
        String nowmonth = String.valueOf(LocalDate.now().getMonthValue());
        String nowday = String.valueOf(LocalDate.now().getDayOfMonth());

        model.addAttribute("nowmonth", nowmonth);
        model.addAttribute("nowday", nowday);
        
        map = teamRepository.findByGameDate(nowstr);        
        
        model.addAttribute("teamInfo", map);
        
        return "teamList";
    }
    
}
