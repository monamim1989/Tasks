<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("patientname");
            String usr = request.getParameter("user");
            String pass = request.getParameter("pass");
            String typ = request.getParameter("patienttype");
            String hm = request.getParameter("haemo");
            String wbc = request.getParameter("wbc");
            String cd = request.getParameter("cardio");
            String neu = request.getParameter("neuro");
            String bs = request.getParameter("bloodsugar");
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into labreport values('"+usr+"','"+name+"','"+pass+"','"+typ+"','"+hm+"','"+wbc+"','"+cd+"','"+neu+"','"+bs+"')");
            if (i != 0) {

               response.sendRedirect("labreport.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("newlabrec.jsp?msgr=Register fails");
            }
            %>