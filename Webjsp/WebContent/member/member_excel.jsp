<%@ page import="java.sql.*, java.util.*" %>
<%@ page language="java" contentType="application/vnd.ms-excel;charset=euc-kr" %>
<%@ page import="com.test.util.Utility" %>
<%@ page import="com.test.bean.Member_Entity" %>
<%@ page import="com.test.util.ServerInfo" %>
<jsp:useBean id="b_sel" scope="page" class="com.test.bean.Member_Query" />

<%
java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMdd HH:mm:ss");
String today = formatter.format(new java.util.Date());
String todate = today.substring(0,8);

response.setHeader("Content-Disposition", "attachment; filename=Member"+todate+".xls");
response.setHeader("Content-Description", "JSP Generated Data");

boolean han_yn = ServerInfo.GET_HAN;
Vector list  = new Vector();//����� �����ϱ� ���� ���ѹ迭 ����
try{
	list = b_sel.getExcel_Data(request); //ȸ������Ʈ�� ��´�.
	//out.println(b_sel.show_msg()); //��� ���� Ư�� �޼��� ���
	out.println(b_sel.Error_show()); //����� �߻��� ���� �޼��� ���
}catch(Exception e){	out.println("error ="+ e +"<Br>"); }	
int cnt = list.size(); //ȸ�� �ο����� ��´�.
%>

<html>
<body bgcolor=white>
<%
	out.println("<TABLE BORDER=1>\n");
	out.println("<TR align=\"center\">");
	out.println("<TR align=\"center\"> ȸ�� ����Ʈ ("+today+" ����) </TR>");
	out.println("<TR align=\"center\"> ��� : "+ cnt +"�� </TR>");

	out.println("<TR>");
	out.println("<TH bgcolor=\"#cccccc\">��ȣ</TH>");
	out.println("<TH bgcolor=\"#cccccc\">����</TH>");
	out.println("<TH bgcolor=\"#cccccc\">������</TH>");
	out.println("<TH bgcolor=\"#cccccc\">�̸���</TH>");
	out.println("<TH bgcolor=\"#cccccc\">ȸ������</TH>");
	out.println("<TH bgcolor=\"#cccccc\">����</TH>");	
	out.println("</TR>");
	
	int no = cnt;
	//���Ϳ��� ����Ÿ ��� ����Ʈ ���
	for(int i = 0; i <cnt; i++){
		Member_Entity me = (Member_Entity)list.get(i);

		out.println("<TR align=\"left\">");
		out.println("<TD>"+(no--)+"</TD>");
		out.println("<TD>"+me.getName(han_yn)+"</TD>");
		out.println("<TD>"+Utility.date_format1(me.getReg_date(),".")+"</TD>");
		out.println("<TD>"+me.getEmail()+"</TD>");
		if ("M".equals(me.getAccess1())) {
			out.println("<TD> �Ϲ� </TD>");
		}else {
			out.println("<TD> Ư�� </TD>");
		}
		if ("Y".equals(me.getState())) {
			out.println("<TD> ���� </TD>");
		}else {
			out.println("<TD> Ż�� </TD>");
		}
		out.println("</TR>");
	}
	out.println("</TABLE>");
%>
</body> </html> 