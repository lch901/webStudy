<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인터셉터 실습(TestController)</h1>
	<img src="images/1.png" alt="메이븐" /> <br/>
	<a href="user/modify">user/modify</a><br/><!-- a링크 클릭시 진행경로 : pre(interceptor) - controller - post(interceptor) - views - after(interceptor) -->
	<a href="user/logout">user/logout</a><br/>
	<a href="board/write">board/write</a><br/>
	<a href="board/main">board/main</a><br/>
	<a href="board/modify">board/modify</a><br/>
	<a href="board/delete">board/delete</a><br/>
	
	<h1>예외처리 실습(TestController2)</h1>
	<a href="test1">test1</a><br/>
	<a href="test2">test2</a><br/>
	<a href=""></a>
	
	<h1>restController 테스트</h1>
	<a href="test3">test3파일로 이동하는 것이 아님</a><br/>
	<a href="test4">test4파일로 이동하는 것이 아님</a><br/>
</body>
</html>