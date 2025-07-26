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
		
		obj = session.getAttribute("adminId");
		String adminId = (String)obj;
		
		obj = session.getAttribute("adminPw");
		String adminPw = (String)obj;
		
		obj = session.getAttribute("check");
		String check = (String)obj;
		
		obj = session.getAttribute("count");
		int count = (int)obj;
		
		
		
		obj = session.getAttribute("index");
		int index = (int)obj;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals(adminId)){
			if(pw.equals(adminPw)){
				check = "adminLogin";
				session.setAttribute("check", check);
				System.out.println("관리자 로그인 성공");
			}
		}
		
		for(int i = 0; i < count; i++){
			if(id.equals(sampleId1[i])){
				if(pw.equals(samplePw1[i])){
					check = "login";
					session.setAttribute("check", check);
					session.setAttribute("index", i);
					System.out.println("로그인성공");
					
				}
			}
		}
		
		if(check.equals("logout")){
			System.out.println("로그인실패");
			response.sendRedirect("loginForm.jsp");
		}else{
			response.sendRedirect("main.jsp");
		}
	%>
</body>
</html>