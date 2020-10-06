package kr.co.korea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
	@GetMapping("/")
	public String index() {
		return "test1.jsp";//적용이 안됨
	}
	@GetMapping("/home")
	public String home() {
		return "홈";
	}
	@PostMapping("/home2")
	public String home2() {
		return "홈2";
	}
}
