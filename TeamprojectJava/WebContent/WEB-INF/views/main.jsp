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
	aa
	<c:import url="include/top.jsp" />
	<c:forEach var="board_list" items="${board_list }">
		${board_list.board_info_name }
	</c:forEach>
	<c:forEach var="sub_list" items="${list }">
		<c:forEach var="content_list" items="${sub_list }">
			${ content_list.content_idx}
		</c:forEach>
	</c:forEach>
	<c:import url="/WEB-INF/views/include/bottom.jsp"/>
</body>
</html>









