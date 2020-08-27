<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="join" class="glory.Join"/>
	<jsp:setProperty property="id" name="join"/>
	<jsp:setProperty property="name" name="join"/>
	<jsp:setProperty property="email" name="join"/>
	<jsp:setProperty property="address" name="join"/>
	
	<jsp:getProperty property="id" name="join"/>
	<jsp:getProperty property="name" name="join"/>
	<jsp:getProperty property="email" name="join"/>
	<jsp:getProperty property="address" name="join"/>
</body>
</html>