<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%if(request.getAttribute("data1")!=null){ %>
		data1:${data1}
		data2:${data2}
	<%} %>
</body>
</html>