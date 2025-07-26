<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>_0201_joinpro.jsp</title>
</head>
<body>
	<%request.setCharacterEncoding("UTF-8"); %>
	
	<%
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "system";
			String pw = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection(url,id,pw);
			
			String sql = "insert into dbsetting02 values(?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1, request.getParameter("id"));
			ps.setString(2, request.getParameter("pw"));
			ps.executeUpdate();
			
			ps.close();
			conn.close();
			
			System.out.println("성공");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("실패");
		}
	%>
	반갑소잉
</body>
</html>