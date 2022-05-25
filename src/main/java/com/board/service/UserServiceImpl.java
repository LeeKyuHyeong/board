package com.board.service;

import java.util.Map;

import com.board.mapper.UserMapper;
import com.board.vo.UserVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserServiceImpl implements UserService{

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserVO selectUserInfo(Map<String, Object> param) throws Exception{
        
        return userMapper.selectUserInfo(param);
    }
    
}
