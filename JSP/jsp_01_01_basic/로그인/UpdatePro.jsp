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
	
	Object obj = session.getAttribute("sampleId1");
	String[] sampleId1 = (String[])obj;
	
	obj = session.getAttribute("samplePw1");
	String[] samplePw1 = (String[])obj;
	
	obj = session.getAttribute("sampleName1");
	String[] sampleName1 = (String[])obj;
	
	obj = session.getAttribute("sampleGender1");
	String[] sampleGender1 = (String[])obj;
	
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	obj = session.getAttribute("index");
	int index = (int)obj;
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	sampleId1[index] = id;
	samplePw1[index] = pw;
	sampleName1[index] = name;
	sampleGender1[index] = gender;
	
	session.setAttribute("sampleId1", sampleId1);
	session.setAttribute("samplePw1", samplePw1);
	session.setAttribute("sampleName1", sampleName1);
	session.setAttribute("sampleGender", sampleGender1);
	
	response.sendRedirect("main.jsp");
	
	
	%>
	
	
</body>
</html>