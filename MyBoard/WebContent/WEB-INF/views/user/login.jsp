<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value='${pageContext.request.contextPath}/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="${root }user/login_pro" method="post" modelAttribute="tempLoginUserBean">
		<form:label path="user_id">아이디</form:label>
		<form:inut path="user_id"/>
		<form:errors path="user_id"/>
		
		<form:label path="user_pw">비밀번호</form:label>
		<form:password path="user_pw"/>
		<form:errors path="user_pw"/>
		
		<form:button >로그인</form:button>
		<a href="${root }user/join">회원가입</a>
	</form:form>
</body>
</html>