<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	test1
	<%
		String n1=request.getParameter("n1");
		String n2=request.getParameter("n2");
	%>
	<a href="index.jsp">n1=<%=n1 %>,n2=<%=n2 %></p>
</body>
</html>