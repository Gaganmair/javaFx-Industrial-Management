<%@page import="java.sql.*"%>

<%
String ide=request.getParameter("id");
int num=Integer.parseInt(ide);
String emp_name=request.getParameter("emp_name");
String nume=request.getParameter("num");
String address=request.getParameter("address");
String txtFName1=request.getParameter("txtFName1");
String jobloc=request.getParameter("jobloc");
String designation=request.getParameter("designation");
String email_id=request.getParameter("email_id");
String doj=request.getParameter("doj");
String qualification=request.getParameter("qualification");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root", "");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update employee set emp_name='" + emp_name + "', num='" + nume + "', address='" + address + "', txtFName1='" + txtFName1 + "', jobloc='" + jobloc + "', designation='" + designation + "', email_id= '" + email_id + "', doj='" + doj + "', qualification='" + qualification + "' where id='" + num + "' ");
response.sendRedirect("employ.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>