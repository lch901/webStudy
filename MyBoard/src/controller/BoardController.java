package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("board/")
public class BoardController {
	@GetMapping("/main")
	public String main(@RequestParam("baord_info_idx") int board_info_idx,Model model) {
		model.addAttribute("board_info_idx",board_info_idx);
		
		return "/board/main";
	}
	
}
