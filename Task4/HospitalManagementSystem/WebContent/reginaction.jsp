<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("patientname");
            String usr = request.getParameter("user");
            String pass = request.getParameter("pass");
            String typ = request.getParameter("patienttype");
            String mail = request.getParameter("mail");
            String cont = request.getParameter("contact");
            String age = request.getParameter("age");
            String sex = request.getParameter("sex");
            String loc = request.getParameter("location");
            String iss = request.getParameter("issue");
            String doc = null;
            String nur = null;
            String tob = null;
            String stat = null;
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into inpatient values('"+usr+"','"+name+"','"+pass+"','"+typ+"','"+mail+"','"+cont+"','"+age+"','"+sex+"','"+loc+"','"+iss+"','"+doc+"','"+nur+"','"+tob+"','"+stat+"')");
            if (i != 0) {

               response.sendRedirect("inpatientlog.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("inregpage.jsp?msgr=Register fails");
            }
            %>