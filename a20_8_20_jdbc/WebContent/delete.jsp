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
		String memberid=request.getParameter("memberid");
		String password=request.getParameter("password");
		
		System.out.println(memberid);
		System.out.println(password);
		
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pw="1234";
		String sql=" delete from member where memberid=? and password=? ";
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,pw);
	
		
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1,memberid);
		pstmt.setString(2,password);
		pstmt.execute();
		con.commit();	
		
		//닫기
		con.close();
		pstmt.close();
		response.sendRedirect("jdbc_select.jsp");
	%>
</body>
</html>