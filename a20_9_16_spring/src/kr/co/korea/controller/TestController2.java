package kr.co.korea.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
public class TestController2 {
	
	//----------------어노테이션을 이용-----------------
	@RequestMapping(value="test1",method=RequestMethod.GET)
	public String test1(HttpServletRequest request,HttpServletResponse response) {
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String nm=request.getParameter("nm");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nm);
		String hobby[]=request.getParameterValues("hobby");
		for(String str:hobby) {
			System.out.println(str);
		}
		
		return "result";//WEB-INF/views/test1.jsp	<- 원래 입력해야할 값
	}
	
	@RequestMapping(value="test2",method=RequestMethod.POST)
	public String test2(HttpServletRequest request,HttpServletResponse reponse) throws Exception{
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String pw=request.getParameter("pw");
		String nm=request.getParameter("nm");
		String hobby[]=request.getParameterValues("hobby");
		System.out.println(id);
		System.out.println(pw);
		System.out.println(nm);
		for(String str:hobby) {
			System.out.println(str);
		}
		
		return "result";
	}
	
	@GetMapping("/test3")
	public String test3(WebRequest request) {
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("nm"));
		System.out.println(request.getParameter("pw"));
		String hobby[]=request.getParameterValues("hobby");
		for(String str:hobby) {
			System.out.println(hobby);
		}
		System.out.println(request.getParameter("hobby"));
		return "result";		
	}
	
	@GetMapping("/test4/{id}/{nm}/{hobby}")
	public String test4(@PathVariable int id,@PathVariable int nm,@PathVariable int hobby) {
		System.out.println(id);
		System.out.println(nm);
		System.out.println(hobby);
		
		return "result";		
	}


	@GetMapping("/test5")
	public String test5(@RequestParam int id, @RequestParam int name, @RequestParam int []hobby) {
		System.out.println("id:"+id);
		System.out.println("name:"+name);
		for(int str:hobby) {
		System.out.println("hobby:"+str);
		}
		return "result";
	}
	
	@GetMapping("/test6")
		public String test6(@RequestParam(value="id") int value1, @RequestParam(value="name") int value2, @RequestParam(value="hobby") int [] value3) {
		System.out.println("id:"+value1);
		System.out.println("name:"+value2);
		for(int str:value3) {
			System.out.println("hobby:"+str);
		}
		return "result";
	}
		@GetMapping("/test7")
		public String test7(@RequestParam int id, @RequestParam(required=true) String name, @RequestParam(defaultValue="0") int hobby) {
			System.out.println("id:"+id);
			System.out.println("name:"+name);
			System.out.println("hobby:"+hobby);
			return "result";
		}
		@GetMapping("/test8")
		public String test1(@RequestParam Map<String, String> map) {
			String id=map.get("id");
			String name=map.get("name");
			System.out.printf("id :%s\n", id);
			System.out.printf("name :%s\n", name);
			return "result";
		}

}
