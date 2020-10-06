<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	index
	<h1>TestController</h1><br/>
	<h5>test1</h5>
	<a href="test1"><img src="images/bag.png" alt="이미지가 없음"/></a><br/><!-- resources/images/bag.png		(servlet-context.xml에 resources/**) -->
	<a href="test2">test2</a><br/>	<!-- /test2와 test2의 차이점을 알아두기  -->
									<!--  <a href="/test2">test2</a>   ->        http://localhost:8099/test2 -->
									<!--  <a href="test2">test2</a>    ->        http://localhost:8099/a20_9_16_spring/test2 -->			
	<form action="test3" method="post">
		<input type="submit" value="test3">
	</form>
	<a href="test4">test4</a><br/>
	<form action="test5" method="post">
		<input type="submit" value="test5" onclick="javascript: form.action='/test5';"><!-- /test5(x), test5 -->
		<input type="submit" value="test6" onclick="javascript: form.action='test6';">
	</form>
	<a href="test6">test6_get</a><br/>
	=========================================<br/>
	<h1>TestController2</h1>
	<a href="test1?id=kk&pw=1000&nm=kim&hobby=1000">test1</a><br/>
	<form action="test2" method="post">
		아이디<input type="text" name="id" value="lee"><br/>
		비번<input type="password" name="pw" value="1234"><br/>
		이름<input type="text" name="nm" value="lch"><br/>
		취미<input type="text" name="hobby" value="100"><br/>
		<input type="submit" value="test2">
	</form>
	<a href="test3?id=kk&pw=1111&nm=kim&hobby=1100">test3</a><br/>
	<a href="test4?id=kk&pw=2222&nm=kim&hobby=1200">test4</a><br/>
	<a href="test5?id=kk&pw=3333&nm=kim&hobby=1300">test5</a><br/>
	<a href="test6?id=kk&pw=4444&nm=kim&hobby=1400">test6</a><br/>
	<a href="test7?id=kk&pw=5555&nm=kim&hobby=1500">test7</a><br/>
	<a href="test8?id=kk&pw=6666&nm=kim&hobby=1600">test8</a><br/>
		<form action="r1" method="get">
		
	</form>
	<a href="r3">r3</a><br/>
	<a href="r4?id=kk&pw=1234&nm=kim&hobby=1200">r4</a><br/>
	=========================================<br/>
	<form action="board/write" method="post">
		<input type="text" name="name"><br/>
		<input type="text" name="kor"><br/>
		<input type="text" name="eng"><br/>
		<input type="text" name="mat"><br/>
		<input type="submit" value="계산">
	</form>
</body>
</html>