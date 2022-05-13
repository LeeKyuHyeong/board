package com.board.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.board.vo.TestVO;

@Repository
@Mapper
public interface TestMapper {
	List<TestVO> selectTest();
	
	List<Map<String, Object>> selectUserList();
}

