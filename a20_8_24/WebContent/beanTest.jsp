<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="u" class="glory.User" scope="page"/>
	<jsp:setProperty property="firstName"  name="u" value="��"/>
	<jsp:setProperty property="lastName"  name="u" value="��"/>
	<jsp:getProperty property="firstName" name="u"/>
	<jsp:getProperty property="lastName" name="u"/>
	
	<%-- <%
		glory.User u=new glory.User();//import�� �����ʰ� ����ϴ¹�.
		u.setFirstName("ȫ");
		u.setLastName("�浿");
	%>
	<%=u.getFirstName() %>
	<%=u.getLastName() %> --%>
</body>
</html>