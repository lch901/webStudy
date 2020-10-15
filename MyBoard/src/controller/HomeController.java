package controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import beans.BoardBean;
import beans.ContentBean;
import service.BoardService;
import service.ContentService;

@Controller
public class HomeController {
	
//	@Resource(name="loginUserBean")
//	private UserBean loginUserBean;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(HttpServletRequest request) {
//		System.out.println(loginUserBean);
		System.out.println(request.getServletContext().getRealPath("/"));  //실제경로확인
		return "redirect:main";
	}
	
	
	
	@Autowired
	private ContentService contentService;
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/main")
	public String main(Model model) {
		ArrayList<List<ContentBean>> list = new ArrayList<List<ContentBean>>();
		
		for(int i=1;i<=4;i++) {
			List<ContentBean> list1=contentService.getMainList(i);
			list.add(list1);
			System.out.println(list1.size());
		}
//		System.out.println(list.size()+"list 개수");
//		for(int j=0;j<list.size();j++) {
//			for(int k=0;k<list1.size();k++) {
//				System.out.println(list.get(j).get(k).getContent_board_idx());
//			}
//		}
		
		
		
		model.addAttribute("list",list);
		
		List<BoardBean> board_list=boardService.getTopMenuList();
		model.addAttribute("board_list",board_list);
		return "main";
	}
}
