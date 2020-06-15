$.ajax({
	url: 'http://localhost:8080/rest-app/rest/products/viewall',
	type: "GET",
	dataType: "json",
	success: function(data) {
	    generateTable(data);
	}
});

function generateTable(data) {
	for (var i = 0; i < data.length; i++) {
		    addRow(data[i]);
	}
}
		
function addRow(rowData) {
	var delId = "del" + rowData.id;
	var entryId = "val" + rowData.id;
	var row = $(`<tr id=${entryId} />`)
	$("#productDetails").append(row); 
	row.append($("<td>" + rowData.id + "</td>"));
	row.append($("<td>" + rowData.name + "</td>"));
	row.append($("<td>" + rowData.price + "</td>"));
	row.append($(`<td><a class='btn btn-success' href='updproduct.html'>Update</a></td>`));
	row.append($(`<td><button class='btn btn-danger' id=${delId}>Delete</button></td>`));
	
	$(`#${delId}`).click(function() {	
		console.log("delete btn clicked!")
 		$.ajax({
 			url: 'http://localhost:8080/rest-app/rest/products/delete/'+rowData.id,
 			type: "DELETE",
			dataType: "json",
			contentType: "application/json",
			data: rowData.id,
	 		success: function (data) {
	            alert('success');
	            location.reload(true); 
	        }
 		})
 	 })
}