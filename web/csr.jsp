
<!DOCTYPE html>

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
        
        <form method="post" action="csr.jsp">
            	<label>Email Address:</label><input type="text" name="email"/><label>Password:</label><input type="password" name="password" /><input type="submit" value="submit" name="submit"/>
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
            <td><a HREF="vision.jsp">VISION</a></TD>
            <TD> &nbsp;&nbsp;</td>
            <TD> &nbsp;&nbsp;</td>
            <td><a href="csr.jsp">CSR<a/></TD>
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
        <BR></BR>
       			<center>  <strong><H1>CSR</H1></strong></center>
                        <br><br>
                        <table>
<tbody><tr>
<td valign="top">
<p><img src="images/fullsize/csr3.jpg" style="margin:0 10px 10px 0;" align="left" border="0"> <span style=" color:#d97632; font-family: Georgia; font-size:20px;"><strong>"<em>The future is not completely beyond our control. It is the work of our own hands</em>."</strong></span></p>
<p align="justify">Corporate Social Responsibility (CSR) has acquired 
new dimensions in the recent years and has emerged as one of the best 
strategic path that most businesses can follow. CSR is all about taking 
good hearted investment and giving a social value to the business 
endeavors.</p>
<p align="justify">As CSR initiatives, Khanna Paper embrace its 
responsibility for the company's actions and encourage a positive impact
 through its  activities on the environment, consumers, team members, 
communities, stakeholders and all other members of the public sphere.<br> <br> Khanna Paper has been imbibing the case for social good in its operations for decades in the mentioned domains.<br> <br> <br> <span class="orange_heading1">Education</span><br> <br> <img src="images/fullsize/education1.jpg" style="margin:0 10px 10px 0;" align="left" border="0">With
 the purpose of improving, guiding, inspiring and educating the lives of
 girl child, Khanna Paper Mills Ltd. is the bleak future of 
underprivileged girl child. KPM, in collaboration with its team members,
 has tied up with local schools for education of young girl children. 
KPM takes responsibility for enrolling children in these schools and 
bears the cost of fees, uniform, books and travel and hence empowering 
girl child to be well-rounded productive member of society<br> <br> <span class="orange_heading1">Plantation</span><br> <br>
 In face of ever increasing urbanization, Khanna has always been alive 
to environment concerns. It is our intention to give back as much, if 
not more, as is being taken by planting trees to heal the mother Earth. 
Also, the landscaping, greening and maintenance of ?Kitchlu Chownk? 
(Amritsar) is indicative of our rigorous development initiatives in this
 regard.<br> <br> <span class="orange_heading1">Health care Services</span><br> <br>
 Khanna Paper works relentlessly to ensure well being of its team 
members and community. Number of focused initiatives like Free medical 
camps, Health awareness camps have been implemented for overall health 
and wellness of our team members. We also run a Homeopathic clinic 
providing free homeopathy treatment.</p>
<p align="justify"><span class="orange_heading1">Spiritual Growth</span><br> <br>
 Khanna Paper Mills philosophy of ?Healthy Soul in Healthy Body? drives 
it to hold religious get together and discourses in campus where every 
team member is encouraged to participate.</p>

</td>
</tr>

</tbody></table>
   
</body>
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