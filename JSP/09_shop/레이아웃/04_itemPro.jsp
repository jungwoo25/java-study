<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Object obj = session.getAttribute("log");
		String log = (String)obj;
		
		if(log == null){
			response.sendRedirect("02_loginPage.jsp");
		}else{
			response.sendRedirect("05_cartPage.jsp");
		}
	%>
</body>
</html>