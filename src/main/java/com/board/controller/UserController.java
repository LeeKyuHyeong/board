package com.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.board.entity.UserEntity;
import com.board.repo.UserRepository;
import com.board.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
public class UserController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());

    // private final SessionManager sessionManager;

    @Autowired
    private final UserService userService;

    @Autowired
    private final UserRepository userRepository;

    @PostMapping("/login")
    public String loginId(
            @RequestParam(value = "login_id") String id,
            @RequestParam(value = "login_pwd") String pwd,
            HttpServletResponse response,
            HttpServletRequest request,
            Model model) {

        // log.info("userInfo! : " + id + ", " + pwd);
        UserEntity findUser = userService.getUser(id, pwd);

        if (findUser != null && findUser.getUser_loginpwd().equals(pwd)) {
            model.addAttribute("user", findUser);
            return "forward:viewGameList";
        } else {
            model.addAttribute("msg", "failed");
            return "redirect:/";
        }
    }

    @RequestMapping("/checkDupl")
    @ResponseBody
    public String checkDuplId(@RequestParam(value = "loginId") String id, Model model) {
        UserEntity findUser = userService.getUser(id);

        if (findUser == null)
            return "OK";
        else
            return "DUPLE";
    }

    @PostMapping(value = "/join")
    @ResponseBody
    public String join(
            // @RequestParam(value = "user_loginid") String join_id,
            // @RequestParam(value = "user_loginpwd") String join_pwd,
            // @RequestParam(value = "user_name") String join_name,
            // @RequestParam(value = "user_email") String join_email,
            // @RequestParam(value = "user_phone") String join_phone,
            // @RequestParam(value = "user_addr") String join_addr,
            UserEntity user,
            HttpServletRequest request,
            HttpServletResponse response,
            Model model) {
        // int nextId = userService.findNextId();

        // UserEntity newUser = new UserEntity();
        // newUser.setUser_id(nextId + 1);
        // newUser.setUser_loginid(join_id);
        // newUser.setUser_loginpwd(join_pwd);
        // newUser.setUser_name(join_name);
        // newUser.setUser_email(join_email);
        // newUser.setUser_phone(join_phone);
        // newUser.setUser_addr(join_addr);

        // UserEntity result = userService.save(newUser);
        UserEntity result = userService.save(user);
        if (result == null) {
            model.addAttribute("msg", "failed");
            return "failed";
        } else {
            model.addAttribute("msg", "OK");
            return "OK";
        }
    }

}