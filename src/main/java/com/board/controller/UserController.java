package com.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.entity.UserEntity;
import com.board.service.LoginService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
public class UserController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    // private final SessionManager sessionManager;

    @Autowired
    private final LoginService loginService;

    @RequestMapping("/login")
    public String loginId(
            @RequestParam(value = "login_id") String id,
            @RequestParam(value = "login_pwd") String pwd,
            HttpServletResponse response,
            HttpServletRequest request,
            Model model) {

        log.info("userInfo! : " + id + ", " + pwd);
        UserEntity findUser = loginService.getUser(id, pwd);

        if (findUser != null && findUser.getUser_loginpwd().equals(pwd)) {
            model.addAttribute("user", findUser);
            return "forward:viewteamList";
        } else {
            return "redirect:/";
        }
    }
}