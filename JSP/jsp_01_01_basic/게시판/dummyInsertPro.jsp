<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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

obj = session.getAttribute("lastNum");
int lastNum = (int)obj;

obj = session.getAttribute("count");
int count = (int)obj;	

	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String strDate = sdf.format(date);
	
	for(int i = 0; i < 10; i++){
		lastNum += 1;
		noList[count] = String.valueOf(lastNum);
		writer[count] = "작성자" + lastNum;
		subjectList[count] = "제목" + lastNum;
		contentsList[count] = "내용" + lastNum;
		regDateList[count] = strDate;
		
		count += 1;
	}
	
	session.setAttribute("count", count);
	session.setAttribute("lastNum", lastNum);
	
	



	response.sendRedirect("main.jsp");
%>
</body>
</html>