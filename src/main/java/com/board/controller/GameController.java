package com.board.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.board.entity.GameEntity;
import com.board.entity.UserEntity;
import com.board.repo.GameRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
public class GameController {

    private final Logger log = LoggerFactory.getLogger(this.getClass());

    private final GameRepository gameRepository;

    @ModelAttribute("user")
    public UserEntity setUser() {
        return new UserEntity();
    }

    @GetMapping("/addGameList")
    public String viewAddGameList() {

        return "addGameList";
    }
    @PostMapping("/addGameList.do")
    public String addGameList(GameEntity gameEntity, Model model) {
        System.out.println(gameEntity);
        GameEntity newGame = gameRepository.save(gameEntity);
        
        if(newGame == null) {
            model.addAttribute("msg", "failed");
        } else {
            log.info("newGame", newGame);
            model.addAttribute("msg", "success");
        }
        return "gameList";
    }
    @RequestMapping(value = "/viewGameList")
    public String viewGameList(@ModelAttribute("user") UserEntity user, Model model) {
        if (user.getUser_id() == 0) {            
            return "redirect:/";
        }
        List<GameEntity> map = new ArrayList<GameEntity>();

        String nowstr = String.valueOf(LocalDate.now());
        String nowmonth = String.valueOf(LocalDate.now().getMonthValue());
        String nowday = String.valueOf(LocalDate.now().getDayOfMonth());
        String nowdayofWeek = String.valueOf(LocalDate.now().getDayOfWeek());

        log.info("오늘의 요일 : " + nowdayofWeek);

        model.addAttribute("nowmonth", nowmonth);
        model.addAttribute("nowday", nowday);        
        model.addAttribute("nowdayofWeek", nowdayofWeek);

        map = gameRepository.findByGameDate(nowstr);

        model.addAttribute("gameInfo", map);

        return "gameList";
        // return "templates/teamList";
    }

}
