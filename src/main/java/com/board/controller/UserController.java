package com.board.controller;

import javax.servlet.http.HttpServletResponse;

import com.board.entity.UserEntity;
import com.board.repo.UserRepository;
import com.board.service.LoginService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
@SessionAttributes("user")
public class UserController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    
    private final UserRepository userRepository;
    //private final SessionManager sessionManager;

    @Autowired
    private final LoginService loginService;

    @PostMapping("/login")
    public String loginId(
        @RequestParam(value = "login_id") String id, 
        @RequestParam(value = "login_pwd") String pwd, 
        HttpServletResponse response, 
        Model model) {

        log.info("userInfo! : " + id + ", " + pwd);
        UserEntity findUser = loginService.getUser(id, pwd);
        
        if(findUser != null && findUser.getUser_loginpwd().equals(pwd)) {
            model.addAttribute("user", findUser);
            return "forward:viewteamList";
        } else {
            model.addAttribute("alert", "입력한 정보가 맞지 않습니다.");
            return "redirect:/";
        }

        // if(!loginService.login(userEntity)) {
        //     return "login";
        // }

        //sessionManager.createSession(userEntity, response);

        // return "redirect:/";
    }




    // @PostMapping(value = "/login")
    // public String login(
    //         @RequestParam(value = "login_id", required = true) String loginId,
    //         @RequestParam(value = "login_pwd", required = true) String loginPwd,
    //         Model model,
    //         HttpServletRequest request,
    //         HttpServletResponse response,
    //         HttpSession session) throws Exception {
            
    //     String msg = "";
        
    //     try {            
    //         log.info("loginId : " + loginId);
    //         log.info("loginPwd : " + loginPwd);

    //         // 패스워드 암호화 SHA512Hash.getDigest("1234")
    //         // param.put("password", SHA512Hash.getDigest(loginPwd));            

    //         int cnt = userRepository.findByIdAndPassword(loginId, loginPwd);
    //         log.info(String.valueOf(cnt));

    //         if(cnt > 0) {
    //             model.addAttribute("msg", "success");
    //             msg = "success";
    //         } else {
    //             model.addAttribute("msg", "failed");
    //             msg = "failed";
    //         }            

    //     } catch (Exception e) {
    //         e.printStackTrace();
    //     }
    //     log.info(msg);
    //     return msg;
    //     // return "thymeleaf/main2";
    // }

}