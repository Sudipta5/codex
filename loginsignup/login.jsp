<%@page import="java.sql.*,java.util.*"%>

<%
	String email=request.getParameter("remail");
	String pass=request.getParameter("rpass");
	String query="select * from REGISTRATION where email=? and pass=?";
	
	try{
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		PreparedStatement ps= conn.prepareStatement(query);
		ps.setString(1,email);
		ps.setString(2,pass);
		
		ResultSet rs=ps.executeQuery();
		
		if(rs.next()){
			
			session = request.getSession();
			session.setAttribute("eid", email);
			response.sendRedirect("../home.jsp");	
		}
		else{
			out.print("Invalid password or username.<br> <a href=login.html>Try Again</a>");
		}
	}
	catch (Exception e) {
		e.printStackTrace();
	}
%>