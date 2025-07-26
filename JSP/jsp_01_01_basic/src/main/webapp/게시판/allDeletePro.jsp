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

	Object obj = session.getAttribute("count");
	int count = (int)obj;

	count = 0;
	
	int size = 1000;
	String[] noList = new String[size];
	String[] writerList = new String[size];
	String[] regDateList = new String[size];
	String[] subjectList = new String[size];
	String[] contentsList = new String[size];

	

	
	session.setAttribute("noList", noList);
	session.setAttribute("writer", writerList);
	session.setAttribute("regDateList", regDateList);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	session.setAttribute("count", count);
	
	response.sendRedirect("main.jsp");
	
%>

</body>
</html>