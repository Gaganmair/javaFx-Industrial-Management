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
    f.action='edit.jsp?id='+id;
    f.submit();
}
function deleteRecord(id){
    var f=document.form;
    f.method="post";
    f.action='delete.jsp?id='+id;
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
      <table border="0">
     <form action="index1.jsp" method="post">
	<tbody>
            <tr>
		<td>What's New (*)</td>
		<td><textarea cols="30" rows="3" name="news" ></textarea></td>
		
	</tr>
	<tr>
            <td></td>
		<td><input value="Submitt" name="submit" type="Submit"></td>
		</tr>
</tbody></form>
</table>
      
  </div>  
  <div>
      
      <form method="post" name="form">
<table border="1">
<tr><th>What's New</th></tr>
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
          String query = "select * from newevent";
          st = connection.createStatement();
          ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr><td><%=rs.getString(2)%></td>

<td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
<td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
      
  </div>
</body>
</html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<% 
String nm = request.getParameter("news");

try 
{
    Class.forName("com.mysql.jdbc.Driver");
    System.out.println("Driver is loaded");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root","");
    String s = "insert into  newevent(news) values (?)";
    PreparedStatement ps = c.prepareStatement(s);ps.setString(1, nm);
    ps.execute();
    c.close(); 
    out.println("<script>alert('record saved');</script>");
    }
catch(Exception e)
        {
    System.out.println("Exception : " +e);
    }
%>