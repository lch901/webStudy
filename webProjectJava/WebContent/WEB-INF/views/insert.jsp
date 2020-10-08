<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삽입화면</title>
</head>
<body>
	<form action="insert_pro" method="post">
		code:<input type="text" name="code"/><br/>
		name:<input type="text" name="name"/><br/>
		id:<input type="text" name="id"/><br/>
		pwd:<input type="text" name="pwd"/><br/>
		age:<input type="number" name="age"/><br/>
		<input type="submit" value="삽입"/>
	</form>
</body>
</html>