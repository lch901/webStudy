<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="jdbc_insert.jsp" method="get">
		<table border="1">
			<tr>
				<td>멤버아이디</td>
				<td><input type="text" name="memberid"></td>
			</tr>
			<tr>
				<td>비번</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" name="email"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="삽입">
					<input type="button" value="목록" onclick="location.href='jdbc_select.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>