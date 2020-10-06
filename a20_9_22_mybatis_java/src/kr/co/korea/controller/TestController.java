package kr.co.korea.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.korea.beans.DataBean;
import kr.co.korea.database.MapperSql;

@Controller
public class TestController {
	
	@Autowired
	MapperSql mapper1;
	
	@GetMapping("/write")
	public String write() {
		return "write";
	}
	@GetMapping("/result")
	public String result(DataBean dataBean,HttpServletRequest request) {
		mapper1.insert_data(dataBean);
		request.setAttribute("msg","insert완료");
		
		return "result";
	}
	@GetMapping("/show")
	public String show(Model model) {
		List<DataBean> list=mapper1.select_dataa();
		model.addAttribute("list",list);
		
//		int cnd=mapper1.select_one();
//		model.addAttribute("cnt",cnt);
		return "show";
	}
	
}
