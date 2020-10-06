package controller;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import beans.DataBean;

@Controller
public class TMController {
	
	@Autowired
	SqlSessionTemplate sql;
	
	//--------------------member(회원관리)-----------------------
	@GetMapping("join")
	public String join(HttpServletRequest request,DataBean dataBean) {
//		sql.insert("project_db.insert_data",dataBean);
		request.setAttribute("view","tm/member/join.jsp");
		return "index";
	}
	@GetMapping("login")
	public String login(HttpServletRequest request) {
		
		request.setAttribute("view","tm/member/login.jsp");
		return "index";
	}
	//--------------------myshop(마이쇼핑)-----------------------
	@GetMapping("myshop")
	public String myshop(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/myshop.jsp");
		return "index";
	}
	@GetMapping("modify")
	public String modify(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/modify.jsp");
		return "index";
	}
	@GetMapping("order_list")
	public String order_list(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/order_list.jsp");
		return "index";
	}
	@GetMapping("product_list")
	public String product_list(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/product_list.jsp");
		return "index";
	}
	@GetMapping("addr_list")
	public String addr_list(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/addr_list.jsp");
		return "index";
	}
	@GetMapping("board_list")
	public String board_list(HttpServletRequest request) {
		request.setAttribute("view","tm/myshop/board_list.jsp");
		return "index";
	}
	//--------------------basket(장바구니)-----------------------
	@GetMapping("basket")
	public String basket(HttpServletRequest request) {
		request.setAttribute("view","tm/basket.jsp");
		return "index";
	}
	//--------------------order(주문조회)-----------------------
		@GetMapping("order")
		public String order(HttpServletRequest request) {
			request.setAttribute("view","tm/order.jsp");
			return "index";
		}
	//--------------------board(고객센터)-----------------------
	@GetMapping("board")
	public String board(HttpServletRequest request) {
		request.setAttribute("view","tm/board.jsp");
		return "index";
	}
	
}
