<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <link rel="stylesheet" type="text/css" href="assets/sub.css">
    <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
<br>
<h1>�α���</h1>
<form action="login" method="post">
	<table>
		<tr>
			<td>���̵�</td>
			<td><input type="text" name="id"></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="pw"></td>
		</tr>
		<tr>
			<td><input type="submit" value="�α���"></td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp?view=findIdPw.jsp">���̵�/��й�ȣ ã��</a>
			</td>
			<td></td>
			<td><a href="index.jsp?view=join.jsp">ȸ������</a></td>
		</tr>
	</table>
</form>
