<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String view=(String)request.getAttribute("view");
	if(view==null){
		view="main.jsp";
	}
//	System.out.println(view);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PANTS - 바이슬림</title>
    <link rel="stylesheet" href="css/default.css"/>
    <link rel="stylesheet" href="css/index.css?ver=123"/>
    <link rel="stylesheet" href="css/swiper.css"/>
    <link rel="shortcut icon" href="img/favicons.png"/>
	<link rel="stylesheet" href="css/menubar.css"/>
	<script src="./js/nav_category.js" charset="utf-8"></script>
</head>
<body>
    <div class="container">
        <div class="top_menu clear">
            <div class="top_menu1">
                <ul>
                    <li><a href="/">홈</a></li>
                    <li><a href="#">즐겨찾기</a></li>
                    <li><a href="#">바로가기</a></li>
                </ul>
            </div>
            <div class="top_menu2">
                <ul class="category">
                	<li><a href="login">로그인</a></li>
                    <li><a href="join">회원가입</a></li>
                    <li><a href="myshop">마이쇼핑</a>
                    	<ul class="category-sub">
                    		<li><a href="modify">회원정보</a></li>
                    		<li><a href="order_list">주문내역</a></li>
                    		<li><a href="product_list">관심상품</a></li>
                    		<li><a href="addr_list">배송 주소록</a></li>
                    		<li><a href="board_list">게시물 관리</a></li>
                    	</ul>
                    </li>
                    <li><a href="basket">장바구니</a></li>
                    <li><a href="order">주문조회</a></li>
                    <li><a href="board">고객센터</a></li><!-- customer,event -->
                    <li><input type="search" title="모델명 입력" placeholder=""></li>
                </ul>
            </div>
        </div>
        <header>
            <div>
                <h1>
                    <a href="#"></a>
                </h1>
            </div>
        </header>
        <nav class="clear">
            <div class="menu">
                <ul class="category">
                    <li><a href="#" class="all"></a></li>
                    <li><a href="best">BEST</a></li>
                    <li><a href="neww"><span class="red">NEW</span></a></li>
                    <li><a href="hcozy"><span class="blue">H.COZY-키높이-</span></a></li>
                    <li><a href="top">TOP</a></li>
                    <li><a href="pants">PANTS</a></li>
                    <li><a href="outer">OUTER</a></li>
                    <li><a href="shirt">SHIRT</a></li>
                    <li><a href="shoes">SHOES</a></li>
                    <li><a href="item">ITEM</a></li>
                    <li><a href="sale85">85%SALE</a></li>
                </ul>
            </div>
        </nav>
        <!-- include page -->
		<jsp:include page="<%=view %>"/>
        <footer>
            <div class="foo_menu"> 
                <div class="foo1">
                    <div class="company">
                        <p class="title">옷쇼핑몰</p>
                        <p>회사 : (주)더블오컴퍼니</p>
                        <p>대표 : 김경운, 문흥성</p>
                        <p>사업자등록번호 : [789-81-00418]</p>
                        <p>통신판매업신고 : 제 2016-서울강서-0715호 사업자정보확인</p>
                        <p>개인정보관리책임자 : 김경운 / byslimcom@nate.com 개인정보처리방침</p>
                        <p>주소 : 서울특별시 강서구 허준로 217 (가양동) 가양테크노타운 302호</p>
                        <p>제휴/제안 : byslimcom@nate.com</p>
                    </div>
                    <div class="address">
                        <p class="title">배송 / 반품지원센터</p>
                    </div>
        </footer>
        <div class="pop">
            <ul>
                <li><a href="#"></a></li>
            </ul>
        </div>
    </div>
    <script src="js/jquery.min_1.12.4.js"></script>
    <script src="js/swiper.min.js"></script>
</body>
</html>