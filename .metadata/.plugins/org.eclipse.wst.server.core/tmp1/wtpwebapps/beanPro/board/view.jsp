<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글내용</h1>
	<table>
		<tr>
			<td>글번호</td>
			<td></td>
			<td>조회수</td>
			<td></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td></td>
			<td>작성일</td>
			<td></td>
		</tr>
		<tr>
			<td>글제목</td>
			<td></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td></td>
		</tr>
		<tr>
			<td>
				<input type="button" value="글수정" onclick="location.href='edit.jsp'">
				<input type="button" value="글삭제" onclick="location.href='bdelete.jsp'">
				<input type="button" value="답변글" onclick="location.href='write.jsp'">
				<input type="button" value="글목록" onclick="location.href='list.jsp'">
			</td>
		</tr>
	</table>
</body>
</html>