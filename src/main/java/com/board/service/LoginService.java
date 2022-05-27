package com.board.service;

import com.board.entity.UserEntity;
import com.board.repo.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class LoginService {

    @Autowired
    private final UserRepository userRepository;

    public boolean login(UserEntity user) {

        UserEntity findUser = userRepository.findByUserId(user.getUser_loginid());

        if(findUser == null){
            return false;
        }

        if(!findUser.getUser_loginpwd().equals(user.getUser_loginpwd())){
            return false;
        }
        return true;
    }

    public UserEntity getUser(String id, String pwd) {

        return userRepository.findByIdAndPassword(id, pwd);
    }

}
