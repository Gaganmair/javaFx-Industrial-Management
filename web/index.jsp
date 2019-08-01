<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ONLINE PAPER INDUSTRY MANAGEMENT</title>
<meta name="keywords" content="free css templates, real estate website, website templates, W3C, CSS, XHTML" />
<meta name="description" content="Real Estate Template - Free CSS Template, W3C compliant XHTML CSS layout" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="gallery_style.css" />
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
        
        <form method="post" action="index.jsp">
            	<label>Email Address:</label><input type="text" name="email"  /><label>Password:</label><input type="password" name="password"  /><input type="submit" value="login" name="submit" />
        </form>                
    	<div id="templatemo_menu_section">
            <br></br>
            <div id="templatemo_menu_panel">
                <ul>
                    <li><a href="news.jsp">  <img src="images/news/text.gif"></img></a></li>
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

<div id="templatemo_gallery_panel">
<div id="gallery">
  <div id="imagearea">
    <div id="image">
      <a href="javascript:slideShow.nav(-1)" class="imgnav " id="previmg"></a>
      <a href="javascript:slideShow.nav(1)" class="imgnav " id="nextimg"></a>
    </div>
  </div>
  <div id="thumbwrapper">
    <div id="thumbarea">
      <ul id="thumbs">
        <li value="1"><img src="images/thumbs/1.jpg" width="179" height="100" alt="" /></li>
        <li value="2"><img src="images/thumbs/2.jpg" width="179" height="100" alt="" /></li>
        <li value="3"><img src="images/thumbs/3.jpg" width="179" height="100" alt="" /></li>
        <li value="4"><img src="images/thumbs/4.jpg" width="179" height="100" alt="" /></li>
        <li value="5"><img src="images/thumbs/5.jpg" width="179" height="100" alt="" /></li>
        <li value="3"><img src="images/thumbs/6.jpg" width="179" height="100" alt="" /></li>
        <li value="4"><img src="images/thumbs/7.jpg" width="179" height="100" alt="" /></li>
        <li value="5"><img src="images/thumbs/8.jpg" width="179" height="100" alt="" /></li>
      </ul>
    </div>
  </div>
</div>

<script type="text/javascript">
var imgid = 'image';
var imgdir = 'images/fullsize';
var imgext = '.jpg';
var thumbid = 'thumbs';
var auto = true;
var autodelay = 5;
</script>
<script type="text/javascript" src="slide.js"></script>

</div>
<font size="2">
<b> Khanna Paper Inc</b>, USA is a procurement arm of Khanna Paper Mills, India. It purchases Recycled Fiber from United States of America. Khanna Paper Mills, India annually produces 3,30,000 MT of Paper and Board annually utilizing 400,000 MT of Recycled Fiber.

We target to annually procure 2,50,000 MT of Waste Paper and 40000 MT of Pulp. We have established close relationships with suppliers, mills and has built a collaborative network of trading partners around the world.     
   Khanna Paper Inc, USA prime focus:s trading Waste Paper and pulp from North America to India.
</font> </br>
   
    <img src="images/fullsize/our_facilities.jpg" ></img>
      <img src="images/fullsize/proud_to_greener.jpg"></img>

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
        
        ResultSet rs = st.executeQuery("select email from adminlogin where email = '" + username + "' AND password = '" + password + "' ");
        
			
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