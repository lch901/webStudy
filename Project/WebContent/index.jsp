<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String view1=(String)request.getAttribute("view1");
	String view2=(String)request.getAttribute("view2");
	
	if(view1 == null){
		view1="main.jsp";
	}
	if(view2 == null){
		view2="sMapShop.jsp";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
html{
	over-flow:scroll;
}
html,body,.container{
	width:100%;
	margin:0;
	padding:0;
}
.container{
	display:flex;
	flex-direction:column;
}
.container > nav{
	height:50px;
	background-color:rgb(180,180,180);
}
.container > header{
	height:200px;
	display:flex;
	justify-content:space-between;
	background-color:rgb(100,100,200);
}
.container > section{
	flex-grow:1;
	display:flex;
}
.container > section > .left{
	width:300px;
	background-color:red;
}
.container > section > .center{
	flex-grow:6;
	display:flex;
	flex-direction: column;
}
.container > section > .center > .main{
	display:flex;
	flex-direction:column;
}
.container > section > .center > .main > .main-top{
	flex-grow:1;
	display:flex;
}
.container > section > .center > .main > .main-top > .top-event{
	width:100%;
	height:800px;
	background-color:green;
}
.container > section > .center > .main > .main-bottom{
	flex-grow:1;
	display:flex;
	justify-content:space-between;
}
.container > section > .center > .main > .main-bottom > .bottom-item1{
	margin:25px 0;
	width:400px;
	height:400px;
	background-color:darkgreen;
}
.container > section > .center > .main > .main-bottom > .bottom-item2{
	margin:25px 0;
	width:400px;
	height:400px;
	background-color:darkgreen;
}
.container > section > .center > .main > .main-bottom > .bottom-item3{
	margin:25px 0;
	width:400px;
	height:400px;
	background-color:darkgreen;
}
.container > section > .center > .smap{
	border-top:1px solid black;
}
.container > section > .center > .smap{
	height:800px;
}
.container > section > .right{
	width:300px;
	background-color:red;
}
.container > footer{
	height:50px;
	background-color:rgb(180,180,180);
}
</style>
</head>
<body>
	<div class="container">
		<nav>
			주도 행사 알림바 h50px
		</nav>
		<header>
			<div>=</div>
			<div>쇼핑몰 이름 및 로고</div>
			<div>
				<a href="">login</a>
				<a href="">cart(*)</a>
				<a href="">help</a>
			</div>
		</header>
		<section>
			<div class="left">w300px</div>
			<div class="center">
				<div class="main">
					<jsp:include page="<%=view1 %>"/>
				</div>
				<div class="smap">
					<jsp:include page="<%=view2 %>"/>
				</div>
			</div>
			<div class="right">w300px</div>
		</section>
		<footer>
			h50px
		</footer>
	</div>
</body>
</html>