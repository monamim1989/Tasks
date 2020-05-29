<%@page import="pack.DbConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Hospital Management System</title>
<meta name="keywords" content="hospital website, free CSS, web templates" />
<meta name="description" content="Hospital Site - free website template from templatemo.com" />
<link href="templatemo_admin_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
</head>
<body>
<jsp:include page="navigationbar.jsp"></jsp:include>
<div id="templatemo_container">
	<div id="templatemo_menu">
    	<ul>
            <li><a href="adminlog.jsp" class="current">Home</a></li>
            <li><a href="adminlog.jsp">Admin Login</a></li>
            <li><a href="inpatient.jsp">In-Patient Details</a></li>
            <li><a href="outpatientlog.jsp">Out-Patient Login</a></li>
            <li><a href="lablog.jsp">Lab Report</a></li>
            <li><a href="index.jsp">Logout</a></li>
           
        </ul>
    </div>

	<div id="templatemo_banner">
    	
        <div id="site_title">
            	<h1>
            	Hospital Management System
                </h1>
        	</div>
    </div> <!-- templatemo_banner -->
    
    <div class="fw_section">
    	
        <div class="fw_section_content">
    			<h2>Welcome to CARE+ Hospital</h2>
            	<p>At CARE+ we provide the building blocks for a complete recovery. Combining the best specialists and equipment to provide you nothing short of the best in healthcare.</p>
	  	</div>
            	
    </div> <!-- end of blue section -->
    
    
    <div id="templatemo_content">
    	
        <div id="main_column">
        
          
                   <h3>IN-PATIENT DETAILS..!</h3><BR>
				   <table border="2" style="width: 550px; alignment-adjust: central; ">
                   <tr style="color: steelblue; background-color: wheat; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">NAME</font></td>
                   <td align="center"><font size="3">USER ID</font></td>
                   <!--<td align="center"><font size="3">PASSWORD</font></td>-->
                   <td align="center"><font size="3">PATIENT TYPE</font></td>
                   <td align="center"><font size="3">EMAIL ID</font></td>
                   <td align="center"><font size="3">CONTACT</font></td>
                   <td align="center"><font size="3">AGE</font></td>
                   <td align="center"><font size="3">GENDER</font></td>
                   <td align="center"><font size="3">LOCATION</font></td>
                   <td align="center"><font size="3">HEALTH ISSUE</font></td>
                   <td align="center"><font size="3">DOCTOR NAME</font></td>
                   <td align="center"><font size="3">NURSE NAME</font></td>
                   <td align="center"><font size="3">TOTAL BILL</font></td>
                   <td align="center"><font size="3">STATUS</font></td>
               </tr>
<%               
    
    //pname, pid, ptype, mail, contact, age, sex, loc, issue, dname, nname, tob
        String pid=null,pname=null,ptype=null,mail=null,contact=null,age=null,sex=null,loc=null,issue=null,dname=null,nname=null,tob=null,status=null;
        
Class.forName("com.mysql.cj.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  inpatient");
while(rs1.next()){
pname=rs1.getString("patientname");
pid=rs1.getString("patientid");
ptype=rs1.getString("password");
mail=rs1.getString("mail");
contact=rs1.getString("contact");
age=rs1.getString("age");
sex=rs1.getString("sex");
loc=rs1.getString("location");
issue=rs1.getString("issue");
dname=rs1.getString("doctorname");
nname=rs1.getString("nursename");
tob=rs1.getString("totalbill");
status=rs1.getString("status");


       %>   
       <tr style="color: steelblue; background-color: wheat">
           <form action="updateinpat.jsp" method="get" >
              <td align="center"><%=pid%></td>
              <td align="center"><%=pname%></td>  
       		  <td align="center"> <%=ptype%></td>
              <td align="center"> <%=mail%></td>
              <td align="center"> <%=contact%></td>
              <td align="center"> <%=age%></td>
              <td align="center"> <%=sex%></td>
              <td align="center"> <%=loc%></td>
              <td align="center"> <%=issue%></td>
              <td align="center"> <%=dname%></td>
              <td align="center"> <%=nname%></td>
              <td align="center"> <%=tob%></td>
              <td align="center"> <%=status%></td>
       
           </form>
     <%

}                                     
%>
                </tr>
                </table><BR></BR>

                <div class="cleaner"></div>
        	</div>
           <div class="cleaner"></div>
        </div>
        
        <div class="cleaner"></div>
    </div>
    <div id="templatemo_footer">
        	For any queries or feedback, please Get in Touch |&nbsp;<a href="contact.jsp">CONTACT US</a> | 
    </div> <!-- end of footer -->
    
</div> <!-- end of container -->
</body>
</html>