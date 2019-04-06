<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <link rel="icon" type="image/jpg" href="icon.png">
<title>CodeX.in</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/style.css">
<style>
    body{
		background-color: #000000;
		background-image: url(gallery/img/0.jpg);
		background-attachment: fixed;
		background-position: center;
		background-repeat: no-repeat;
		background-size: cover;
    }
    mark{ 
		background-color: darkslategrey;
        color: white;
        border-radius: 6px;
	}
</style>
</head>

<body>

<hr>

<div class="navbar">
<a href="home.jsp">Home</a>
	<div class="dropdown">
	<button class="dropbtn">Courses 
	<i class="fa fa-caret-down"></i>
	</button>
		<div class="dropdown-content">
			<a href="courses/c.html">C</a>
			<a href="courses/cplusplus.html">C++</a>
			<a href="courses/java.html">Java</a>
		</div>
	</div>
<a href="gallery/gallery.html#">Gallery</a>
<a href="aboutus.html">About Us</a>
<a href="contactus.html">Contact Us</a>
<a href="logout.jsp" class="right">Log Out</a>
<a class="right">Welcome 
	<%
        String a=session.getAttribute("eid").toString();
        out.println(a);
    %>
</a>
</div>
    <hr>
    <br>
<div class="row">
		<div class="row">
			<div class="main">
				
                <b>
                <font size="18" color="brown"><mark>C</mark></font>
                <tt><font size="7" color="white">ode</font></tt>
                <font size="18" color="brown"><mark>X</mark></font>
                <tt><font size="7" color="white">.in</font></tt>
                    <font size="3" color="white"><i><u>The Ultimate Search for Online Programming Courses</u></i></font>
                    
                </b>
                <h1><font color="white"><b>Welcome</b></font></h1>		
                <p><font color="white"><b><h4>Welcome to our programming tutorial page.<br> You can learn any programming language for free. </h4></b></font></p>
				<br>
                <h3>One place for all Programming Courses...</h3>
				<h3>Browse through our lessons and start learning...</h3>
				<h3>Under courses you will find the available lessons...</h3>
			</div>
		</div>	
</div><br><br><br><br><br><br><br><hr>
    <footer><font color="black" size="2.5"><i><b>  |  Copyright 2019  |  Designed By Tanmay Sarkar  |  Roll 11   |   Java Oracle </b></i></font></footer><hr>
</body>
</html>