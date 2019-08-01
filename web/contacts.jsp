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
        
        <form method="post" action="contacts.jsp">
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


    <img src="images/fullsize/contacts.jpg"></img>
    <center>
    <TABLE>
        
        <tr>
           
            <td><a href="onlineenquiry.jsp">ONLINE ENQUIRY</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="orderform.jsp">ORDER FORM</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="ordertracking.jsp">ORDER TRACKING</a></TD>    
        </tr>
    </TABLE>
        <br>
            <br>
     <table>
<tbody><tr>
		<td width="100%" style="color:powderblue ;font-size: 25px">
					Contacts</td></tr>
</tbody></table>
        <br>
        <br>
  <table>
<tbody><tr>
<td valign="top">
<table style="height: 238px;" align="left" border="0" cellpadding="0" cellspacing="0" width="700">
<tbody>
<tr>
<td width="59%"><span style="color:#f17e02 ;font-size: 20px">Works &amp; Corporate Office</span></td>
<td rowspan="6" valign="top" width="41%"></td>
</tr>
<tr>
<td height="10"><br></td>
</tr>
<tr>
    <td><strong style="color:#f17e02 ;font-size: 12px">Khanna Paper Mills Ltd. </strong><br>Fatehgarh Road,<br> Amritsar - 143001<br> Punjab, India<br> <strong> Phone:</strong> +91-183-5067100-109 <br> <strong>Fax:</strong> +91-183-5067110/111<br>
  <strong>Email: info@khannapaper.com</strong>
</tr>
<tr>
<td height="20"><br></td>
</tr>
<tr>
    <td><span style="color:#f17e02 ;font-size: 20px">Gurgaon Offices</span></td>
</tr>
<tr>
<td>
    <p><strong style="color:#f17e02 ;font-size: 12px">Corporate Office<br>Khanna Paper Mills Ltd.<br></strong>B-26 Infocity,<br>Sector-34<br>Gurgaon-122001<br><strong>Phone: </strong>+91-124- 4219167<br><strong>Fax:</strong> +91 -124 -4219168<br>
<strong>E-mail: info.gurgaon@khannapaper.com</strong> 

</tr>
    <br>
<tr>
<td><span style="color:#f17e02 ;font-size: 20px">USA Office</span></td>
</tr>
<tr>
<td><strong style="color:#f17e02 ;font-size: 12px"><br> Khanna Paper Inc<br>
</strong>Suite 211B<br>
50 Harrison Street<br>
Hoboken Business Center<br>
Hoboken, NJ<br>
<strong>Phone:</strong> 201-850-1707<br>
<strong>Fax:</strong> 201-608-6991<strong><br>
Email: info.us@khannapaper.com</strong>
</tr>
<tr>
<td height="20"><br></td>
<td></td>
</tr>
</tbody>
</table>
<p><br><small></small></p>

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