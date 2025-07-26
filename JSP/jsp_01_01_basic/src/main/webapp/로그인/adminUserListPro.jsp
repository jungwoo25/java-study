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
		
		int index2 = Integer.parseInt(request.getParameter("index2"));
		
		int index3 = 0;
		
		for(int i = 0; i < count; i++){
			if(i == index2){
				index3 = i;
			}
		}
		
		for(int i = index3; i < count; i++){
			sampleId1[i] = sampleId1[i + 1];
			samplePw1[i] = samplePw1[i + 1];
			sampleName1[i] = sampleName1[i + 1];
			sampleGender1[i] = sampleGender1[i + 1];
			
			session.setAttribute("count", count - 1);
		}
		
		response.sendRedirect("adminUserList.jsp");
	%>
</body>
</html>