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
        
        <form method="post" action="overview.jsp">
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


    <img src="images/fullsize/mission.jpg"></img>
    <TABLE>
        
        <tr>
            <td><a href="overview.jsp">OVERVIEW</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="whatwe.jsp">WHAT WE PROCURE</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="partner.jsp">PARTNER WITH US</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
           <td><a href="contactus.jsp">CONTACT US</a></TD>
             </tr>
    </TABLE>

    <div>
        <BR></BR>
        <center>  <strong><H1>OVERVIEW</H1></strong></center>
        <br>


<table>
<tbody><tr>
<td valign="top">
<p><strong>Khanna Paper Inc, USA</strong> is a procurement arm of Khanna
 Paper Mills, India. It purchases Recycled Fiber from United States of 
America. Khanna Paper Mills, India annually produces 3,30,000 MT of 
Paper and Board annually utilizing <strong>400,000 MT of Recycled Fiber</strong>. <br> <br>We
 target to annually procure 2,50,000 MT of Waste Paper and 40000 MT of 
Pulp. We have established close relationships with suppliers, mills and 
has built a collaborative network of trading partners around the world.</p>
<p><br><span class="orange_heading1">Khanna Paper Inc, USA prime focus:</span><br><br></p>
<ul>
<li>Is trading Waste Paper and pulp from North America to India. </li>
<li>Khanna Paper Mills principles for fiber are simple:                 
<ul>
<li>Create value by focusing on long-term relationships rather than market timing. </li>
<li>Establish long-term contracts for fixed volume linked to a price index. </li>
<li>Collaborate with paper mills to reduce structural costs, including: ?
 Freight ? Inventory ? Administration ? Financial and fixed costs. </li>
</ul>
</li>
</ul>

</td>
</tr>

</tbody></table>
            
        </br>
    
    </div>

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