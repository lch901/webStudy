<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%-- 숨겨진 오타를 찾기
	<jsp:useBean id="lo" class="glory.Login"/>
	<jsp:setProperty property="name" name="lo"/>
	<jsp:setProperty property="id" name="lo"/>
	<jsp:setProperty property="pw" name="lo"/>
	<jsp:getProperty property="name" name="lo"/><br/>
	<jsp:getProperty property="id" name="lo"/><br/>
	<jsp:getProperty property="pw" name="lo"/><br/> --%>
	
	<jsp:useBean id="log" class="glory.Login" scope="page"/>
	<jsp:setProperty property="name"  name="log"/>
	<jsp:setProperty property="id"  name="log"/>
	<jsp:setProperty property="pw"  name="log"/>
	
	
	<jsp:getProperty property="name" name="log"/>
	<jsp:getProperty property="id" name="log"/>
	<jsp:getProperty property="pw" name="log"/>
	
	<%
		if(log.checkId()){
			out.print("로그인 완료");
		}else{
			out.print("로그인 실패");
		}
	%>
</body>
</html>