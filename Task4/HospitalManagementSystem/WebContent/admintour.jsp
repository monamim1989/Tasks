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
            <li><a href="index.jsp" class="current">Home</a></li>
            <li><a href="admintour.jsp">Hospital Details</a></li>
            <li><a href="doctorlog.jsp">Doctor Login</a></li>
            <li><a href="inpatientlog.jsp">InPatient Login</a></li>
            <li><a href="outpatientlog.jsp">OutPatient Login</a></li>
            <li><a href="labreport.jsp">Lab Report</a></li>
            <li><a href="index.jsp">Logout</a></li>
        </ul>
    </div>
    
    <div id="templatemo_content">
        
        <div id="main_column">
            <h3>HOSPITAL DETAILS..!</h3><br>
            <div class="section_w140"><div style="position: absolute; left:180px; top:200px;">
				    <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                	<tr style="color: steelblue; background-color: wheat; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   	   <td><font size="3">IN-PATIENT ID</font></td>
                   	   <td align="center"><font size="3">PATIENT NAME</font></td>
	                   <td align="center"><font size="3">PATIENT TYPE</font></td>
	                   <td align="center"><font size="3">EMAIL ID</font></td>
	                   <td align="center"><font size="3">CONTACT</font></td>
	                   <td align="center"><font size="3">AGE</font></td>
	                   <td align="center"><font size="3">GENDER</font></td>
	                   <td align="center"><font size="3">LOCATION</font></td>
	                   <td align="center"><font size="3">DOCTOR NAME</font></td>
	                   <td align="center"><font size="3">NURSE NAME</font></td>
	                   <td align="center"><font size="3">HEALTH ISSUE</font></td>
	                   <td align="center"><font size="3">TOTAL BILL</font></td>
	                   <td align="center"><font size="3">STATUS</font></td>
	                   <td align="center"><font size="3">ACTION</font></td>
	                   <!-- <td align="center"><font size="3">CANCEL</font></td> -->
              
               		</tr>
<%               
    
    //pid, pname, ptype, mail, contact, age, sex, loc, dname, nname, iss, tob, st, tob, ac, key
        String  pid=null,pname=null,ptype=null,mail=null,contact=null,age=null,sex=null,loc=null,dname=null,nname=null,iss=null,tob=null,st=null,ac=null,key=null;
        
Class.forName("com.mysql.cj.jdbc.Driver");	
Connection conn = DbConnector.getConnection();
Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  inpatient ");
while(rs1.next()){
pname=rs1.getString("patientname");
ptype=rs1.getString("patienttype");
mail=rs1.getString("mail");
contact=rs1.getString("contact");
age=rs1.getString("age");
sex=rs1.getString("sex");
loc=rs1.getString("location");
dname=rs1.getString("doctorname");
nname=rs1.getString("nursename");
iss=rs1.getString("issue");
tob=rs1.getString("totalbill");
st=rs1.getString("status"); 
key=rs1.getString("patientid");

       %>   
       <tr style="color: steelblue; background-color: wheat">
           <form name="ff" action="updateinpat.jsp" method="get"  onsubmit="return check()" >
              <input type="hidden" value="<%=key%>" name="patientid"/>
              <td align="center"><%=key%></td>
              <td align="center"><%=pname%></td>
              <td align="center"> <%=ptype%></td>
              <td align="center"> <%=mail%></td>
              <td align="center"> <%=contact%></td>
              <td align="center"> <%=age%></td>
              <td align="center"> <%=sex%></td>
              <td align="center"> <%=loc%></td>
       		  <td align="center"> <%=dname%></td>
       		  <td align="center"> <%=nname%></td>
              <td align="center"> <%=iss%></td>
              <td align="center"> <%=tob%></td>
              <td align="center"> <%=st%></td> 
              <td align="center">
              <a href="changeinvalues.jsp?<%=key%>">Update</a>
              <a href="deleteinpat.jsp?<%=key%>">Delete</a>
              </td>
              </form>          
     <%
}                                     
%>
       </tr>
       </table><BR></BR>
       </div>
       
       <div class="section_w280"><div style="position: absolute; left:180px; top:600px;">
				    <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                	<tr style="color: steelblue; background-color: wheat; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   	   <td><font size="3">OUT-PATIENT ID</font></td>
                   	   <td align="center"><font size="3">PATIENT NAME</font></td>
	                   <td align="center"><font size="3">PATIENT TYPE</font></td>
	                   <td align="center"><font size="3">EMAIL ID</font></td>
	                   <td align="center"><font size="3">CONTACT</font></td>
	                   <td align="center"><font size="3">AGE</font></td>
	                   <td align="center"><font size="3">GENDER</font></td>
	                   <td align="center"><font size="3">LOCATION</font></td>
	                   <td align="center"><font size="3">DOCTOR NAME</font></td>
	                   <td align="center"><font size="3">HEALTH ISSUE</font></td>
	                   <td align="center"><font size="3">TOTAL BILL</font></td>
	                   <td align="center"><font size="3">APPOINTMENT TAKEN ON</font></td>
	                   <td align="center"><font size="3">STATUS</font></td>
	                   <td align="center"><font size="3">ACTION</font></td>
	                   
               		</tr>
<%               
    
    //pid2, pname2, ptype2, mail2, contact2, age2, sex2, loc2, dname2, iss2, tob2, time, stat, ac2, key2
        String  pid2=null,pname2=null,ptype2=null,mail2=null,contact2=null,age2=null,sex2=null,loc2=null,dname2=null,iss2=null,tob2=null,time=null,stat=null,ac2=null,key2=null;
        
Class.forName("com.mysql.cj.jdbc.Driver");	
Statement st2 = conn.createStatement();

ResultSet rs2 = st2.executeQuery("select * from  outpatient ");
while(rs2.next()){
pname2=rs2.getString("patientname");
ptype2=rs2.getString("patienttype");
mail2=rs2.getString("mail");
contact2=rs2.getString("contact");
age2=rs2.getString("age");
sex2=rs2.getString("sex");
loc2=rs2.getString("location");
dname2=rs2.getString("doctorname");
iss2=rs2.getString("issue");
tob2=rs2.getString("totalbill");
stat=rs2.getString("status"); 
time=rs2.getString("time_");
key2=rs2.getString("patientid");

       %>   
       <tr style="color: steelblue; background-color: wheat">
           <form name="ff" action="updateoutpat.jsp" method="get"  onsubmit="return check()" >
              <input type="hidden" value="<%=key2%>" name="patientid"/>
              <td align="center"><%=key2%></td>
              <td align="center"><%=pname2%></td>
              <td align="center"> <%=ptype2%></td>
              <td align="center"> <%=mail2%></td>
              <td align="center"> <%=contact2%></td>
              <td align="center"> <%=age2%></td>
              <td align="center"> <%=sex2%></td>
              <td align="center"> <%=loc2%></td>
       		  <td align="center"> <%=dname2%></td>
              <td align="center"> <%=iss2%></td>
              <td align="center"> <%=tob2%></td>
              <td align="center"> <%=time%></td>
              <td align="center"> <%=stat%></td> 
              <td align="center">
              <a href="changeoutvalues.jsp?<%=key2%>">Update</a>
              <a href="deleteoutpat.jsp?<%=key2%>">Delete</a>
              </td>
              </form>          
     <%
}                                     
%>
       </tr>
       </table><BR></BR>
       </div>
       
       <div class="section_w560" style="position: absolute; left:180px; top:1000px;">
       
       <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: steelblue; background-color: wheat; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                   <td><font size="3">DOCTOR ID</font></td>
                   <td align="center"><font size="3">DOCTOR NAME</font></td>
                   <td align="center"><font size="3">SPECIALIZATION</font></td>
                   <td align="center"><font size="3">CONTACT</font></td>
                   <td align="center"><font size="3">ACTION</font></td>
            </tr>
<%               
    
    //did, docname, spl, con, stdoc, acd, keyd
        String  did=null,docname=null,spl=null,con=null,stdoc=null,acd=null,keyd=null;
        
Class.forName("com.mysql.cj.jdbc.Driver");	
Statement st3 = conn.createStatement();

ResultSet rs3 = st3.executeQuery("select * from  doctor ");
while(rs3.next()){
docname=rs3.getString("doctorname");
spl=rs3.getString("specialization");
con=rs3.getString("contact");
keyd=rs3.getString("doctorid");

       %>   
       <tr style="color: steelblue; background-color: wheat">
           <form name="ff" action="updatedoc.jsp" method="get"  onsubmit="return check()" >
              <input type="hidden" value="<%=keyd%>" name="doctorid"/>
              <td align="center"><%=keyd%></td>
              <td align="center"><%=docname%></td>
       		  <td align="center"> <%=spl%></td>
       		  <td align="center"> <%=con%></td>
              <td align="center">
              <a href="changevaluesdoc.jsp?<%=keyd%>">Update</a><br>
              <a href="deletedoc.jsp?<%=keyd%>">Delete</a>
              </td>
              </form>          
     <%
}                                     
%>
       </tr>
       </table><BR></BR>
               
                </div>

                <div class="cleaner"></div>
        	</div>
          <div class="cleaner"></div>
        </div>      
        <div class="cleaner">
        </div>
    </div>
</div> <!-- end of container -->
</body>
</html>