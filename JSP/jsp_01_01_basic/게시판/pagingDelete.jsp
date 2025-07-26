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
	
	Object obj = session.getAttribute("noList");
	String[] noList = (String[])obj;
	
	obj = session.getAttribute("writer");
	String[] writer = (String[])obj;
	
	obj = session.getAttribute("subjectList");
	String[] subjectList = (String[])obj;
	
	obj = session.getAttribute("regDateList");
	String[] regDateList = (String[])obj;
	
	obj = session.getAttribute("contentsList");
	String[] contentsList = (String[])obj;
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	int index = Integer.parseInt(request.getParameter("index"));
	
	for(int i = index; i < count; i++){
		noList[i] = noList[i + 1];
		writer[i] = writer[i + 1];
		subjectList[i] = subjectList[i + 1];
		regDateList[i] = regDateList[i + 1];
		contentsList[i] = contentsList[i + 1];
	}
	
	session.setAttribute("noList", noList);
	session.setAttribute("writer", writer);
	session.setAttribute("subjectList", subjectList);
	session.setAttribute("regDateList", regDateList);
	session.setAttribute("regDateList", regDateList);
	session.setAttribute("count", count - 1);
	
	response.sendRedirect("paging.jsp");
	
	%>
</body>
</html>