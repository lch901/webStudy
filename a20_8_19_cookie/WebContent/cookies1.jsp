<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %><!-- 암호화 -->
<%@ page import="java.net.URLDecoder" %><!-- 복호화 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>실행시 서버클라이언트에 쿠키저장(cookie는 클라이언트에 정보를 저장, session은 서버에 정보를 저장)</h1>
	<%
		Cookie cookie1=new Cookie("name",URLEncoder.encode("홍길또이"));//암호화
		Cookie cookie2=new Cookie("job",URLEncoder.encode("학생"));//암호화
		Cookie cookie3=new Cookie("stu","학생생");//디코딩(암호화)없이 생성
		
		
		cookie1.setMaxAge(5);//쿠키 유효(생존)시간
		response.addCookie(cookie1);//개발자도구창(F12)에서 쿠키상태를 볼수 있음.
		response.addCookie(cookie2);
		response.addCookie(cookie3);
	%>
	<%=URLDecoder.decode(cookie1.getValue()) %><!-- cookie1을 복호화 출력 -->
	<%=cookie1.getValue() %>
	<%=cookie2.getValue() %><!-- 암호화상태로 출력 -->
	<%=cookie3.getValue() %><!-- 정보 보호가 안된상태 -->
</body>
</html>