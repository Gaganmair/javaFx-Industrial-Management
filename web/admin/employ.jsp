<%-- 
    Document   : index1
    Created on : Oct 9, 2013, 9:58:24 AM
    Author     : sise4
--%>

<%@page import="javax.swing.text.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>Khanna paper mill</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style.css" />
  
  <script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='editemp.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delemp.jsp?id='+id;
    f.submit();
}
</script>
</head>

<body>
<div id="wrapper">

  <div id="header">
    <span><b>Khanna</b>Paper</b>Mill</span>
    <% 
String uname = null;  

            try {  
                uname = "Welcome :-"+(String) session.getAttribute("uname");  
                
                out.println(uname);
            } catch (Exception e) {  
                
            }  
            if (uname == null) {  
                response.sendRedirect("index.jsp");  
            }  
%>
  </div>

  <div id="menu">
    <ul>
     <li><a href="index1.jsp">Home</a></li>
     <li><a href="ordertrackview.jsp">OrderTrack</a></li>
     <li><a href="orderview.jsp">Order View</a></li>
     <li><a href="onlinenquiry.jsp">Online enquiry</a></li>
     <li><a href="applyview.jsp">Apply view</a></li>
      <li><a href="partner.jsp">Partner View</a></li>
   <li><a href="employ.jsp">Employee</a></li>
 <li><a href="http://localhost:8084/papermill/index.jsp">Logout</a></li>
    </ul>
  </div>
  <div id="feature">
  </div>
  <div>
     <head>

<script type="text/javascript">
<!--
function validate_form ( )
{
 
if ( document.emp.emp_name.value == "" )
{
alert ( "Please fill in the 'Your Employee Name' box." );
return false;
}
if ( document.emp.num.value == "" )
{
alert ( "Enter Employee Number" );
return false;
}
 
 if ( document.emp.address.value == "" )
{
alert ( "Enter The Address" );
return false;
}
if ( document.emp.txtFName1.value == "" )
{
alert ( "Enter Contact Number" );
return false;
}
if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/).test(document.emp.email_id.value))
{
alert("You have entered an invalid email address!");
return (false);
}
 if ( document.emp.doj.value == "" )
{
alert ( "Enter The Date Of Joining " );
return false;
}
 if ( document.emp.qualification.value == "" )
{
alert ( "Enter The Qualification" );
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
<body bgcolor="#FFFFFF">
<form name="emp" action="employ.jsp" onsubmit="return validate_form();" method="post">
<table align="center" width=40% width="100%" cellspacing="2" cellpadding="2" border="5">
<tr>
<td colspan="2" align="center"><b>Employee Registration Form.</b></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Employee Name<span style="color:red">*</span></td>
 
<td width="57%"><input type="text" value="" name="emp_name" size="24"></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Employee Number<span style="color:red">*</span></td>
<td width="57%">
<input type="text" value="" name="num" onkeypress="return isNumberKey(event)" size="24"></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Address</td>
 
<td width="57%"><textarea rows="2" maxlen="200" name="address" cols="20"></textarea></td>
</tr
<tr >
 
<td align="left" valign="top" width="41%">Contact Number</td>
<td width="57%">
<input type="text" value="" onkeypress="return isNumberKey(event)" name="txtFName1" size="24"></td>
</tr>
<tr >
<td align="left" valign="top" width="41%">Job Location</td>
<td width="57%"><select name="jobloc">
<option value="Default">Default</option>
<option value="Chennai">Chennai</option>
<option value="Bangalore">Bangalore</option>
<option value="Chennai">Pune</option>
<option value="Bangalore">Mysore</option>
<option value="Chennai">Chandigarh</option>
 <option value="Amritsar">Amritsar</option>
</select></td>
 
</tr>
 
<tr >
<td align="left" valign="top" width="41%">Designation</td>
<td width="57%">
<select name="designation">
<option value="Default">Default</option>
<option value="Systems Engineer">Systems Engineer</option>
<option value="Senior Systems Engineer">Senior Systems Engineer</option>
<option value="Technology Analyst">Technology Analyst</option>
<option value="Technology Lead">Technology Lead</option>
<option value="Project Manager">Project Manager</option>
</select></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Email<span style="color:red">*</span></td>
<td width="57%">
<input type="text" value="" name="email_id" size="24"></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Date Of Joining<span style="color:red">*</span></td>
<td width="57%">
<input type="text" value="" name="doj" size="24"></td>
</tr>
<tr>
<td align="left" valign="top" width="41%">Qualification<span style="color:red">*</span></td>
<td width="57%"><textarea rows="2" maxlen="200" name="qualification" cols="20"></textarea></td>
</tr>
<tr>
<td colspan="2">
<p align="center">
<input type="submit" value=" submit" name="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="reset" value=" reset" name="reset">
    </td>
</tr>
</table>
</form>
</body>
</div>
  <div>
      <h2 align="center">EMPLOYEE DATA VIEW</h2>
<%
     int sumcount=0;
Statement st;
try{
      String connectionURL = "jdbc:mysql://localhost:3306/raja";
          Connection connection = null;
          Statement statement = null;
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "root", "");
          statement = connection.createStatement();
          String query = "SELECT * from employee";
        st = connection.createStatement();
          ResultSet rs = st.executeQuery(query);
%>

<form method="post" name="form">
<TABLE cellpadding="0" border="1" style="background-color: #ffffcc;" align="center" >
    <TR>
        <TD><b>Emp. Name</b></TD>
        <TD><b>Emp. No.</b></TD>
        <TD><b>Address</b></TD>
        <TD><b>Contact Number</b></TD>
        <TD><b>Job Location</b></TD>
        <TD><b>Designation</b></TD>
        <TD><b>E-mail Id</b></TD>
        <TD><b>Date Of Joining</b></TD>
        <TD><b>Qualification</b></TD>
        </TR>
    <%
    while (rs.next()) {
    %>
    
    <TR>
        
        <TD><%=rs.getString(2)%></TD>
        <TD><%=rs.getString(3)%></TD>
        <TD><%=rs.getString(4)%></TD>
        <TD><%=rs.getString(5)%></TD>
        <TD><%=rs.getString(6)%></TD>
        <TD><%=rs.getString(7)%></TD>
        <TD><%=rs.getString(8)%></TD>
        <TD><%=rs.getString(9)%></TD>
        <TD><%=rs.getString(10)%></TD>
        <td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
        <td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>

    </TR>
    <%   }    %>
    <%
    // close all the connections.
    rs.close();
    statement.close();
    connection.close();
} catch (Exception e) {
    e.printStackTrace();
    %>
    </font>
    <font size="+3" color="red"></b>
        <%
                out.println("Unable to connect to database.");
            }
        %>
    </TABLE><TABLE align="center">
        <TR>
            <TD><FORM ACTION="employ.jsp" method="post" >
           </TD>
        </TR>
    </TABLE>
        </form>
</font>
      
  </div>
  </body>
</html>
  
  <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<% 
String nm = request.getParameter("emp_name");
String nu = request.getParameter("num");
String ad = request.getParameter("address");
String tn = request.getParameter("txtFName1");
String md = request.getParameter("jobloc");
String dd = request.getParameter("designation");
String em = request.getParameter("email_id");
String dj = request.getParameter("doj");
String qu = request.getParameter("qualification");

try 
{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver is loaded");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root","");
    String s = "insert into  employee(emp_name,num,address,txtFName1,jobloc,designation,email_id,doj,qualification) values (?,?,?,?,?,?,?,?,?)";
    PreparedStatement ps = c.prepareStatement(s); ps.setString(1, nm);ps.setString(2, nu);ps.setString(3, ad);ps.setString(4, tn);
    ps.setString(5, md);ps.setString(6, dd);ps.setString(7, em);ps.setString(8, dj);ps.setString(9, qu);
    ps.execute();
    c.close(); 
    out.println("<script>alert('record saved');</script>");
    }
catch(Exception e)
        {
    System.out.println("Exception : " +e);
    }
%>

