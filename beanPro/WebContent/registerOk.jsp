<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="pro.*" %> --%>
<%@page import="pro.MemberDBBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String mem_uid=request.getParameter("mem_uid");
		String mem_pwd=request.getParameter("mem_pwd");
		String mem_pwd_chk=request.getParameter("mem_pwd_chk");
		String mem_name=request.getParameter("mem_name");
		String mem_email=request.getParameter("mem_email");
		String mem_addr=request.getParameter("mem_addr");
		System.out.println(mem_uid);
		System.out.println(mem_pwd);
		System.out.println(mem_pwd_chk);
		System.out.println(mem_name);
		System.out.println(mem_email);
		System.out.println(mem_addr);
		
		pro.MemberBean member=new pro.MemberBean();
		member.setMem_uid(mem_uid);
		member.setMem_pwd(mem_pwd);
		
		MemberDBBean db=MemberDBBean.getInstance();
		db.getConnection();
		db.insertMember(member);
	%>
</body>
</html>