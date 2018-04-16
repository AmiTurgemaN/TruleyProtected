var dictionary = {};


function initTable() {
		var table = $('#mtable').DataTable({
			"ajax": {
				"url": "http://localhost:3000/machines",
				"dataSrc": ""
			},
		    columns: [ 
		        { data : "id", "width": "5%", title: "ID" },
		        { data : "hostname", "width": "45%", title: "Hostname" },
		        { data : "ip", "width": "15%", title: "IP" },
		        { data : "mac", "width": "15%", title: "MAC" },
		        { data : "status", "width": "10%", title: "Status" },        
		        { data : "os", "width": "10%", title: "OS" }      
		   ],
		   "columnDefs": [
	        {"className": "dt-left", "targets": "_all"}
	       ]
		}); 
	}


	function initDictionary() {
		initTable();
	}

	$(document).ready(initDictionary);