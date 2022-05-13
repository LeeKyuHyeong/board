package com.board.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.board.mapper.TestMapper;
import com.board.vo.TestVO;

@Service
public class TestService {
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	public TestMapper mapper;
	
	public List<TestVO> selectTest() {
		return mapper.selectTest();
	}
}
