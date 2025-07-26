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
	request.setCharacterEncoding("UTF-8");

	Object obj = session.getAttribute("subjectList");
	String[] subjectList = (String[])obj;

	obj = session.getAttribute("contentsList");
	String[] contentsList = (String[])obj;
	
	int index = Integer.parseInt(request.getParameter("index"));
	
	String subjectList2 = request.getParameter("subjectList");
	String contentsList2 = request.getParameter("contentsList");
	
	subjectList[index] = subjectList2;
	contentsList[index] = contentsList2;
	
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("contentsList", contentsList);
	
	response.sendRedirect("allPage.jsp");

	
	
%>
</body>
</html>