<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ONLINE PAPER INDUSTRY MANAGEMENT</title>
<meta name="keywords" content="free css templates, real estate website, website templates, W3C, CSS, XHTML" />
<meta name="description" content="Real Estate Template - Free CSS Template, W3C compliant XHTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="gallery_style.css" />
<style>
    a
    {
        text-decoration:none;
    
    }
</style>
</head>
<body>
<div id="templatemo_container">
<div id="templatemo_top_panel">
	<div id="templatemo_header_section">
		<div id="templatemo_header">
        	Paper Mill
        </div>
    </div> <!-- end of header section -->
    
    <div id="templatemo_menu_login_section">
        
        <form method="post" action="workingatkhanna.jsp">
            	<label>Email Address:</label><input type="text" name="email"/><label>Password:</label><input type="password" name="password"/><input type="submit" value="submit" name="submit"/>
        </form>
                <div id="templatemo_menu_section">
            <br></br>
            <div id="templatemo_menu_panel">
                <ul>
                    <li><a href="index.jsp" class="current">Home</a></li>
                    <li><a href="aboutus.jsp">About us</a></li>
                    <li><a href="products.jsp">Products</a></li>
                   <li><a href="careers.jsp">Careers</a></li>                   
                    <li><a href="contacts.jsp">Contacts</a></li>
                </ul> 
            </div> <!-- end of menu -->
        </div>
        
    </div> <!-- end of menu login section -->
</div> <!-- end of top panel -->


    <img src="images/fullsize/careers.jpg"></img>
    <TABLE>
        
        <tr>
            <td><a href="workingatkhanna.jsp">WORKINK AT KHANNA PAPER</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="peoplespeak.jsp">PEOPLE SPEAK</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="applynow.jsp">APPLY NOW</a></TD>
        </tr>
    </TABLE>
     <BR></BR>
        <center> <strong><H1>WORKING AT KHANNA PAPER</H1></strong></center>
        <br>
    <p><img src="images/fullsize/working_at_khanna.jpg" border="0"></p>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td valign="top">
<p>Today?s global business environment is complex &amp; ever changing. 
Companies wanting to maintain their competitive advantage must be aware 
of changing demographics and strive to maximize the contributions of its
 team members. We, at Khanna Paper, strongly believe in managing talents
 to build a learning organization and recognize that a diverse, engaged 
workforce is able to deliver successful business results that are 
critical to our organization?s success.</p>
<p><br> With a state of art, technology and infrastructure, we encourage
 diversity of thought, experience, backgrounds and talents of our team 
members that help us to translate our vision in reality.  In tune to our
 ?GO GREEN? initiative, we not only ensure that our team members work in
 harmony with the nature but we also provide an excellent and congenial 
work environment leveraging talents and fostering growth.</p>
<p style="color:#fe8503 ;font-size: 20px">Rewrite Rules but Retain Values:</p>
<p>To strengthen and promote strong emotive feelings of oneness and 
commitment in team members, we believe in 3Ts that constitute the 
foundation of our working culture.</p>
<ul>
<li>Trust</li>
<li>Transparency </li>
<li>Team</li>
</ul>
<p><span style="color:#fe8503 ;font-size: 20px">We compete for business through the people we employ </span></p>
<p  style="margin-bottom: 0.0001pt"><span>Joining 
Khanna means becoming a part of company that is fast growing, a leader 
in its operations with real career opportunities for its team members. 
We view our human resource as a strategic investment and provide ample 
opportunities for career advancement and professional development.</span></p>
<p>We are a team of professionals carefully selected on the basis of 
education, background, practical experience and demonstrated 
achievements aiming for:</p>
<ul>
<li>Integrity</li>
<li> Hardwork</li>
<li>Innovation</li>
<li> 'Just Do It' Attitude</li>
<li>Creativity</li>
<li>Commitment</li>
<li>Passion to excel</li>
<li>Leadership</li>
<li>TeamWork</li>
</ul>
<p>We nurture a productive and forward thinking workforce that works in alignment with company?s business goals &amp; objectives.</p>
<p  style="margin-bottom: 0.0001pt">&nbsp;</p>
</td>
</tr>
</tbody>
</table>
</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 
    String username = request.getParameter("email");
    String password = request.getParameter("password");
  
  
 
 session.setAttribute("uname",username);
 
 
    Connection conn = null;
    

            
    try {
 
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja", "root", "");
        Statement st = conn.createStatement();
        
        ResultSet rs = st.executeQuery("select emailaddress from adminlogin where emailaddress = '" + username + "' AND password = '" + password + "' ");
        
			
        if (rs.next()) 
			{
                           response.sendRedirect("admin/index1.jsp");
			
                       }
		else {
    		out.println("<script>alert('invalid username or password');</script>");
                }
            conn.close();
    }
       
    catch (Exception e) 
    {
        e.printStackTrace();
    }
  
    
%>
