<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
    
    String id = request.getParameter("patientid");
    String pn = request.getParameter("patientname");
    String pt = request.getParameter("patienttype");
    String dn = request.getParameter("doctorname");
    String nn = request.getParameter("nursename");
    String is = request.getParameter("issue");
    String tb = request.getParameter("totalbill");
    String stat = request.getParameter("status");
    
    Connection con = DbConnector.getConnection();
    Statement st = con.createStatement();
    int i = st.executeUpdate("update inpatient set patientname ='" + pn + "', patienttype ='" + pt + "', doctorname ='" + dn + "', nursename ='" + nn + "', issue ='" + is + "', totalbill ='" + tb + "', status ='" + stat + "' where patientid = '"+id+"' ");
    
    if(i!=0){
    response.sendRedirect("admintour.jsp?Updated sucess..!");
            }else{
    response.sendRedirect("admintour.jsp?Updated fails..!");
    }
    
    

%>