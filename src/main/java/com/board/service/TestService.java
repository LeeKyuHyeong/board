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
		log.trace("service trace level 테스트");
		log.debug("service debug level 테스트");
		log.info("service info level 테스트");
		log.warn("service warn level 테스트");
		log.error("service error level 테스트");
		
		return mapper.selectTest();
	}
}
