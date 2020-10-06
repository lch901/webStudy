<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		Controller에서 가져올때 첫글자를 소문자로 바꿔야함.
		data1:${DataBean.data1 }<br/>	<- 에러
		data2:${DataBean.data2 }		<- 에러
	 -->
	data1:${dataBean.data1 }<br/>
	data2:${dataBean.data2 }
</body>
</html>