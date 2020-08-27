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
		String sql="delete from member";
		out.print("<h1>delete.jsp</h1>");
		try{
			Context ctx=new InitialContext();	//초기(server.xml)
			ds=(DataSource) ctx.lookup("java:comp/env/jdbc/myoracle");
			conn=ds.getConnection();
			pstmt=conn.prepareStatement(sql);
			pstmt.execute();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			conn.close();
			pstmt.close();
		}
		
		//response.sendRedirect("select.jsp?id=999&pw=1234");//select.jsp로 직접 이동(url에 쿼리들이 다보임)
	%>	
	<jsp:forward page="select.jsp">
		<jsp:param name="id" value="999"/>
	</jsp:forward>
	<!-- delete.jsp에 select.jsp를 포워드(url에 쿼리들을 숨김) -->
	<% out.print("제어권이 넘어가서 38번 코드는 출력안됨."); %>
</body>
</html>