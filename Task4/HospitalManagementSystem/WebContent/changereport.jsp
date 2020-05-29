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
    	
    	var a = document.ff.patientid.value;
    	var b = document.ff.patientname.value;
    	var c = document.ff.patienttype.value;
    	var d = document.ff.haemoglobin.value;
    	var e = document.ff.wbc.value;
    	var f = document.ff.cardio.value;
    	var g = document.ff.neuro.value;
    	var h = document.ff.bloodsugar.value;
  
        if (a==0){
	        alert('Please Enter Patient ID');
	        document.getElementById("patientid").focus(); 
	        return false;
       }if (b==0){
	        alert('Please Enter Patient Name');
	        document.getElementById("patientname").focus(); 
	        return false;
       }if (c==0){
	        alert('Please Enter Patient Type');
	        document.getElementById("patienttype").focus();  
	        return false;
       }if (d==0){        
	        alert('Please Enter Haemoglobin');
	        document.getElementById("haemoglobin").focus();   
	        return false;
       }if (e==0){
	        alert('Please Enter WBC Count');
	        document.getElementById("wbc").focus(); 
	        return false;
       }if (f==0){
	        alert('Please Enter Cardiovascular Status');
	        document.getElementById("cardio").focus(); 
	        return false;
       }if (g==0){
	        alert('Please Enter Neurology Status');
	        document.getElementById("neuro").focus();  
	        return false;
       }if (h==0){        
	        alert('Please Enter Blood Sugar Level');
	        document.getElementById("bloodsugar").focus();   
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
            <li><a href="labreport.jsp">Lab Details</a></li>
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
    			<!-- <img src="../img/Care.png" align="left"> -->
            	<h2>Welcome to CARE+ Hospital</h2>
            	<p>At CARE+ we provide the building blocks for a complete recovery. Combining the best specialists and equipment to provide you nothing short of the best in healthcare.</p>
           
            
	  	</div>
            	
    </div> <!-- end of blue section -->
    
    <div id="templatemo_content">
        
        <div id="main_column">
        
        	<div class="section_w560">
  
              <h4>Update Patient Report</h4>
              <form action="savereport.jsp" name="ff"  method="get" onsubmit="return check()">
                    Patient ID: <br><input type="text" name="patientid" id="patientid" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Patient Name: <br><input type="text" name="patientname" id="patientname" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Patient Type:&nbsp;&nbsp;&nbsp;<select name ="patienttype" id="patienttype" style="background: cadetblue; height: 28px;  width:160px;"><option>In-Patient</option>
                        <option>Out-Patient</option>
                    </select><br></br>
                    Haemoglobin: <br><input type="text" name="haemoglobin" id="haemoglobin" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    <input type="reset" value="Clear" style="background-color: red; height: 30px; width: 80px; border: 4px; font-weight: bold;">
                    <input type="submit" value="Save" style="background-color: green; width: 80px; height: 30px; border: 4px; font-weight: bold;">&nbsp;&nbsp;&nbsp;
                    </div><br><br>
                    WBC Count: <br><input type="text" name="wbc" id="wbc" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Cardiovascular: <br><input type="text" name="cardio" id="cardio" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    Neurology: <br><input type="text" name="neuro" id="neuro" style="background: cadetblue; height: 28px;  width:250px;"><br><br>                
                    Blood Sugar: <br><input type="text" name="bloodsugar" id="bloodsugar" style="background: cadetblue; height: 28px;  width:250px;"><br><br>
                    </div>
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