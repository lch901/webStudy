package jsptest.ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/a20_8_12/jspteset/CalcServlet")
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
 
    public CalcServlet() {}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
//		rd.forward(request, response);
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out=response.getWriter();
		String num1=request.getParameter("num1");
		String operator=request.getParameter("operator");
		String num2=request.getParameter("num2");
		
		out.println("<html>");
		out.println("<body>");
		out.println(num1+operator+num2+"="+calc(Integer.parseInt(num1),Integer.parseInt(num2),operator));
		out.println("</body>");
		out.println("</html>");
	}
	
	public int calc(int num1,int num2,String operator){
		int result=0;
		if(operator.equals("+")){
			result=num1+num2;
		}else if(operator.equals("-")){
			result=num1-num2;
		}else if(operator.equals("*")){
			result=num1*num2;
		}else if(operator.equals("/")){
			result=num1/num2;
		}
		return result;
	}

}
