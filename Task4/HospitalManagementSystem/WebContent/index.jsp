<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Hospital Management System</title>
<meta name="keywords" content="hospital website, free CSS, web templates" />
<meta name="description" content="Hospital Management Site - free website template from templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
<script>
    function check(){
        var a = document.ff.user.value;
        var b = document.ff.pass.value;
       
   
         if(a==0){
            alert('Please Enter UserId');
            return false;
            document.getElementById("name").focus();            
        } if(b==0){
            alert('Please Enter Password');
            return false;
            document.getElementById("pass").focus();            
        } 
    }
    
    
</script>
</head>
<body style="background-color:#A9E2F3">
	<jsp:include page="navigationbar.jsp"></jsp:include>
	<div id="templatemo_container">
		<div id="templatemo_menu">
    		<ul>
            	<li><a href="index.jsp" class="current">Home</a></li>
            	<li><a href="adminlog.jsp">Admin Login</a></li>
            	<li><a href="doctorlog.jsp">Doctor Login</a></li>
            	<li><a href="inpatientlog.jsp">In-Patient Login</a></li>
            	<li><a href="outpatientlog.jsp">Out-Patient Login</a></li>
           
        	</ul>
    	</div>

		<div id="templatemo_banner">
    	
        	<div id="site_title">
            	<h1>
            	Hospital Management System
                </h1><br>
          		<h5 class="text-left" style="color:purple">Admin Login</h5>
    			<form action="adminaction.jsp" name="ff"  method="get" onsubmit="return check()">
    				UserId: <br><input type="text" name="user" id="user" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Password: <br><input type="password" name="pass" id="pass" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                   
                    <div style="margin-left: 0px;">  
                        <input type="submit" value="Login" style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                	</form>
                	<input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;"></div>
             
    			</form>
        	</div>
     	</div>
     	<div class="fw_section">
    	
        	<div class="fw_section_content">
    			<h2>Welcome to CARE+ Hospital</h2>
            	<p>At CARE+ we provide the building blocks for a complete recovery. Combining the best specialists and equipment to provide you nothing short of the best in healthcare.</p>
           
            
	  		</div>
            
    	</div> <!-- end of blue section -->
    	
   	<div id="templatemo_content">
    		<h2>Medical Services</h2>
    		<table>
    			<tr>
    			<td>HEART</td>
    			<td>NEUROLOGY</td>
    			<td>ORTHOPEDIATRICS</td>
    			<td>UROLOGY</td>
    			<td>DENTAL</td>
    			<td>DERMATOLOGY</td>
    			</tr>
    			<tr>
    			<td>Dr. Avik Mukhopadhyay</td>
    			<td>Dr. Seema Nagar</td>
    			<td>Dr. Jayashree Iyer</td>
    			<td>Dr. Hemant Singh</td>
    			<td>Dr. Kamala Muralidhar</td>
    			<td>Dr. Neena Kumar</td>
    			</tr>
    			<tr>
    			<td>Monday, Tuesday</td>
    			<td>Wednesday, Thursday</td>
    			<td>Friday, Saturday</td>
    			<td>Sunday, Monday</td>
    			<td>Tuesday, Wednesday</td>
    			<td>Thursday, Friday</td>
    			</tr>
    			<tr>
    			<td>11:00AM - 2:00PM</td>
    			<td>2:00PM - 5:00PM</td>
    			<td>5:00PM - 8:00PM</td>
    			<td>11:00AM - 2:00PM</td>
    			<td>2:00PM - 5:00PM</td>
    			<td>5:00PM - 8:00PM</td>
    			</tr>
    		</table>
    	
    	</div>
    
       <div class="cleaner"></div>
        <div id="templatemo_footer">
        	For any queries or feedback, please Get in Touch |&nbsp;<a href="contact.jsp">CONTACT US</a> | 
    	</div> <!-- end of footer -->
     	
</div>
</body>
</html>