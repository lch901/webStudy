<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	getpram
	<%
		request.setCharacterEncoding("UTF-8"); 
		String name=request.getParameter("name");
		String juso=request.getParameter("juso");
		String gender=request.getParameter("gender");
		//String[] animol_arr= new String[3];
		String animol[]=request.getParameterValues("animol");
	%>
	<h1>이름 : <%=name%></h1>
	<h1>주소 : <%=juso %></h1>
	<h1>성별 : <%=gender %></h1>
	<h1>반려동물 : 
		<%for(int i=0;i<animol.length;i++){
			out.println(animol[i]);	
			if(i<animol.length-1){
				out.println(",");
			}
		}%>
	</h1>
	<h1>믜능랑</h1>
<%-- 	<%response.sendRedirect("insertForm.jsp?name="+name); %> --%>
</body>
</html>