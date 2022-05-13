package com.board.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.service.TestService;
import com.board.vo.TestVO;



@Controller
public class HomeController {
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	@Autowired
	TestService testService;
	
	@RequestMapping(value="/home")
	public String home() {
		
		return "index.html";
	}
	
	@RequestMapping(value = "/valueTest")
	public String valueTest(String name, int age) {
		if(name == null || name == "") {
			name = "입력 전";
		}
		if(age == 0) {
			age = -1;
		}
		
		//String value = "테스트 String";
		return "이름은 " + name + ", 나이는 " + age;
	}
	
	@RequestMapping(value = "/test")
	public ModelAndView test() throws Exception{
		ModelAndView mav = new ModelAndView("test");
		
		List<TestVO> testList = testService.selectTest();
		mav.addObject("name", "규형");
		mav.addObject("list", testList);
		
		return mav;
		
	}
	
	@RequestMapping("/thymeleafTest")
	public String thymeleafTest(Model model) {
		TestVO testModel = new TestVO();
		testModel.setId("kh");
		testModel.setName("규형");
		testModel.setMbrNo(1234L);
		model.addAttribute("testModel", testModel);
		return "thymeleaf/thymeleafTest";
	}
}
