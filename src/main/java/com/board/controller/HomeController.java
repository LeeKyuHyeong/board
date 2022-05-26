package com.board.controller;

import com.board.vo.TestVO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private final Logger log = LoggerFactory.getLogger(this.getClass());


	@RequestMapping(value = "/home")
	public String home() {

		return "index.html";
	}

	@RequestMapping("/main2")
	public String main2(
			String id,
			String name,
			Model model
		) {
		model.addAttribute("id", id);
		model.addAttribute("name", name);
		return "thymeleaf/main2";
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
