<%@page language="java"%>
<%@page import="java.sql.*"%>
<form method="post" action="updatemp.jsp">
<table border="1">
<tr><th>Employee Name</th><th>Employee No.</th><th>Address</th><th>Contact Number</th><th>Job Location</th><th>Designation</th>
<th>E-mail Id</th><th>Date Of Joining</th><th>Qualification</th></tr>
<%
String id=request.getParameter("id");
int no=Integer.parseInt(id);
int sumcount=0;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja", "root", "");
String query = "select * from employee where id='"+no+"'";
Statement st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
while(rs.next()){
%>
<tr>
<td><input type="text" name="emp_name" value="<%=rs.getString("emp_name")%>"></td>
<td><input type="text" name="num" value="<%=rs.getString("num")%>"></td>
<td><input type="text" name="address" value="<%=rs.getString("address")%>"></td>
<td><input type="text" name="txtFName1" value="<%=rs.getString("txtFName1")%>"></td>
<td><input type="text" name="jobloc" value="<%=rs.getString("jobloc")%>"></td>
<td><input type="text" name="designation" value="<%=rs.getString("designation")%>"></td>
<td><input type="text" name="email_id" value="<%=rs.getString("email_id")%>"></td>
<td><input type="text" name="doj" value="<%=rs.getString("doj")%>"></td>
<td><input type="text" name="qualification" value="<%=rs.getString("qualification")%>"></td>
<td><input type="hidden" name="id" value="<%=rs.getString(1)%>"></td>
</tr>
<tr>
<td><input type="submit" name="Submit" value="Update" style="background-color:#49743D;font-weight:bold;color:#ffffff;"></td>
</tr>
<%
}
}
catch(Exception e){}
%>
</table>
</form>
