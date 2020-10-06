package kr.co.korea.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//@Controller
public class TestController3 {
	@GetMapping("/index2")
	public String index2() {
		return "index2";
	}
	
	@GetMapping("/test1")
	public String test1(){
		return "test1";
	}
	
	@GetMapping("/test2")
	public String test2(){
		return "test2";
	}

	@GetMapping("/test3")
	public String test3(HttpServletRequest request){
		request.setAttribute("data1",100);
		request.setAttribute("data2",200);
		return "test3";
	}
	
	@GetMapping("/test4")
	public String test4(Model model){
		model.addAttribute("data1",100);
		model.addAttribute("data2",200);
		return "test4";
	}
	
	@GetMapping("/test5")
	public ModelAndView test5(ModelAndView mv){
		mv.addObject("data1",100);
		mv.addObject("data2",200);
		mv.setViewName("test5");
		return mv;
	}
	
	
	
	
	
	
	
	@PostMapping("board/write")
	public String write(@RequestParam("name") String name,@RequestParam("kor") String kor,@RequestParam("eng") String eng,@RequestParam("mat") String mat) {
		System.out.println(name);
		System.out.println(kor);
		System.out.println(eng);
		System.out.println(mat);
		return "board/write";
	}
	
	@RequestMapping(value="board/write",method=RequestMethod.GET)
	public String write() {
		return "board/write";//WEB-INF/views/board/write.jsp
	}
	@RequestMapping(value="board",method=RequestMethod.GET)
	public String list() {
		return "board/list";
	}
	@RequestMapping(value="board/mod",method=RequestMethod.POST)
	public String mod() {
		return "board/mod";
	}
	
	
	
}
