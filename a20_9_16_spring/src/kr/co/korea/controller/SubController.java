package kr.co.korea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@Controller
public class SubController {
	@RequestMapping(value="test3",method=RequestMethod.GET)
	public String test3() {
		return "test3";
	}
	@RequestMapping(value="test4",method=RequestMethod.POST)
	public String test4() {
		return "test4";
	}
	
	@GetMapping("test5")
	public String test5() {
		return "test5";
	}
	@PostMapping("test6")
	public String test6() {
		return "test6";
	}
	//get,post둘다 받을 수있음.
	@RequestMapping(value="test7",method= {RequestMethod.GET,RequestMethod.POST})
	public String test7() {
		return "test7";
	}
}
