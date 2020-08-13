<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>현재 시각:</p>
	<%
		//스크립트 윗
		Date now=new Date();
		out.print(now.getYear()+"년"+now.getMonth()+"월"+now.getDate()+"일");
		out.println("println로 줄띄움이 안됨.");
	%>
	<br>
	<%=now %>
	<form name="form1" action="a20_8_12/jspteset/CalcServlet" method="get">
		<input type="text" name="num1">
		<select name="operator">
			<option>+</option>
			<option>-</option>
			<option>*</option>
			<option>/</option>
		</select>
		<input type="text" name="num2">
		<input type="submit" value="전송">
		<input type="reset" value="다시입력">
	</form>
</body>
</html>
