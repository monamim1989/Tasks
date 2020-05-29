<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.DbConnector"%>
<%
String d = request.getQueryString();
Connection conn = DbConnector.getConnection();
Statement st = conn.createStatement();
int i = st.executeUpdate("delete from labreport where patientid='"+d+"'");
if(i!=0){
response.sendRedirect("labreport.jsp?que=query executed..!");
}else{
    response.sendRedirect("labreport.jsp?que=query not executed..!");
}
%>