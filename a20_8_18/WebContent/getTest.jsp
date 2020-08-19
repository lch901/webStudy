<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>w
	<form action="getparm.jsp" method="post">
		이름 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name"><br>
		주소 : &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="juso"><br>
		성별 : &nbsp;&nbsp;&nbsp;&nbsp;<label for="men">남</label><input id="men"type="radio" name="gender" value="남"><label for="girl">여</label><input id="girl" type="radio" name="gender" value="여"><br>
		강아지<input type="checkbox" name="animol" value="dog">
		고양이<input type="checkbox" name="animol" value="cat">
		앵무새<input type="checkbox" name="animol" value="bird">
		<input type="submit" value="전송">
	</form>
</body>
</html>