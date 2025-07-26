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
	String[] sampleId= {"qwer", "abcd", "hello"};
	 String[] samplePw= {"1111", "2222", "3333"};
	 String[] sampleName= {"이만수", "박영희", "이수민"};
	 String[] sampleGender= {"남성", "여성", "여성"};
	 
	 String adminId = "admin";
	 String adminPw = "admin";
	 
	 int size = 100;
	 int count = sampleId.length;
	 
	 String[] sampleId1 = new String[size];
	 String[] samplePw1 = new String[size];
	 String[] sampleName1 = new String[size];
	 String[] sampleGender1 = new String[size];
	 
	 for(int i = 0; i < count; i++){
		 sampleId1[i] = sampleId[i];
		 samplePw1[i] = samplePw[i];
		 sampleName1[i] = sampleName[i];
		 sampleGender1[i] = sampleGender[i];
	 }
	 
	 String check = "logout";
	 int index = -1; 
	
	 
	 
	 session.setAttribute("sampleId1", sampleId1);
	 session.setAttribute("samplePw1", samplePw1);
	 session.setAttribute("sampleName1", sampleName1);
	 session.setAttribute("sampleGender1", sampleGender1);
	 session.setAttribute("adminId", adminId);
	 session.setAttribute("adminPw", adminPw);
	 session.setAttribute("index", index);
	 session.setAttribute("check", check);
	 session.setAttribute("count", count);
	 
	 response.sendRedirect("main.jsp");
	%>
</body>
</html>