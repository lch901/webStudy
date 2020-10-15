package controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import beans.UserBean;
import service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login() {
		return "user/login";
	}
	@PostMapping("/login_pro")
	public String login_pro(@Valid @ModelAttribute("tempLoginUserBean") UserBean tempLoginUserBean,BindingResult result) {//BindingResult클래스의 import를 보면 "validation"에서 가져왔다고 뜨는데 pom.xml안에 mvnrespository.com에서 다운받아온 유효성검사 라이브러리에서 가져온 클래스임.
		System.out.println("logina");
		
		if(result.hasErrors()) {//.hasErrors()   <-   Return if there were any errors. 에러뜨면 리턴한다.
			return "user/login";
		}
		userService.getLoginUserInfo(tempLoginUserBean);
		if(tempLoginUserBean.isUserLogin()== true) {
			return "user/login_success";
		}else {
			return "user/login_fail";
		}
	}
	
	@GetMapping("/join")
	public String join() {
		return "user/join";
	}
	@PostMapping("/join_pro")
	public String join_pro(@Valid @ModelAttribute("joinUserBean") UserBean joinUserBean,BindingResult result) {
		if(result.hasErrors()) {
			return "user/join";
		}
		userService.addUserInfo(joinUserBean);
		return "user/join_success";//가입완료 메시지 페이지
	}
	
	
	@GetMapping("/modify")
	public String modify() {
		return "user/modify";
	}
	@GetMapping("/logout")
	public String logout() {
		return "user/logout";
	}
//	@InitBinder
//	public void initBinder(WebDataBinder binder) {
//		UserValidator validator1=new UserValidator();
//		binder.addValidators(validators1);
//	}
}
