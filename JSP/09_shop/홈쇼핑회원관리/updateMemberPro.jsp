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
	<%
		request.setCharacterEncoding("UTF-8");
		
		int custno = Integer.parseInt(request.getParameter("custno"));
		String custname = request.getParameter("custname");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		String joindate = request.getParameter("joindate");
		
		java.sql.Date sqlDate = java.sql.Date.valueOf(joindate);
		String grade = request.getParameter("grade");
		String city = request.getParameter("city");
	
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "system";
			String pw = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection(url, id, pw);
			
			String sql = "update member_tbl_02 set custname=?,phone=?,address=?,joindate=?,grade=?,city=? where custno=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setString(1,custname);
			ps.setString(2,phone);
			ps.setString(3,address);
			ps.setDate(4,sqlDate);
			ps.setString(5,grade);
			ps.setString(6,city);
			ps.setInt(7,custno);
			
			ps.executeUpdate();
			ps.close();
			conn.close();
			
			response.sendRedirect("memberList.jsp");
			
		}catch(Exception e){
			e.printStackTrace();
			out.println("<h3>오류가 발생했습니다. 다시 시도해주세요.</h3>");
		}
	%>
</body>
</html>