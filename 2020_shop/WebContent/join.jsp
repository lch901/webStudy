<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="main">
	<form id="f" action="join" method="post"  onsubmit="return chk();">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="mid"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="mpw"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" name="mpw_chk"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="nm"></td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					여<input type="radio" name="sex" value="1">
					남<input type="radio" name="sex" value="2">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="회원가입">
				</td>
			</tr>
		</table>
	</form>
</div>
<script>
	function chk(){
		var f=document.getElementById("f");
		if(f.mid.value===""){
			alert('아이디를 입력하시오.');
			f.mid.focus();
			return false;
		}
		if(f.mpw.value===""){
			alert('비밀번호를 입력하시오.');
			f.mpw.focus();
			return false;
		}
		if(f.mpw_chk.value===""){
			alert('비밀번호 확인을 입력하시오.');
			f.mpw_chk.focus();
			return false;
		}
		if(f.nm.value===""){
			alert('이름을 입력하시오.');
			f.nm.focus();
			return false;
		}
		return true;
	}
</script>
