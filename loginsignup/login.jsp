<%@page import="java.sql.*,java.util.*"%>

<%
	String email=request.getParameter("remail");
	String password=request.getParameter("rpass");
	session.setAttribute("email", email);
	String query="select * from REGISTRATION where email=? and password=?";
	
	try{
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","hr","hr");
		PreparedStatement ps= conn.prepareStatement(query);
		ps.setString(1,email);
		ps.setString(2,password);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()){
			response.sendRedirect("../home.html");	
		}
		else{
			out.print("Invalid password or username.<br> <a href=login.html>Try Again</a>");
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>