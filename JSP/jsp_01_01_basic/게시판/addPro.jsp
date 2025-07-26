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
		
		lastNum += 1;
		session.setAttribute("lastNum", lastNum);
		
		obj = session.getAttribute("count");
		int count = (int)obj;
		
		
		String writerName = request.getParameter("writerName");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strDate = sdf.format(date);
		
		noList[count] = String.valueOf(lastNum);
		writer[count] = writerName;
		subjectList[count] = subject;
		contentsList[count] = contents;
		regDateList[count] = strDate;
		
		session.setAttribute("noList", noList);
		session.setAttribute("writer", writer);
		session.setAttribute("subjectList", subjectList);
		session.setAttribute("contentsList", contentsList);
		session.setAttribute("regDateList", regDateList);
		session.setAttribute("count", count + 1);
		
		response.sendRedirect("main.jsp");
	%>
</body>
</html>