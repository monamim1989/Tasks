$(document).ready(function() {
	console.log("jQuery is loaded!");
	
	$("#updbtn").click(function() {
		console.log("update btn clicked!")
		var pid = $("#productid").val();
		console.log(pid);
		var pname = $("#productname").val();
		console.log(pname);
		var pprice = $("#productprice").val();
		console.log(pprice);
		var dataToSend = { "id": pid, "name": pname, "price": pprice };
		dataToSend = JSON.stringify(dataToSend);
		console.log(dataToSend);
		$.ajax({
		
			url: 'http://localhost:8080/rest-app/rest/products/update/'+pid,
			type: "PUT",
			dataType: "json",
			contentType: "application/json",
			data: dataToSend,
			success: function (data) {
	            alert('success');
	            window.location.href = "index.html";
	        }
			
		})
	})
})
