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
	
	obj = session.getAttribute("check");
	String check = (String)obj;
	
	obj = session.getAttribute("count");
	int count = (int)obj;
	
	
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	
	sampleId1[count] = id;
	samplePw1[count] = pw;
	sampleName1[count] = name;
	sampleGender1[count] = gender;
	
	session.setAttribute("count", count + 1);
	
	response.sendRedirect("main.jsp");
	%>
</body>
</html>