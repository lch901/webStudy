<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,javax.sql.*,javax.naming.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		DataSource ds=null;
		String sql="select * from member";
		out.print("<h1>멤버 테이블</h1>");
		try{
		Context ctx=new InitialContext();	//초기(server.xml)
		ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");
		conn=ds.getConnection();
		pstmt=conn.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()){
			out.print(rs.getString(1)+"&nbsp;");
			out.print(rs.getString(2)+"&nbsp;");
			out.print(rs.getString(3)+"&nbsp;");
			out.print(rs.getString(4)+"<br>");
		}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
			pstmt.close();
			rs.close();
		}
		
		String id=request.getParameter("id");
		if(id!=null){
			out.print(request.getParameter("id"));
		}
		//out.print("연결ok");
	%>
</body>
</html>