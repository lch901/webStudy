<%@ page contentType="text/html; charset=euc-kr" %> 
<%@ page import="java.util.*" %>

<jsp:useBean id="b_data" scope="page" class="com.test.bean.Member_Entity"/>
<jsp:setProperty name="b_data" property="*"/>
<jsp:useBean id="b_update" scope="page" class="com.test.bean.Member_Update"/>

<%
	//out.println("data = "+ b_data.toInfoString());
	boolean data_yn = false;
	try{
		data_yn = b_update.execUpdate(b_data, request);
	    //out.println("Msg = "+ b_update.show_msg()); 
		out.println(b_update.Error_show()); 
	}catch(Exception e){
		out.println("error ="+ e +"<Br>");
	}	 	
%>

<html>
<title></title>
	<meta http-equiv="Content-type" content="text/html; charset=euc-kr">
	<link href="../ssem.css" rel="stylesheet" type="text/css">
</head> 
<body bgcolor=#D4D0C8>
<br><br>

<%
	if(data_yn){
%>
		<script>
			alert("��û�Ͻ� �۾��� �Ϸ��Ͽ����ϴ�.");
		</script>
<%
	}
	else{
%>			
	<script>
		alert("��û�Ͻ� �۾��� �����Ͽ����ϴ�.");
	</script>

<%
	}
%>

<meta http-equiv="REFRESH" content="1;url=./member_list.jsp">

</body>
</html>	