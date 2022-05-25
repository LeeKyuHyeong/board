package com.board.service;

import java.util.Map;
import com.board.vo.UserVO;

public interface UserService {    

    public UserVO selectUserInfo(Map<String, Object> param) throws Exception;
}
