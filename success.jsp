<%
    if ((session.getAttribute("email") == null) || (session.getAttribute("password") == "")) {
%>
You are not logged in<br/>
<a href="index.html">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>
<a href='logout.jsp'>Log out</a>
<%
    }
%>