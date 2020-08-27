<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.*" %>
<%
	String view=(String)request.getAttribute("view");
	MemberVo vo = (MemberVo)session.getAttribute("memberVo");
	if(view==null || view.equals("login.jsp")){
		view="home.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
</head>
<body>
	<div class="container">
		<header>
			<h1>shaun-way back home</h1>
			<audio controls>
				<source src="./music/WayBackHoe.mp3" type="audio/mp3">
			</audio>
			<%if(vo==null){ %>
				<a href="login">로그인</a>
			<%}else{ %>
				<a href="pList">상품리스트</a>
				<a href="purchaseList">구매 리스트</a>
				<a href="basket">마이페이지</a>
				<a href="logout">로그아웃</a>
			<%} %>
		</header>
		<section>
			<jsp:include page="<%=view %>"></jsp:include>
		</section>
		<footer>
			Copyright@ 이딴걸 또 만들게 되서 짜증납니다.
		</footer>
	</div>
</body>
</html>