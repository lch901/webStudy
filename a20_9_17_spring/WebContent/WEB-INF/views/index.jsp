<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	index-컨트롤러 사용법
	<form action="test1" method="post">
		data1<input type="text" name="data1"><br/>
		data2<input type="text" name="data2"><br/>
		<input type="submit" value="test1">
	</form>
	<form action="test2" method="post">
		data1<input type="text" name="data1"><br/>
		data2<input type="text" name="data2"><br/>
		<input type="submit" value="test2">
	</form>
	<a href="test3?id=lch&name=lee">test3</a>
</body>
</html>