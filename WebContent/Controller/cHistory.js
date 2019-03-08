
var listHistoryDataFn = function(data){
	/*listDataHistoryArea*/
	var html="";
	$.each(data,function(index,indexEntry){
	/*
	0"2015-05-02 01:09:32.0",
	1"/home/kosit/Pictures/upload/abc1234567890",
	2"1173783_286670828140231_747779651_n-crop.png",
	3"200",
	4"c://abc/picture1.jpg",
	5"picture1",
	6"Mr.",
	7"Assama",
	8"Binladen",
	9"M",
	10"146060003344",
	11"4544433",
	12"Turkish",
	13"2017-09-21",
	14"11"
	*/
		     
	
		html+="<tr>";
			html+="<td><i class=\"fa fa-clock-o\"></i> "+indexEntry[0]+"</td>";
			html+="<td>"+indexEntry[6]+" </td>";
			html+="<td>"+indexEntry[7]+" "+indexEntry[8]+"</td>";
			html+="<td >"+indexEntry[9]+"</td>";
			html+="<td >"+indexEntry[10]+"</td>";
			html+="<td >"+indexEntry[11]+"</td>";
			html+="<td >"+indexEntry[12]+"</td>";
			html+="<td> "+indexEntry[13]+"</td>";
		html+="</tr>";
         
		html+="<tr>";
			html+="<td colspan='8'>";
				html+="<div class='row'>";
				html+="<div class=\"col-lg-offset-2 col-lg-4\">";
				html+="<div class=\"panel panel-danger\">";
				html+="<div class=\"panel-heading\">";
				html+="Picture from Watch List ";
					html+="</div>";
						html+="<div class=\"panel-body\">";
						html+="<img src='" + indexEntry[4] + "/" +indexEntry[5]+"' width=\"305px;\">";
					html+="</div>";
                             
					html+="</div>";
					html+="</div>";
                      
						html+="<div class=\"col-lg-4\">";
						html+="<div class=\"panel panel-warning\">";
						html+="<div class=\"panel-heading\">";
						html+="<i class=\"fa fa-warning\"></i>Capture Picture from Camera (<b style='color:green;'>"+parseFloat(indexEntry[3]).toFixed(2)+"%</b>) ";
						html+="</div>";
							html+="<div class=\"panel-body\">";
							html+=" <img src='" + indexEntry[1] + "/" +indexEntry[2]+"' width=\"305px;\">";
					html+="</div>";
						html+="</div>";
						html+="</div>";
					html+="</div>";
				html+="</td>";
		html+="</tr>";
       
	
	
	});
	$("#listDataHistoryArea").html(html);
	
	
	
	
  
	
}

var getHistoryDataFn = function(action){
	
	
	$.ajax({
		url:"../Model/mHistory.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":action,
			"startDate":$("#startDateHistory").val(),
			"endDate":$("#endDateHistory").val(),
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			listHistoryDataFn(data);
			
		}
	});
	
}


$(document).ready(function(){
	
	$('#startDateHistory').datepicker({
	    //comment the beforeShow handler if you want to see the ugly overlay
	    beforeShow: function() {
	        setTimeout(function(){
	            $('.ui-datepicker').css('z-index', 99999999999999);
	        }, 0);
	    }
	});
	 $("#startDateHistory").datepicker( "option", "dateFormat", "yy-mm-dd");
	 
	 $('#endDateHistory').datepicker({
		    //comment the beforeShow handler if you want to see the ugly overlay
		    beforeShow: function() {
		        setTimeout(function(){
		            $('.ui-datepicker').css('z-index', 99999999999999);
		        }, 0);
		    }
		});
		 $("#endDateHistory").datepicker( "option", "dateFormat", "yy-mm-dd");

	 //get data
	 $("#btnSubmitHistory").click(function(){
		 if($("#startDateHistory").val()!="" && $("#endDateHistory").val()!=""){
			 getHistoryDataFn("selectByDate");
		 }else{
			 getHistoryDataFn("selectAll");
		 }
	 });
	 $("#btnSubmitHistory").click();
	 
	 
	
	
});