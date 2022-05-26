package com.board.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
    private final Logger log = LoggerFactory.getLogger(this.getClass());
    // @Autowired
    // UserService userService;
    @Resource(name ="userService")
    

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String login(
            @RequestParam(value = "login_id", required = true) String loginId,
            @RequestParam(value = "login_pwd", required = true) String loginPwd,
            Model model,
            HttpServletRequest request,
            HttpServletResponse response,
            HttpSession session) throws Exception {
                log.info("로그인메서드");
                log.info("loginId : " + loginId);
                log.info("loginPwd : " + loginPwd);
        try {
            //넘길 파라미터 값 담기
            Map<String, Object> param = new HashMap<String, Object>();

            param.put("userLoginId", loginId);
            log.info(param.get("userLoginId").toString());
            
            // 패스워드 암호화 SHA512Hash.getDigest("1234")
            //param.put("password", SHA512Hash.getDigest(loginPwd));
            param.put("userLoginPwd", loginPwd);
            log.info(param.get("userLoginPwd").toString());

            

            // log.info(userInfo.toString());
            // if (userInfo != null && !userInfo.equals("")) {
            //     setUserSession(request, response, userInfo, session);
            // }
            
            // if (userInfo != null && !userInfo.equals("")) {
            //     model.addAttribute("userName", userInfo.getUserName());                                
            // }


        } catch (Exception e) {
            e.printStackTrace();
        }
        return "thymeleaf/main";
    }

    /**
     * 사용자정보 쿠키저장
     * 
     * @param request
     * @param session
     */
    // public void setUserSession(HttpServletRequest request, HttpServletResponse response, Map<String, Object> userInfo,
    //         HttpSession session) throws Exception {

    //     /** 사용자정보를 암호화 */

    //     // 쿠키 객체를 만들어 저장
    //     CookieGenerator cg = new CookieGenerator();

    //     StringEncrypter encrypter = new StringEncrypter(Aes_Key.key, Aes_Key.vec);

    //     Map<String, Object> enc_userInfo = new HashMap<String, Object>();

    //     // 사용자 ID
    //     String PSN_ID = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("USER_ID")), "utf-8");
    //     // 사용자명
    //     String PSN_NM = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("USER_NAME")), "utf-8");
    //     // 사용자이메일
    //     String MAIL = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("EMAIL")), "utf-8");
    //     // 직위명
    //     String PSN_POSI_NM = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("POSITION")), "utf-8");
    //     // 부서코드
    //     String DEPT_CD = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("DEPT_ID")), "utf-8");
    //     // 부서명
    //     String DEPT_NM = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("DEPT_NAME")), "utf-8");
    //     // 사무실 전화
    //     String PSN_TEL = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("EXT_NUMBER")), "utf-8");
    //     // 휴대폰번호
    //     String PSN_HP = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("CELL_NUMBER")), "utf-8");
    //     // 사용자 구분
    //     String SVC_GB = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("USER_TYPE")), "utf-8");
    //     // 권한그룹
    //     String AUTH_GROUP = java.net.URLEncoder.encode(encrypter.encrypt((String) userInfo.get("AUTH_GROUP")), "utf-8");
    //     // 시스템 운영자 여부
    //     String loginId = (String) userInfo.get("USER_ID");
    //     String isSysMng = "N";
    //     String manager = propertiesService.getString("MANAGER_ID"); // 시스템 운영자 아이디 문자열
    //     if (GlobalCom.isExist(manager, loginId))
    //         isSysMng = "Y";
    //     String IS_SYS_MNG = java.net.URLEncoder.encode(encrypter.encrypt(isSysMng), "utf-8");

    //     enc_userInfo.put("PSN_ID", PSN_ID);
    //     enc_userInfo.put("PSN_NM", PSN_NM);
    //     enc_userInfo.put("MAIL", MAIL);
    //     enc_userInfo.put("PSN_POSI_NM", PSN_POSI_NM);
    //     enc_userInfo.put("DEPT_CD", DEPT_CD);
    //     enc_userInfo.put("DEPT_NM", DEPT_NM);
    //     enc_userInfo.put("PSN_TEL", PSN_TEL);
    //     enc_userInfo.put("PSN_HP", PSN_HP);
    //     enc_userInfo.put("SVC_GB", SVC_GB);
    //     enc_userInfo.put("AUTH_GROUP", AUTH_GROUP);
    //     enc_userInfo.put("IS_SYS_MNG", IS_SYS_MNG);

    //     // 세션 재생성
    //     session.invalidate();
    //     session = request.getSession(true);

    //     session.setAttribute("itsm_userinfo", enc_userInfo);

    //     // 중복로그인 방지를 위한 로직추가
    //     request.getSession().setAttribute("PSN_ID", PSN_ID);

    //     EgovHttpSessionBindingListener listener = new EgovHttpSessionBindingListener();
    //     request.getSession().setAttribute(PSN_ID, listener);

    // }

}