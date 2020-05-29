<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
    
    String id = request.getParameter("doctorid");
    String dn = request.getParameter("doctorname");
    String sp = request.getParameter("specialization");
    String ct = request.getParameter("contact");
    
    Connection con = DbConnector.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update doctor set doctorname ='" + dn + "', specialization ='" + sp + "', contact ='" + ct + "' where doctorid = '"+id+"' ");
    
    if(i!=0){
    response.sendRedirect("doctordet.jsp?Updated success..!");
            }else{
    response.sendRedirect("doctordet.jsp?Updated fails..!");
    }
    
    

%>