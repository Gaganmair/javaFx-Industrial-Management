
<%-- 
    Document   : ordertrackview
    Created on : Oct 10, 2013, 9:24:19 PM
    Author     : sise4
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 


<%@page import="javax.swing.text.Document"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
  <title>Khanna paper mill</title>
  <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
  <link rel="stylesheet" type="text/css" href="style.css" />
   <script language="javascript">
function deleteRecord(id)
{
    var f=document.form;
    f.method="post";
    f.action='delonline.jsp?id='+id;
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
<h2 align="center">ONLINE ENQUIRY VIEW</h2>
<%
       int sumcount=0;
          Statement st;
          try {
          String connectionURL = "jdbc:mysql://localhost:3306/raja";
          Connection connection = null;
          Statement statement = null;
          Class.forName("com.mysql.jdbc.Driver").newInstance();
          connection = DriverManager.getConnection(connectionURL, "root", "");
          statement = connection.createStatement();
          String query = "SELECT * from onlineenquiry";
         st = connection.createStatement();
          ResultSet rs = st.executeQuery(query);
%>

<form method="post" name="form">
<TABLE cellpadding="1" border="1" style="background-color: #ffffcc;" align="center" >
    <TR>
        <TD><b>Name</b></TD>
        <TD><b>E-Mail</b></TD>
        <TD><b>Mobile No.</b></TD>
        <TD><b>Street</b></TD>
        <TD><b>City</b></TD>
        <TD><b>State</b></TD>
        <TD><b>Zip Code</b></TD>
        <TD><b>Country</b></TD>
        <TD><b>Query Relating to</b></TD>
        <TD><b>Query</b></TD>
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
        <TD><%=rs.getString(11)%></TD>
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
            <TD><FORM ACTION="onlinenquiry.jsp" method="post" >
           </TD>
        </TR>
    </TABLE>
        </form>
</font>
</body>
</html>