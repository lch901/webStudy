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
		String b_name=request.getParameter("b_name");
		String b_email=request.getParameter("b_email");
		String b_title=request.getParameter("b_title");
		String b_content=request.getParameter("b_content");
		String b_pwd=request.getParameter("b_pwd");
		/* System.out.println(b_name);
		System.out.println(b_email);
		System.out.println(b_title);
		System.out.println(b_content);
		System.out.println(b_pwd); */
		
		
	%>
</body>
</html>