package serv;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import vo.MemberVo;

@WebServlet("/login")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid=(String)request.getAttribute("mid");
		if(mid!=null) {
			request.setAttribute("midValue",mid);
		}
		String msg=(String)request.getAttribute("msg");
		if(msg!=null) {
			request.setAttribute("msg",msg);
		}
		
		request.setAttribute("view", "login.jsp");
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String mid=request.getParameter("mid");
		String mpw=request.getParameter("mpw");
		
		System.out.println(mid);
		System.out.println(mpw);
		
		MemberVo vo = new MemberVo();
		vo.setMid(mid);
		vo.setMpw(mpw);
		
		int result = MemberDAO.confirmPw(vo);
		vo = MemberDAO.getMember(mid);
		
		System.out.println(result);
		if(result==1) {
			HttpSession session=request.getSession();
			session.setAttribute("memberVo",vo);
			response.sendRedirect("home");
		}else if(result ==2) {
			request.setAttribute("msg", "비밀번호가 틀렸습니다.");
			request.setAttribute("mid", mid);
			doGet(request,response);
		}else {
			request.setAttribute("msg", "아이디가 존재하지않습니다.");
			request.setAttribute("mid",mid);
			doGet(request,response);
		}
	}

}

