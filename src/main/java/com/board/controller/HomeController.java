package com.board.controller;

import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import com.board.service.TestService;
import com.board.vo.TestVO;

import org.apache.catalina.Session;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {
	private final Logger log = LoggerFactory.getLogger(this.getClass());
	@Autowired
	TestService testService;

	@RequestMapping(value = "/home")
	public String home() {

		return "index.html";
	}

	@RequestMapping(value = "/test")
	public String test() {

		return "test";
	}

	@RequestMapping("/login")
	@ResponseBody
	public String login(HttpRequest request, HttpResponse response) {

		return "main";
	}

	@RequestMapping(value = "/header")
	public String header() {

		return "header";
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

	@RequestMapping(value = "/login")
	public String loginProc(
			HttpRequest request,
			Session session,
			Model model) {
		log.info("로그인 클릭후");

		return "";
	}
}
