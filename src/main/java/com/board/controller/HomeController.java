package com.board.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.vo.TestVO;

@Controller
public class HomeController {
	
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
		mav.addObject("name", "kh");
		
		List<String> testList = new ArrayList<String>();
		testList.add("a");
		testList.add("b");
		testList.add("c");
		
		mav.addObject("list", testList);
		return mav;
		
	}
	
	@RequestMapping("/thymeleafTest")
	public String thymeleafTest(Model model) {
		TestVO testModel = new TestVO("kh", "이규형");
		testModel.setMbrNo(1234L);
		model.addAttribute("testModel", testModel);
		return "thymeleaf/thymeleafTest";
	}
}
