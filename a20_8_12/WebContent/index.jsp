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
	<p>���� �ð�:</p>
	<%
		//��ũ��Ʈ ��
		Date now=new Date();
		out.print(now.getYear()+"��"+now.getMonth()+"��"+now.getDate()+"��");
		out.println("println�� �ٶ���� �ȵ�.");
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
		<input type="submit" value="����">
		<input type="reset" value="�ٽ��Է�">
	</form>
</body>
</html>
