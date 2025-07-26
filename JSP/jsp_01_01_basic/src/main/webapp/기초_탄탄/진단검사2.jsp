<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
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
	ArrayList<String[]> list = new ArrayList<String[]>();
		try{
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "system";
			String pw = "1234";
			
			Class.forName("oracle.jdbc.OracleDriver");
			Connection conn = DriverManager.getConnection(url, id, pw);
			
			String sql = "select p.p_city, count(*) ";
					sql += "from tb04_patient p, tb04_result r, tb04_lab l ";
					sql += "where p.p_no = r.p_no AND r.t_code = l.t_code ";
					sql += "group by p.p_city ";
					sql += "order by count(*) desc, p.p_city asc ";
			
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				String[] data = new String[2];
				
				data[0] = rs.getString(1);
				data[1] = rs.getString(2);
				
				list.add(data);
			}
			conn.commit();
			
			conn.close();
			ps.close();
			
			System.out.println("성공");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("실패");
		}
	%>
	
	
</body>
</html>