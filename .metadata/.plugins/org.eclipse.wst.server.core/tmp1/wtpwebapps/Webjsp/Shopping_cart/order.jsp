<%@ page import="com.test.shopp.*" %>
<%@ page import="java.util.*" %>
<%@ page errorPage="/error.jsp" %>
<%@ page contentType="text/html; charset=EUC_KR" %>
<jsp:useBean id="cart" class="com.test.shopp.Shopp_Cart" scope="session"/>
<html>
<head><title>��ٱ���</title></head>
<body>
<center>
<jsp:include page="top.jsp" flush="true"/>
<table width="500" border="1" >
		  <tr align="center">
		    <td width="50"> ��ȣ </td>
		    <td width="350"> ���� </td>
		    <td width="50"> ���� </td>
		    <td width="50"> �ݾ� </td>
		  </tr>  
<%  int cnt = cart.getSize();  
    for (int i = 0; i < cnt; i++) {
        Book_Info  book = cart.getBook(i);
	    int num = cart.getNum(i);
%>
		  <tr>
		  	<td align="center"><%= (i+1) %> </td>
		    <td><%= book.getTitle(true) %> </td>
		    <td align="center"><%= num %>��</td>
		    <td align="right"><%= (book.getPrice() * num) %></td>
		  </tr>
<%
    }
%>
</table>
<br>
<%  if(cnt < 1) { %>
         �ֹ� ó���� ������ �����ϴ�. <a href="index.jsp"> Ȯ�� </a>
<%  }else { %>         
         ��û�Ͻ� ���� å(��)��  �ֹ��� �Ϸ�Ǿ����ϴ�. <a href="index.jsp"> Ȯ�� </a>
<%  }  %>         

<% session.invalidate();  %>
<hr>
</center>
</body>
</html>