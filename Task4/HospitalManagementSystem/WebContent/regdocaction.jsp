<%@page import="pack.DbConnector"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("doctorname");
            String usr = request.getParameter("user");
            String pass = request.getParameter("pass");
            String specl = request.getParameter("specialization");
            String cont = request.getParameter("contact");
            Connection con =  DbConnector.getConnection();
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into doctor values('"+usr+"','"+name+"','"+pass+"','"+specl+"','"+cont+"')");
            if (i != 0) {

               response.sendRedirect("doctordet.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("docregpage.jsp?msgr=Register fails");
            }
            %>