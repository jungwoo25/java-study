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
		
		obj = session.getAttribute("index");
		int index = (int)obj;
		
		String pw = request.getParameter("pw");
		
		if(pw.equals(samplePw1[index])){
			for(int i = index; i < count; i++){
				sampleId1[i] = sampleId1[i + 1];
				samplePw1[i] = samplePw1[i + 1];
				sampleName1[i] = sampleName1[i + 1];
				sampleGender1[i] = sampleGender1[i + 1];
				
			}
			check = "logout";
			session.setAttribute("check", check);
			
			session.setAttribute("count", count-1);
			System.out.println("삭제성공");
			response.sendRedirect("main.jsp");
		}else{
			System.out.println("삭제실패");
			response.sendRedirect("delete.jsp");
		}
	%>
	
	
	
</body>
</html>