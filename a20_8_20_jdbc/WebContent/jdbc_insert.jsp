<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//ctrl + shift + f = 줄 맞춤
		String memberid = request.getParameter("memberid");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		System.out.println(memberid);
		System.out.println(password);
		System.out.println(name);
		System.out.println(email);
		
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pw="1234";
		String sql=" insert into member(memberid,password,name,email) values(?,?,?,?) ";
		
		Connection con=null;
		Statement stmt=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,pw);
		if(con!=null){
			System.out.println("db");
		}
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,memberid);
		pstmt.setString(2,password);
		pstmt.setString(3,name);
		pstmt.setString(4,email);
		pstmt.execute();
		con.commit();		
		
		//닫기
		con.close();
		pstmt.close();		
		response.sendRedirect("jdbc_select.jsp");
	%>
</body>
</html>