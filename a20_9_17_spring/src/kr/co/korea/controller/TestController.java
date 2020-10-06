package kr.co.korea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.korea.beans.DataBean;
import kr.co.korea.beans.DataBean1;

@Controller
public class TestController {
	@PostMapping("/test1")
	public String test1(@ModelAttribute DataBean bean) {//@ModelAttribute는 안적어도 생략되어있음.
		System.out.println(bean.getData1());
		System.out.println(bean.getData2());
		return "test1";
	}
	@PostMapping("/test2")
	public String test2(@ModelAttribute("testData") DataBean bean) {//testData는 jsp에서 Controller에서 값을 가져올때 사용
		System.out.println(bean.getData1());
		System.out.println(bean.getData2());
		return "test2";
	}
	@GetMapping("/test3")
	public String test3(@ModelAttribute DataBean1 bean) {//@ModelAttribute로 setData1,setData2 자동으로 적용,
		System.out.println(bean.getId());
		System.out.println(bean.getName());
		return "test3";
	}
	
}
