<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg=(String)request.getAttribute("msg");	
	String mid=(String)request.getAttribute("mid");
	if(mid==null){
		mid="";
	}
	if(msg!=null){
		out.print(msg);
	}
%>
<div class="main">
	<h1>User Login</h1>
	<form action="login" method="post" onsubmit="reutrn chk()">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="mid" value="<%=mid%>"></td>
			</tr>
			<tr>
				<td>비번</td>
				<td><input type="text" name="mpw"></td>
				<td><input type="button" value="회원가입" onclick="location.href='join'"></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="로그인">
				</td>
			</tr>
		</table>
	</form>
</div>
<script>
	function chk(){
		var f = document.getElementById("f");
		if(f.mid.value===''){
			alert('아이디를 입력하시오');
			f.mid.focus();
			return false;
		}
		if(f.mpw.value===''){
			alert('비번을 입력하시오');
			f.mpw.focus();
			return false;
		}
		return true;
	}
</script>