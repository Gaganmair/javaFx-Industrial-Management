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
        
        <form method="post" action="powergeneration.jsp">
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
            <td><a href="mission.jsp">MISSION<a/></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="vision.jsp">VISION</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="csr.jsp">CSR</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
           <td><a href="proudtobegreen.jsp">PROUD TO BE GREEN</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
           <td><a href="ourcustomer.jsp">OUR CUSTOMER</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="powergeneration.jsp">POWER GENERATION</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="environmentaldata.jsp">ENVIRONMENTAL DATA</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="overview.jsp">US PROCUREMENT Arm</a></TD>
            
            
            
            
        </tr>
    </TABLE>

    
    <div>
        <BR></BR>
        <center>  <strong><H1>POWER GENERATION</H1></strong></center>
        <br>
            
            

<table class="contentpaneopen">



<tbody><tr>
<td valign="top">
<p><strong><img src="images/fullsize/power_generation.jpg" border="0" height="58" width="458"><br><br>Recycling mills</strong>
 purchase most of their energy from local  power companies, and since 
recycling mills tend to be in urban areas, it is  likely that the 
electricity is generated by burning fossil fuels. Khanna Paper Mills  
has made an exception here too. KPM generates  power in-house and is 
&nbsp;self sufficient  and caters to the power and steam demand of the 
entire production plant.</p>
<p>Khanna Paper Mills produces around  <strong>170 TPH</strong> of super
 heated steam for power generation at the tune of 28 MW.  Utilities are 
equipped with two AFBC boilers and two turbo generators of  Siemens. 
Both boilers are equipped with ESP that ensure conformance to  pollution
 norms.<br> <br> Load management  system is PLC controlled and able to 
automatically shed the least required load  without affecting the plant 
supply.</p>

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