<%@ page import="com.test.util.Utility" %>
<%
	String u_num 	= Utility.getSession(request, "u_num");//�Ϸù�ȣ
	String u_id 	= Utility.getSession(request, "u_id");	//���̵�
 	String u_name 	= Utility.getSession(request, "u_name");//����
 	String u_email	= Utility.getSession(request, "u_email");//�̸���
 	String u_allow	= Utility.getSession(request, "u_allow");//����(ȸ������ �Ϲ�-M, Ư�� - S)
%>