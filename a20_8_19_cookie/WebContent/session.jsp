<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Integer count = (Integer)session.getAttribute("count");
		if(count == null) {
		count = 1;
		}else{
		count = count + 1; //1씩증가
		}
		session.setAttribute("count", count);
		out.println("방문 횟수: "+count+"<BR>");
		out.println("<P>");
		out.println("<H3>세션 정보 :</H3>");
		Enumeration names = session.getAttributeNames();
		String s_name ="";
		while(names.hasMoreElements()) {
		s_name = (String)names.nextElement();
		out.println("세션변수명 ("+ s_name +")의 값 : "+ ((Integer)session.getAttribute(s_name)).intValue()
		+"<BR><BR>");
		}
		out.println("세션 ID: " + session.getId() + "<BR>");
		out.println("세션 생성: " + session.isNew() + "<BR>");
		out.println("생성 시간: " + session.getCreationTime());
		out.println("<I>(" + new Date(session.getCreationTime()) + ")</I><BR>");
		out.println("마지막 참조 시간: " + session.getLastAccessedTime());
		out.println("<I>(" + new Date(session.getLastAccessedTime()) + ")</I><BR>");
		out.println("세션 요청 여부(쿠키): " + request.isRequestedSessionIdFromCookie() + "<BR>");
		out.println("세션 유효 여부: " + request.isRequestedSessionIdValid() + "<BR>");
	%>
</body>
</html>