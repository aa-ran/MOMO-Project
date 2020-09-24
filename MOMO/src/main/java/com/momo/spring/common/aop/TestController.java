package com.momo.spring.common.aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@Autowired
	TestServiceImpl testService;
	
	@RequestMapping("test.kh")
	public String testMethod1() {
		boolean tf = testService.testMethod1();
		return "redirect:home.kh";
	}

}
