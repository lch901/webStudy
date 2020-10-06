<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="beans.DataBean" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�α���</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <link href="https://fonts.googleapis.com/css?family=Bebas+Neue&display=swap" rel="stylesheet">
</head>
<body>
	<%
		String id=(String)request.getAttribute("id");
		if(id==null){
			id="";
		}
		String msg=(String)request.getAttribute("msg");
		if(msg!=null){
			%><script>alert('<%=msg%>')</script><%
		}
		
	%>
    <section class="login_form">
        <h1>�α��� �� ȸ������</h1>
        <form action="login_result" method="post" onsubmit="return chk();">
            <!-- ���̵� �Է� -->
            <div class="int_area">
                <input type="text" name="id" id="id" autocomplete="off" value="<%=id %>" required>
                <label for="id">username</label>
            </div>

            <!-- ��й�ȣ �Է� -->
            <div class="int_area">
                <input type="password" name="pw" autocomplete="off" required >
                <label for="pw">password</label>
            </div>
		
            <!-- ��ư���� -->
            <div class="btn_area">
                <button type="submit">�α���</button>
            </div>
            <div class="caption">
                <a href="join">ȸ������</a>
            </div>
        </form>
        <br>
        <br>
       
    </section>
</body>
</html>
<script>
	function chk(){
		var id=document.getElementById('id');
		var id=document.getElementById('pw');
		if(id===''){
			id.focus();
			return false;
		}
		if(pw===''){
			pw.focus();
			return false;
		}
		return true;
	}
</script>