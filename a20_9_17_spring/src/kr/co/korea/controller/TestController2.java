package kr.co.korea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.korea.beans.UserDataBean;

@Controller
public class TestController2 {
	@GetMapping("test1")
	public String test1(UserDataBean bean) {
		
		return "test1";
	}
	@GetMapping("test2")
	public String test2() {
		return "test2";
	}
	@GetMapping("test3")
	public String test3() {
		return "test3";
	}
	@GetMapping("test4")
	public String test4() {
		return "test4";
	}
	
}
