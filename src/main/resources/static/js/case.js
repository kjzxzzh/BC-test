var Nowkey = "";
var Nowpage = 1;
var PageSum;
//function getPageSum(){
//	$.ajax({
//		url: "http://localhost:8080/account/getPageSum",
//		type: "get",
//		 dataType: 'json', 
//		data: {key:Nowkey},
//		success: function(result){
//			PageSum = result.pageSum;
//			}
//		});
//}
function getCaseList(page){
	key = $("#nowKey").val();
	$.ajax({
		url: "http://localhost:8080/account/getCaseList",
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