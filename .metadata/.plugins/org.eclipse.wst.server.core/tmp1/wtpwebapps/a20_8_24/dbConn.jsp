<%@page import="javax.naming.InitialContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커넥션 풀(DBCP)</title>
</head>
<body>
	<%
		Connection conn=null;
		PreparedStatement pstmt=null;
		DataSource ds=null;
		
		Context ctx=new InitialContext();	//초기(server.xml)
		ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");
		conn=ds.getConnection();
		out.print("연결ok");
	%>
</body>
</html>