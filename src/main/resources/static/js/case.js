var Nowkey = "";
var Nowpage = 1;
var PageSum;

function getCaseList(page){
	key = $("#nowKey").val();
	
	$.ajax({
		url: "./getCaseList",
		type: "get",
		dataType: "html",
		data: {page:page,key:Nowkey},
		success: function(result){
			console.log(result+"123");
			 $('#table1').html(result);
		}
		});
} 

function changeKey(){
	key = $("#Serch_key").val();
	Nowkey = key;
//	getPageSum();
	getCaseList(1);
}