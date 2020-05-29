<%@page import="sun.rmi.log.LogInputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Connection"%>
<%
String usr = request.getParameter("user");
String pas = request.getParameter("pass");

Connection con = DbConnector.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(" select * from doctor where doctorid='"+usr+"'");
if(rs.next()){
    if(rs.getString("doctorid").equals(usr)&&(rs.getString("password").equals(pas)))
    {
    		session.setAttribute("me", usr);
    		response.sendRedirect("doctordet.jsp?msg=success");
    }
    else{
			response.sendRedirect("doctorlog.jsp?msgg=fails");
	}
}
else{
	response.sendRedirect("doctorlog.jsp?msgg=fails");
}

%>