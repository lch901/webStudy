package kr.co.korea.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//TestController와 url이 중복되서 주석처리
//@Controller
public class TestController {
	
	//----------------옛날방식-----------------
	@RequestMapping(value="test1",method=RequestMethod.GET)
	public String test1() {
		return "test1";//WEB-INF/views/test1.jsp	<- 원래 입력해야할 값
	}
	@RequestMapping(value="test2",method=RequestMethod.GET)
	public String test2() {
		return "test2";
	}
	
	@RequestMapping(value="test3",method=RequestMethod.POST)
	public String test3() {
		return "test3";
	}
	@GetMapping("/test4")
	public String test4() {
		return "test4";
	}
	@PostMapping("/test5")
	public String test5() {
		return "test5";
	}
	@RequestMapping(value="/test6",method= {RequestMethod.GET,RequestMethod.POST})
	public String test6() {
		return "test6";
	}
	
}
