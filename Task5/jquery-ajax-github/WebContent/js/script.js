$.ajax({
	url: 'https://api.github.com/users',
	type: "get",
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
	var row = $("<tr />")
	$("#githubUserDetails").append(row); 
	row.append($("<td>" + rowData.login + "</td>"));
	row.append($("<td>" + "<img src='" + rowData.avatar_url + "'/></td>"));
	row.append($("<td>" + rowData.site_admin + "</td>"));
	
	$.ajax({
	  type: "get",
	  url: 'https://api.github.com/users/'+rowData.login,
	  dataType: "json",
	        
	  success: function(data) {
	     var buttonId = "btn" + rowData.login;
		 var entryId = "val" + rowData.login;
	     row.append($(`<td class='val' id=${entryId}>` + `<button class='btn btn-success' id=${buttonId}>?</button>` + "</td>"));
	 	 
	     $(`#${buttonId}`).click(function() {
	 		console.log(`btn clicked! : ${buttonId}`)	 		
	 		$.ajax({
	 			type: "get",
	 			url: "https://api.github.com/users/"+rowData.login,
	 			dataType: "json", 			
	 		}).then(function(data) {
	 			$(`#${entryId}`).html(data.followers);
	 		})
	 	 })
	 	 
	 	row.append($("<td>" + data.following + "</td>"));
	    row.append($("<td>" + data.public_repos + "</td>"));
	  }
	  
	});
}
