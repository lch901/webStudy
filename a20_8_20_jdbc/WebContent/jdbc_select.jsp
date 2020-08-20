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
		String driver="oracle.jdbc.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";
		String user="system";
		String pw="1234";
		String sql="select * from member";
		
		Connection con=null;
		Statement stmt=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		Class.forName(driver);
		con=DriverManager.getConnection(url,user,pw);
		if(con!=null){
			System.out.println("db");
		}
		stmt=con.createStatement();//빈 문장통
		rs=stmt.executeQuery(sql);
		
		 /* while(rs.next()){
			out.print(rs.getString("memberid")+" ");
			out.print(rs.getString("password")+" ");
			out.print(rs.getString("name")+" ");
			out.print(rs.getString("email"));
		}  */
		
		//닫기
	%>
	<table style="border-collapse:collapse;" border="1">
		<tr>
			<td>아이디</td>
			<td>비번</td>
			<td>이름</td>
			<td>이메일</td>
		</tr>
		<%if(rs!=null){ %>
			<%while(rs.next()){ %>
				<tr>
					<td><%=rs.getString("memberid") %></td>
					<td><%=rs.getString("password") %></td>
					<td><%=rs.getString("name") %></td>
					<td><%=rs.getString("email") %></td>
				</tr>
			<%} %>
		<%}else{ 
			out.print("<tr colspan='4'><td>테이블에 행이 없습니다.</td></tr>");
		}%>
		<tr>
			<td colspan="4">
				<button><a style="text-decoration:none;color:black;" href="insertForm.jsp">회원가입</a></button>
				<button><a style="text-decoration:none;color:black;" href="deleteForm.jsp">아이디 삭제</a></button>
				<input type="button" value="수정" onclick="location.href='updateForm.jsp'">
			</td>
		</tr>
	</table>
	<%
		con.close();
		stmt.close();
		rs.close();
	%>
</body>
</html>