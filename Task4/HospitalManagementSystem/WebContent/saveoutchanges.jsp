<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String id = request.getParameter("patientid");
            String pn = request.getParameter("patientname");
            String pt = request.getParameter("patienttype");
            String mail = request.getParameter("mail");
            String cont = request.getParameter("contact");
            String age = request.getParameter("age");
            String sex = request.getParameter("sex");
            String loc = request.getParameter("location");
            String is = request.getParameter("issue");
            String dn = request.getParameter("doctorname");
            String tb = request.getParameter("totalbill");
            String stat = request.getParameter("status");
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("update outpatient set patientname ='" + pn + "', patienttype ='" + pt + "', mail ='" + mail + "', contact ='" + cont + "', age ='" + age + "', sex ='" + sex + "', location ='" + loc + "', doctorname ='" + dn + "', issue ='" + is + "', totalbill ='" + tb + "', status ='" + stat + "'where patientid = '"+id+"' ");
            if (i != 0) {
			   
               response.sendRedirect("outpatient.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("changeoutvalues.jsp?msgr=Register fails");
            }
            %>