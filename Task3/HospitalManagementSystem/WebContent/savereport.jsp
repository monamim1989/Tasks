<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String id = request.getParameter("patientid");
            String pn = request.getParameter("patientname");
            String pt = request.getParameter("patienttype");
            String hm = request.getParameter("haemoglobin");
            String wbc = request.getParameter("wbc");
            String cd = request.getParameter("cardio");
            String neu = request.getParameter("neuro");
            String bs = request.getParameter("bloodsugar");
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("update labreport set patientname ='" + pn + "', patienttype ='" + pt + "', haemoglobin ='" + hm + "', wbc ='" + wbc + "', cardio ='" + cd + "', neuro ='" + neu + "', bloodsugar ='" + bs + "'where patientid = '"+id+"' ");
            if (i != 0) {
			   
               response.sendRedirect("labreport.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("changereport.jsp?msgr=Register fails");
            }
            %>