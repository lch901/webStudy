package servlet;

import java.io.IOException;
import java.io.PrintStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;


@WebServlet("/loginProc1")
public class LoginProc1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginProc1() {}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String userId="hong";
		String userPWD="1234";
		String userName="홍길동";
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(id+" "+pw);
		
		HttpSession session = request.getSession();
		if(id.equals(userId) && pw.equals(userPWD)){
			session.setAttribute("s_Name", userName);
			session.setAttribute("s_Id", userId);
		}else{
			session.setAttribute("msg","아이디 또는 비번이 트렸습니다.");
		}
		response.sendRedirect("./main.jsp");
	}

}
