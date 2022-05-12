package com.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.board.vo.TestVO;

@Repository
@Mapper
public interface TestMapper {
	List<TestVO> selectTest();
}
