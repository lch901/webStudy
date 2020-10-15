<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>웹 프로젝트</title>
</head>
<body>
	<c:import url="include/top.jsp" />
	<c:forEach var="b_list" items="${board_list }">
		<a href="board/main?board_info_idx=${b_list.board_info_idx }">${b_list.board_info_name }</a>
	</c:forEach>
	<a href="user/login">로그인</a>
	<a href="user/join">회원가입</a>
	<br/>
	<br/>
	<c:forEach var="sub_list" items="${list }" varStatus="i">
		${board_list[i.index].board_info_name }
		<c:forEach var="content_list" items="${sub_list }">
			${ content_list.content_idx}
		</c:forEach>
		<br/>
	</c:forEach>
	<c:import url="/WEB-INF/views/include/bottom.jsp"/>
</body>
</html>









