<%@ page import="com.test.shopp.*" %>
<%@ page import="java.util.*" %>
<%@ page errorPage="/error.jsp" %>
<%@ page contentType="text/html; charset=EUC_KR" %>
<jsp:useBean id="sel" scope="page" class="com.test.shopp.Book_Info_Query" />
<html><head><title>��ٱ���</title></head>
<body>
<center>
<jsp:include page="top.jsp" flush="true"/>
<h3>å ����</h3>
<hr>
<%
	Vector list = new Vector();
	Book_Info data = null;
    try {
        int num = Integer.parseInt(request.getParameter("num"));
        list = sel.getMulti_Data(request, 2, num);
       	data = (Book_Info) list.elementAt(0);
    }catch(Exception e){
		out.println("error ="+ e +"<Br>");
	}
%>
<table width=500 border="1"> 
  <tr>
    <td width=150>����</td>
    <td width=350><%= data.getTitle(false) %></td>
  </tr>
  <tr>
    <td width=150>����</td>
    <td width=350><%= data.getAuthor(false) %></td>
  </tr>
  <tr>
    <td width=150>���ǻ�</td>
    <td width=350><%= data.getCompany(false) %></td>
  </tr>
  <tr>
    <td width=150>���ǳ����</td>
    <td width=350><%= data.getC_date() %></td>
  </tr>
  <tr>
    <td width=150>����(��)</td>
    <td width=350><%= data.getPrice() %></td>
  </tr>
</table>
<form method="post" action="addGoods_cart.jsp">
  <input type="hidden" name="num" value="<%= data.getNum() %>">
  <input type="hidden" name="title" value="<%= data.getTitle(false) %>">
  <input type="hidden" name="author" value="<%= data.getAuthor(false) %>">
  <input type="hidden" name="company" value="<%= data.getCompany(false) %>">
  <input type="hidden" name="price" value="<%= data.getPrice() %>">
  <input type="submit" value="��ٱ��Ͽ� ���">
</form>
<hr>
</center>
</body>
</html>
