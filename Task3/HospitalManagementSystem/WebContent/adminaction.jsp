<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
String usr = request.getParameter("user");
String pas = request.getParameter("pass");

    if(usr.equalsIgnoreCase("admin") &&(pas.equalsIgnoreCase("admin")))
               {
    
    response.sendRedirect("admintour.jsp?msg=sucess");
    }
    else{
response.sendRedirect("adminlog.jsp?msgg=fails");
}

%>