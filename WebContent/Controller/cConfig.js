var clearConfigDataFn = function(){	
	$("#paramValueTxt").val("");
}
/*
 



*/
var getConfigDataFn = function(){
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"selectAll"
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
		
			$("#profilePicturePathText").val(data[0][2].replace(/\\/g, "\\\\"));
			$("#matchingPicturePathText").val(data[1][2].replace(/\\/g, "\\\\"));
			$("#matchingConfidenceText").val(data[2][2].replace(/\\/g, "\\\\"));
			$("#cameraIPText").val(data[3][2].replace(/\\/g, "\\\\"));
			
			$("#urlDbText").val(data[4][2].replace(/\\/g, "\\\\"));
			$("#usernameDbText").val(data[5][2].replace(/\\/g, "\\\\"));
			$("#passwordDbText").val(data[6][2].replace(/\\/g, "\\\\"));
			
			

		}
	});
	
}



var configUpdateFn = function(){
	
var message="";
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#profilePicturePathText").val(),
			"action":"updateProfilePicturePathText",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateProfilePicturePath ok");
				//alert("Saved.");
				
			}else{
				message+="Save to Profile Picture Path error.\n";
			}
		}
	});
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#matchingPicturePathText").val(),
			"action":"updateMatchingPicturePathText",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateMatchingPicturePath ok");
				//alert("Saved.");
			}else{
				message+="Save to Profile Matching Picture Path error.\n";
			}
		}
	});
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#matchingConfidenceText").val(),
			"action":"updateMatchingConfidenceText",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateMatchingConfidence ok");
				//alert("Saved.");
			}else{
				message+="Save to Matching Confidence error.\n";
			}
		}
	});
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#cameraIPText").val(),
			"action":"updateCameraIPText",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateCameraIP ok");
				//alert("Saved.");
			}else{
				message+="Save to Camera IP error.\n";
			}
		}
	});
	
	/*Set Database Connection Start*/
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#urlDbText").val(),
			"action":"updateUrlDb",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateUrlDb ok");
				//alert("Saved.");
			}else{
				message+="Save to URL error.\n";
			}
		}
	});
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#usernameDbText").val(),
			"action":"updateUserDb",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updateUserDb ok");
				//alert("Saved.");
			}else{
				message+="Save to Username error.\n";
			}
		}
	});
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"post",
		dataType:"json",
		data:{
			"paramValue":$("#passwordDbText").val(),
			"action":"updatePasswordDb",
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			//console.log(data);
			if(data=="success"){
				console.log("updatePasswordDb ok");
				//alert("Saved.");
			}else{
				message+="Save to Password error.\n";
			}
		}
	});
	/*Set Database Connection End*/
	
	if(message!=""){
		alert(message);
	}else{
		alert("Saved.");
	}
	
	
		
}
$(document).ready(function(){
	

	 
	 //get data
	 getConfigDataFn();
	 
	$("#btnSubmitConfig").click(function(){
		
			configUpdateFn();
		
	});
	
	
	
	
	
	
});