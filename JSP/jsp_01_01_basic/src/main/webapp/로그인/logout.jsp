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
		Object obj = session.getAttribute("check");
		String check = (String)obj;
		
		check = "logout";
		session.setAttribute("check", check);
		
		response.sendRedirect("main.jsp");
				
	%>
</body>
</html>