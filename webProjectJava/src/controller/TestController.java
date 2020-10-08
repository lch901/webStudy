package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import beans.TestBean;
import service.TestService;

@Controller
public class TestController {
	
	@Autowired
	private TestService testService;
	
	@GetMapping("insert")
	public String insert() {
		return "insert";
	}
	@GetMapping("delete")
	public String delete() {
		return "delete";
	}
	
	@PostMapping("insert_pro")
	public String insert_pro(@ModelAttribute("testBean") TestBean testBean) {
//		System.out.println(testBean.getCode());
//		System.out.println(testBean.getId());
//		System.out.println(testBean.getName());
//		System.out.println(testBean.getPwd());
//		System.out.println(testBean.getAge());
//		System.out.println("------insert_pro--------");
		testService.insert(testBean);
		return "insert_pro";
	}
	@PostMapping("delete_pro")
	public String delete_pro(TestBean testBean) {
		testService.delete(testBean);
		return "delete_pro";
	}
}
