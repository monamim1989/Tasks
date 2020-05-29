<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String id = request.getParameter("doctorid");
            String dn = request.getParameter("doctorname");
            String sp = request.getParameter("specialization");
            String cont = request.getParameter("contact");
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("update doctor set doctorname ='" + dn + "', specialization ='" + sp + "', contact ='" + cont + "'where doctorid = '"+id+"' ");
            if (i != 0) {
			   
               response.sendRedirect("doctordet.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("changevaluesdoc.jsp?msgr=Register fails");
            }
			%>