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
		
		session.setAttribute("log", null);
		
		response.sendRedirect("00_mainPage.jsp");
	 %>
</body>
</html>