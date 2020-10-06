package kr.co.korea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	//server -> Hello/web.xml
	//page경로 -> servlet-context.xml
	//mapping : get,post로 값 전달하는것
	
	@GetMapping("/")
	public String index() {//WEB-INF/config/servlet-context.xml에서 "WEB-INF/views/",".jsp"가 없어도 가는 경로설정을 했음. 
		return "index";//WEB-INF/views/index.jsp	<- 원래 입력해야할 값
	}
	
	
}
