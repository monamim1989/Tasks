<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Hospital Management System</title>
<meta name="keywords" content="hospital website, free CSS, web templates" />
<meta name="description" content="Hospital Site - free website template from templatemo.com" />
<link href="templatemo_sub_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script>
    function check(){
    	
    	var a = document.ff.doctorid.value;
    	var b = document.ff.doctorname.value;
    	var c = document.ff.specialization.value;
        var d = document.ff.contact.value;
  
        if (a==0){
	        alert('Please Enter Doctor ID');
	        document.getElementById("doctorid").focus(); 
	        return false;
       }if (b==0){
	        alert('Please Enter Doctor Name');
	        document.getElementById("doctorname").focus(); 
	        return false;
       }if (c==0){
	        alert('Please Enter Specialization');
	        document.getElementById("specialization").focus();  
	        return false;
       }if (d==0){        
	        alert('Please Enter Contact Number');
	        document.getElementById("contact").focus();   
	        return false;
       }
         
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
            <li><a href="inpatientlog.jsp">In-Patient Login</a></li>
            <li><a href="outpatientlog.jsp">Out-Patient Login</a></li>
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
        
        	<div class="section_w560">
  
              <h4>Update Patient Information</h4>
              <form action="savechangesdoc.jsp" name="ff"  method="get" onsubmit="return check()">
                    Doctor ID: <br><input type="text" name="doctorid" id="doctorid" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Doctor Name: <br><input type="text" name="doctorname" id="doctorname" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Specialization: <br><input type="text" name="specialization" id="specialization" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Contact Number: <br><input type="text" name="contact" id="contact" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;">
                    <input type="submit" value="Save" style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                  
                    </form>
                                     
        		<%
if(request.getParameter("msgg")!=null) {
out.println("<script>alert('Error Found..!!')</script>");
}                       

%>  
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