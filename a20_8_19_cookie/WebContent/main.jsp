<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		/* String msg = (String)session.getAttribute("msg");
		if(msg!=null){System.out.println(msg);} */
	
		String checkName="";
		String checkId="";
		
		
		checkName=(String)session.getAttribute("s_Name");
		if(checkName==null){
			response.sendRedirect("./login1.jsp");
		}else{
			checkId=(String)session.getAttribute("s_Id");
		}
		
		out.print(checkName+"("+checkId+")님 로그인 상태입니다.");
	%>
	<form action="logout" method="get">
		<input type="submit" value="로그아웃">
	</form>
	<input type="button" value="로그아웃" onclick="location.href='logout'"> 
</body>
</html>