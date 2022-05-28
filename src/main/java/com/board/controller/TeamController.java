package com.board.controller;

import java.lang.ProcessBuilder.Redirect;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.board.entity.TeamEntity;
import com.board.entity.UserEntity;
import com.board.repo.TeamRepository;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
public class TeamController {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    private final TeamRepository teamRepository;

    @ModelAttribute("user")
    public UserEntity setUser() {
        return new UserEntity();
    }

    @RequestMapping(value = "viewteamList")
    public String findAllMember(@ModelAttribute("user") UserEntity user, Model model) {
        if (user.getUser_id() == 0) {
            return "redirect:/";
        }
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
