<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	<%
		Cookie cook[]=request.getCookies();
		String name,value;
		for(int i=0;i<cook.length;i++){
			name=cook[i].getName();//쿠키수명
			value=cook[i].getValue();//쿠키값
			out.print("<li>"+name+"="+URLDecoder.decode(value)+"</li>");
		}
		
		response.encodeURL("cookie_arr.jsp");
		out.print(URLDecoder.decode(cook[0].getValue()));
	%>
</body>
</html>