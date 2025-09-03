<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<%
		int custno = Integer.parseInt(request.getParameter("index"));
	
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "system";
			String pw = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection(url, id, pw);
			
			String sql = "delete from member_tbl_02 where custno = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, custno);
			
			ps.executeUpdate();
			ps.close();
			conn.close();
			response.sendRedirect("memberList.jsp");
			
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("접속실패 Delete");
		}
	%>
</body>
</html>