<%@ page import="com.test.shopp.*" %>
<%@ page import="java.util.*" %>
<%@ page errorPage="/error.jsp" %>
<%@ page contentType="text/html; charset=EUC_KR" %>
<jsp:useBean id="sel" scope="page" class="com.test.shopp.Book_Info_Query" />
<html><head><title>��ٱ���</title></head>
<body>
<center>
<jsp:include page="top.jsp" flush="true"/><br><br>
<h3>å ����Ʈ</h3>
<hr>
<%
	Vector list = new Vector();
    try {
        int num = Integer.parseInt(request.getParameter("num"));
        list = sel.getMulti_Data(request, 1, num);
    }catch(Exception e){
		out.println("error ="+ e +"<Br>");
	}	
%>
<table width="500"  border="1">
  <tr align="center">
    <td> å���� </td><td> ��  �� </td><td> ����(��)</td>
  </tr>
<%
    for(int i = 0; i < list.size(); i++) {
        Book_Info  data = (Book_Info) list.elementAt(i);
%>
	  <tr align="center">
		<td> <a href="book_view.jsp?num=<%= data.getNum() %>"><%= data.getTitle(false) %> </a></td>
		<td> <%= data.getAuthor(false) %> </td>
		<td> <%= data.getPrice() %> </td>
	  </tr>
<%
    }
    if(list.size() < 1) {
%>
	  <tr>
        <td colspan="3" align="center"> �ش� ����Ÿ(å)�� �����ϴ�.</td>
      </tr>
<%  }  %>
</table>
<hr>
</center>
</body>
</html>
