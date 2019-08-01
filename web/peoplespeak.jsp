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
        
        <form method="post" action="peoplespeak.jsp">
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
    </br>
    <BR></BR>
        <center> <strong><H1>PEOPLE SPEAK</H1></strong></center>
        <br>
<table>
<tbody><tr>
<td valign="top">
<p><span><img src="images/fullsize/sajan-mishra.jpg" style="float: left; border: 0; margin-left: 10px; margin-right: 10px;" align="left" border="0" hspace="10"></span><span style="color:#f17e02 ;font-size: 15px">Mr.Sajan Kumar Mishra<br></span>Sr. VP (Works)<span style="color:#f17e02 ;font-size: 15px"><br> 6 years with</span> Khanna Paper Mills</p>
<p><em>"The diverse opportunities here are unbelievable. I?ve had the 
privilege to work with some of the most talented and passionate 
professionals in the industry. They are focused, energized and want to 
succeed ? but more importantly, they want to make a difference. I?m very
 fortunate to have an opportunity to make my mark with such a pivotal 
organization."</em><br>
  <br> 
  <br>
</p>
<p><span><img src="images/fullsize/anil.jpg" style="float: left; border: 0; margin-left: 10px; margin-right: 10px;" align="left" border="0" hspace="10"></span><span style="color:#f17e02 ;font-size: 15px">Mr. Anil Trakroo<br></span>AVP (Project &amp; Engineering)<span style="color:#f17e02 ;font-size: 15px"><br> 2.5 years  with </span> Khanna Paper Mills</p>
<p><em>?It has been exciting and challenging to be a part of growth and 
development of Khanna Paper Mills. Growth at Khanna is a factor of 
consistent value contribution and excellence in performance. Khanna?s 
work culture is like a plant that fertilizes the soil around it. The 
management has been able to create a sense of camaraderie among the 
entire KPM force and being here feels like being in my own family.?</em><br> <br> <br></p>
<p><span><img src="images/fullsize/arun.jpg" style="float: left; border: 0; margin-left: 10px; margin-right: 10px;" align="left" border="0" hspace="10"></span><span style="color:#f17e02 ;font-size: 15px">Mr. Arun Sharma<br> GM (Mechanical)<br> </span>18 years with Khanna Paper Mills</p>
<p><em>"This is an intense place with great people. The leadership 
skills at Khanna Paper Mills is very supportive about giving you the 
opportunity to succeed."</em></p>
<p><br>
  <br>
</p>
<p><span><img src="images/fullsize/kishan-salman.jpg" style="float: left; border: 0; margin-left: 10px; margin-right: 10px;" align="left" border="0" hspace="10"></span><span style="color:#f17e02 ;font-size: 15px">Mr. Shiben Kishan<br>Sr. Manager (Billing &amp; Dispatch)<br></span>33 years with Khanna Paper Mills</p>
<p><em>"Individuals who care about making a difference and are extremely
 impact oriented. We and our team-mates challenge &amp; support each 
other. Maintaining relationships with clients over time."<br> </em><br> <br></p>
<p><em><br> </em></p>

</td>
</tr>

</tbody></table>

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