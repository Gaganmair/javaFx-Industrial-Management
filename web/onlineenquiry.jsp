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
 
if ( document.emp.name.value == "" )
{
alert ( "Please fill in the 'Enter The Name' box." );
return false;
}
if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.emp.email.value))
{
alert("You have entered an invalid email address!");
return (false);
}
if ( document.emp.mobileno.value == "" )
{
alert ( "Enter Mobile Number" );
return false;
}
 
 if ( document.emp.street.value == "" )
{
alert ( "Enter The Street" );
return false;
}
if ( document.emp.city.value == "" )
{
alert ( "Enter City " );
return false;
}

 if ( document.emp.state.value == "" )
{
alert ( "Enter The State " );
return false;
}
 if ( document.emp.zipcode.value == "" )
{
alert ( "Enter The Zip Code" );
return false;
}
 if ( document.emp.country.value == "" )
{
alert ( "Enter The Country" );
return false;
}
 if ( document.emp.queryrelat.value == "" )
{
alert ( "Enter The Query Relating to" );
return false;
}
 if ( document.emp.query.value == "" )
{
alert ( "Enter The Query" );
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
        <br>
            <br>
<div style="color:powderblue ;font-size: 25px">Online Enquiry</div>
<br>
 
<table border="0">
       <form action="onlineenquiry.jsp" onsubmit="return validate_form();" name="emp" method="post">
	<tbody><tr>
		<td>Name (*)</td>
		<td><input size="20" name="name" type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Email (*)</td>
		<td><input size="20" name="email" type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Mobile No (*)</td>
		<td><input size="20" name="mobileno" onkeypress="return isNumberKey(event)" type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Street (*)</td>
		<td><input size="20" name="street"  type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>City (*)</td>
		<td><input size="20" name="city"  type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>State (*)</td>
		<td><input size="20" name="state"  type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Zip Code (*)</td>
		<td><input size="20" name="zipcode" onkeypress="return isNumberKey(event)" type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Country (*)</td>
		<td><input size="20" name="country"  type="text"></td>
		<td></td>
	</tr>
	<tr>
		<td>Query Relating to  (*)</td>
		<td><select name="queryrelat"><option selected="selected" value="Accounts &amp; Finance">Accounts &amp; Finance</option><option value="HR">HR</option><option value="IT">IT</option><option value="Marketing">Marketing</option><option value="Purchase">Purchase</option><option value="Others">Others</option></select></td>
		<td></td>
	</tr>
	<tr>
		<td>Query (*)</td>
		<td><textarea cols="30" rows="3" name="query" ></textarea><div ></div></td>
		<td></td>
	</tr>
	<tr>
		<td></td>
		<td><input value="submit" name="submit" type="submit"><div ></div></td>
		<td></td>
	</tr>
</tbody>
</form>
</table>    

</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<% 

String nm = request.getParameter("name");
String em = request.getParameter("email");
String mn = request.getParameter("mobileno");
String st = request.getParameter("street");
String pp = request.getParameter("city");
String gg = request.getParameter("state");
String ss = request.getParameter("zipcode");
String qq = request.getParameter("country");
String tt = request.getParameter("queryrelat");
String ee = request.getParameter("query");
try 
{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver is loaded");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root","");
       String s = "insert into  onlineenquiry(name,email,mobileno,street,city,state,zipcode,country,queryrelat,query) values (?,?,?,?,?,?,?,?,?,?)";
    PreparedStatement ps = c.prepareStatement(s); ps.setString(1, nm);
    ps.setString(2, em); ps.setString(3, mn); ps.setString(4, st);ps.setString(5, pp);ps.setString(6, gg);ps.setString(7, ss);
ps.setString(8, qq);ps.setString(9, tt);ps.setString(10, ee);   
    ps.execute();
    c.close(); 
    out.println("<script>alert('record saved');</script>");
    
    }
catch(Exception e)
        {
    System.out.println("Exception : " +e);
    }
%>
