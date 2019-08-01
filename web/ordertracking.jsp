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

<script type="text/javascript">
<!--
function validate_form ( )
{
 
if ( document.emp.cname.value == "" )
{
alert ( "Please fill in the 'Company Name' box." );
return false;
}
 if ( document.emp.address.value == "" )
{
alert ( "Enter The Address" );
return false;
}
if ( document.emp.cdetail.value == "" )
{
alert ( "Enter Contact Detail" );
return false;
}
 if ( document.emp.onumber.value == "" )
{
alert ( "Enter The Order Number" );
return false;
}
return true;
} 
function isNumberKey(evt)
{
var charCode = (evt.which) ? evt.which : event.keyCode;
if (charCode != 46 && charCode > 31
&& (charCode < 48 || charCode > 57))
{alert("Enter Number");
return false;
}

return true;
}

//-->
</script>
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
        <br><br>
   
        
    <div style="color:powderblue ;font-size: 25px">Order Tracking</div>
    <br>
        
<table border="0">
     <form action="ordertracking.jsp" onsubmit="return validate_form();" name="emp" method="post" >
	<tbody>
            <tr>
		<td>Company Name (*)</td>
		<td><input size="20" name="cname" type="text"></td>
		<td></td></tr>
	<tr>	<td>Address (*)</td>
		<td><textarea cols="50" rows="5" name="address" ></textarea></td>
		<td></td></tr>
	<tr>	<td>Contact Detail (*)</td>
		<td><input size="20" onkeypress="return isNumberKey(event)" name="cdetail" type="text"></td>
		<td></td></tr>
	<tr>	<td>Order Number (*)</td>
		<td><input size="20" name="onumber" type="text"></td>
		<td></td></tr>
	<tr>	<td></td>
		<td><input value="Submitt" name="submit" type="Submit"></td>
		<td></td></tr>
</tbody></form>
</table>

</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<% 
String nm = request.getParameter("cname");
String em = request.getParameter("address");
String mn = request.getParameter("cdetail");
String st = request.getParameter("onumber");

try 
{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver is loaded");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root","");
    String s = "insert into  ordertracking1(cname,address,cdetail,onumber) values (?,?,?,?)";
    PreparedStatement ps = c.prepareStatement(s); ps.setString(1, nm);
    ps.setString(2, em); ps.setString(3, mn); ps.setString(4, st); 
    ps.execute();
    c.close(); 
    out.println("<script>alert('record saved');</script>");
    }
catch(Exception e)
        {
    System.out.println("Exception : " +e);
    }
%>