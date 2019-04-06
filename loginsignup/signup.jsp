<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("rname");
String email=request.getParameter("remail");
String mnumber=request.getParameter("rnumber");
String gender=request.getParameter("rgender");
String pass=request.getParameter("rpass");
String pass1=request.getParameter("rcpass");

if(pass.equals(pass1)){
	try{
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
		PreparedStatement ps = conn.prepareStatement("insert into registration values(?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,mnumber);
		ps.setString(4,gender);
		ps.setString(5,pass);
		
		int x=ps.executeUpdate();
		if(x!=0){
			response.sendRedirect("login.html");
		}
		else{
			out.print("Something went wrong.");
		}
		
	}catch(Exception e){
		out.print("E-mail already registered <a href=login.html>Login here</a>");
		
	}
}
else{
	out.print("Password Mismatch<br> <a href=signup.html>Try Again</a>");
}
%>