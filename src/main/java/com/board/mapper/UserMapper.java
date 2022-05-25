package com.board.mapper;

import java.util.Map;

import com.board.vo.UserVO;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Repository
@Mapper
public interface UserMapper {
    UserVO selectUserInfo(Map<String, Object> param);
}
