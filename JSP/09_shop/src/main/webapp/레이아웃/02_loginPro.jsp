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
	
		Object obj = session.getAttribute("idList");
		String[] idList = (String[])obj;
		
		obj = session.getAttribute("pwList");
		String[] pwList = (String[])obj;
		
		obj = session.getAttribute("memberSize");
		int memberSize = (int)obj;
		
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		
		boolean check = false;
		for(int i = 0; i < memberSize; i++){
			if(idList[i].equals(id) && pwList[i].equals(pw)){
				check = true;
				break;
			}
		}
		
		if(check){
			session.setAttribute("log", id);
			System.out.println("로그인성공!");
			response.sendRedirect("00_mainPage.jsp");
		}else{
			application.log("로그인실패!");
			response.sendRedirect("02_loginPage.jsp");
		}
	%>
</body>
</html>