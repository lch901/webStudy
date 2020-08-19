<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		boolean sw=false;
		String message="<h2>설정된 쿠키 정보</h2>";
		Cookie date=null;
		Cookie cnt=null;
		Cookie cook[]=request.getCookies();	
			
		if(cook!=null){
			for(int i=0;i<cook.length;i++){
				message +="쿠키이름"+cook[i].getName()+"/쿠키값 :"+cook[i].getValue()+"<br>";
				
				out.print("aa = "+cook[i].getName());
				if(cook[i].getName().equals("dateCookie")){
					date=cook[i];
					sw=true;
				}else if(cook[i].getName().equals("cntCookie")){
					cnt=cook[i];
				}
			}
		}else{
			message+="사이트 첫방문 ㅊㅋ<br>";
		}
		String dateValue=String.valueOf(System.currentTimeMillis());
		out.print(dateValue);
		
		if(!sw){//sw가 false일때 실행
			date=new Cookie("dateCookie",dateValue);
			date.setMaxAge(10);
			date.setPath("/");
			response.addCookie(date);
			
			cnt=new Cookie("cntCookie","1");
			date.setMaxAge(10);
			date.setPath("/");
			response.addCookie(cnt);
		}else{
			long conv=Long.parseLong(date.getValue());
			int count=Integer.parseInt(cnt.getValue())+1;
			
			message +="<hr>마지막방문 : "+new Date(conv)+"<br>방문횟수"+count;
			
			date.setValue(dateValue);
			date.setMaxAge(10);
			date.setPath("/");
			response.addCookie(date);
			
			cnt.setValue(String.valueOf(count));
			cnt.setMaxAge(10);
			cnt.setPath("/");
			response.addCookie(cnt);
		}
		out.print("msg : "+message);
	%>
</body>
</html>