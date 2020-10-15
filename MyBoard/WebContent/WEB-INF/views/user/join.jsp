<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="user/join" method="post">
		이름<input type="text" name="user_name">
		아이디<input type="text" name="user_id">
		비밀번호<input type="password" name="user_pw">
		비밀번호 확인<input type="password" name="">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>