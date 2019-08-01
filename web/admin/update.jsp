<%@page import="java.sql.*"%>

<%
String ide=request.getParameter("id");
int num=Integer.parseInt(ide);
String news=request.getParameter("news");
try{
Connection conn = null;
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/raja","root", "");
Statement st=null;
st=conn.createStatement();
st.executeUpdate("update newevent set news='"+news+"' where id='"+num+"'");
response.sendRedirect("index1.jsp");
}
catch(Exception e){
System.out.println(e);
    }
%>