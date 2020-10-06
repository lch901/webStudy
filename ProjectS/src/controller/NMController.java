package controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NMController {//NavMenu
	//----------------------best-------------------------
	@GetMapping("best")
	public String best(HttpServletRequest request) {
		request.setAttribute("view","nm/best.jsp");
		return "index";
	}
	//----------------------new-------------------------
	@GetMapping("neww")
	public String neww(HttpServletRequest request) {
		request.setAttribute("view","nm/neww.jsp");
		return "index";
	}
	//----------------------top-------------------------
	@GetMapping("top")
	public String top(HttpServletRequest request) {
		request.setAttribute("view","nm/top.jsp");
		return "index";
	}
	//----------------------hcozy-------------------------
	@GetMapping("hcozy")
	public String hcozy(HttpServletRequest request) {
		request.setAttribute("view","nm/hcozy.jsp");
		return "index";
	}
	//----------------------pants-------------------------
	@GetMapping("pants")
	public String pants(HttpServletRequest request) {
		request.setAttribute("view","nm/pants.jsp");
		return "index";
	}
	//----------------------outer-------------------------
	@GetMapping("outer")
	public String outer(HttpServletRequest request) {
		request.setAttribute("view","nm/outer.jsp");
		return "index";
	}
	//----------------------shirt-------------------------
	@GetMapping("shirt")
	public String shirt(HttpServletRequest request) {
		request.setAttribute("view","nm/shirt.jsp");
		return "index";
	}
	//----------------------shoes-------------------------
	@GetMapping("shoes")
	public String shoes(HttpServletRequest request) {
		request.setAttribute("view","nm/shoes.jsp");
		return "index";
	}
	//----------------------item-------------------------
	@GetMapping("item")
	public String item(HttpServletRequest request) {
		request.setAttribute("view","nm/item.jsp");
		return "index";
	}
	//----------------------85sale-------------------------
	@GetMapping("sale85")
	public String sale85(HttpServletRequest request) {
		request.setAttribute("view","nm/sale85.jsp");
		return "index";
	}
}
