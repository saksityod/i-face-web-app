var profilePicturePath="";

function isValidDate(dateString) {
  var regEx = /^\d{4}-\d{2}-\d{2}$/;
  if(!dateString.match(regEx)) return false;  // Invalid format
  var d = new Date(dateString);
  if(!d.getTime()) return false; // Invalid date (or this could be epoch)
  return d.toISOString().slice(0,10) === dateString;
}

var getConfigDataFn = function(){
	
	$.ajax({
		url:"../Model/mConfig.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"selectAll"
		},
		async:false,
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
		
			profilePicturePath=data[0][2].replace(/\\/g, "\\\\");
			/*
			$("#matchingPicturePathText").val(data[1][2].replace(/\\/g, "\\\\"));
			$("#matchingConfidenceText").val(data[2][2].replace(/\\/g, "\\\\"));
			$("#cameraIPText").val(data[3][2].replace(/\\/g, "\\\\"));
			*/
			
			
			
			
			

		}
	});
	
}


/* Example Uses */
//console.log(isValidDate("0000-00-00"));  // false
//console.log(isValidDate("2015-01-40"));  // false
//console.log(isValidDate("2016-11-25"));  // true
//console.log(isValidDate("2016-02-29"));  // true = leap day
//console.log(isValidDate("2013-02-29"));  // false = not leap day
var validateEnrollmentFn=function(){
		var validate="";
		if($("#cardIdTxt").val()==""){
	 		validate+="Card ID is't empty. \n";
	 	}
//		if($("#passportIDTxt").val()==""){
//	 		validate+="Passport is't empty. \n";
//	 	}
		if(!isValidDate($("#dateOfBirthTxt").val())){
			validate+="Incorrect date value. \n";
		}
		
//		if($("#cardIdTxt").val()!=""){
//			
//			$.ajax({
//				url:"../Model/mEnrollment.jsp",
//				type:"get",
//				dataType:"json",
//				data:{
//					"action":"checkCardID",
//					"cardID":$("#cardIdTxt").val()
//				},
//				async:false,
//				headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
//				success:function(data){
//					console.log(data);
//					
//					
//				}
//			});
//			
//		}
	 	
	 	return validate;
	}
var delEnrollmentFn = function(profileID){
	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"delete",
			"profileID":profileID
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data=="success"){
				getEnrollmentDataFn();
			}
			
		},
		error: function (error) {
			alert("Unable to delete file: being used by another program.");
		}
	});
}
var delPictureEnrollmentFn = function(profileID){
	
	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"deletePicture",
			"profileID":profileID
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data=="success"){
				//getEnrollmentDataFn();
				delEnrollmentFn(profileID);
			}
			
		}
	});
}
var clearEnrollmentDataFn = function(){
	
	$("#cardIdTxt").val("");
	$("#passportIDTxt").val("");
	$("#titleTxt").val("");
	$("#fristNameTxt").val("");
	$("#lastNameTxt").val("");
	$("#genderM").prop("checked", true)
	$("#nationalityTxt").val("");
	$("#dateOfBirthTxt").val("");
	$("#religionTxt").val("");
	$("#addressTxt").val("	");
	$("#activeTxt").prop("checked",true);
	$("#actionEnrollment").val("add");
	$("#idEnrollment").val("");
	$("#listBlackListPicture").hide();
	
}
var listBacklistPictureFn = function(data){
	
	var html="";
	$.each(data,function(index,indexEntry){
		html+="<div style='float:left;'>";
		html+="<i id='picture-"+indexEntry[2]+"-"+indexEntry[3]+"-"+indexEntry[1]+"'  class=\"fa fa-trash-o delImage picture-"+indexEntry[2]+"-"+indexEntry[3]+"\" style='cursor:pointer; float:right;'></i><br>";
		html+="<img  src='../uploads/profile_picture/"+indexEntry[1]+"' width=\"210px;\">";
		
		html+="</div>";
	});
	
	$("#listBlackListPicture").html(html);
	$("#listBlackListPicture").show();
	
	$(".delImage").on("click",function(){
		var profileID="";
		var pictureID="";
		var pictureName="";
		var delImage = this.id.split("-");
		pictureID=delImage[1];
		profileID=delImage[2];
		pictureName=delImage[3];
		
		$.ajax({
			url:"../Model/mEnrollment.jsp",
			type:"get",
			dataType:"json",
			data:{
				"action":"deletePictureByItem",
				"profileID":profileID,
				"pictureID":pictureID,
				"pictureName":pictureName,
			},
			headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
			success:function(data){
				console.log(data);
				if(data=="success"){
					//picture-103-31-profile_picture_20170924200556_3.png
					$(".picture-"+pictureID+"-"+profileID).parent().remove();
				}else{
					alert("Can't to delete.");
				}
				
			},error: function (error) {
				alert("Unable to delete file: being used by another program.");
			}
		});
		
	});
	
}
var getBacklistPictureFn = function(profileID){
	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"getBlackListPicture",
			"profileID":profileID
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			listBacklistPictureFn(data);
		}
	});
}
var findOneEnrollmentDataFn = function(profileID){
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"findOne",
			"profileID":profileID
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			/*
			    0"11",
			    1"146060003344",
			    2"4544433",
			    3"Mr.",
			    4"Assama",
			    5"Binladen",
			    6"M",
			    7"Turkish",
			    8"2017-09-21",
			    9"Issalm",
			    10"Sosl 11Road NewTulabalud 11555",
 				11"2017-09-21 18:03:46.0",
 				12"admin",
 				13"2017-09-21 18:03:46.0",
 				14"admin",
 				15"1"
			  
			    alert($("#cardIdTxt").val());
				alert($("#passportIDTxt").val());
				alert($("#titleTxt").val());
				alert($("#fristNameTxt").val());
				alert($("#lastNameTxt").val());
				alert($(".genderTxt:checked").val());
				alert($("#nationalityTxt").val());
				alert($("#dateOfBirthTxt").val());
				alert($("#religionTxt").val());
				alert($("#addressTxt").val());
				alert(activeTxt);
			  */
			
			$("#cardIdTxt").val(data[0][1]);
			$("#passportIDTxt").val(data[0][2]);
			$("#titleTxt").val(data[0][3]);
			$("#fristNameTxt").val(data[0][4]);
			$("#lastNameTxt").val(data[0][5]);
			$("#genderM").prop("checked", true)
			$("#nationalityTxt").val(data[0][7]);
			$("#dateOfBirthTxt").val(data[0][8]);
			$("#religionTxt").val(data[0][9]);
			$("#addressTxt").val(data[0][10]);
			$("#actionEnrollment").val("edit");
			$("#idEnrollment").val(data[0][0]);
			getBacklistPictureFn(profileID);
			
			
			
			if(data[0][6]=="M"){
				
				$("#genderM").prop("checked", true);
			
				
			}else{
				$("#genderW").prop("checked", true);
			}
			
			if(data[0][15]=="1"){
			
				$("#activeTxt").prop("checked",true);
				
			}else{
				
				$("#activeTxt").prop("checked",false);
			}
			
			
			
			
		}
	});
};
var listEnrollmentDataFn = function(data){
	/*listDataEnrollmentArea*/
	var html="";
	$.each(data,function(index,indexEntry){
		/*
			 out.println("cardId="+cardId+"<br>");
		     out.println("passportID="+passportID+"<br>");
		     out.println("title="+title+"<br>");
		     out.println("fristName="+fristName+"<br>");
		     out.println("lastName="+lastName+"<br>");
		     out.println("gender="+gender+"<br>");
		     out.println("nationality="+nationality+"<br>");
		     out.println("dateOfBirth="+dateOfBirth+"<br>");
		     out.println("religion="+religion+"<br>");
		     out.println("address="+address+"<br>");
		     out.println("active="+active+"<br>");
		     
0["11", 
1"146060003344",
2"4544433",
3"Mr.",
4"Assama",
5"Binladen",
6"M",
7"Turkish",
8"2017-09-21"
9,"Issalm",
10"Sosl Road NewTulabalud 11555",
11"2017-09-21 18:03:46.0",
12"admin","2017-09-21 18:03:46.0",
13"admin"
14,"1"]]		 */
		     
	html+="<tr>";
		//html+="<td style='text-align:center;'> <img width=\"39px;\" src=\"img/profile_small.jpg\" class=\"img-circle\" alt=\"image\"></td>";
		html+="<td> "+indexEntry[3]+"</td>";
		html+="<td> "+indexEntry[4]+" "+indexEntry[5]+"</td>";
		html+="<td>"+indexEntry[6]+"</td>";
		html+="<td>"+indexEntry[2]+"</td>";
		html+="<td >"+indexEntry[1]+"</td>";
		html+="<td >"+indexEntry[7]+"</td>";
		html+="<td >"+indexEntry[8]+"</td>";
		html+="<td  class=\"text-navy\" style='text-align:center;'>";  
		
		html+="<button id='edit-"+indexEntry[0]+"' class='btn btn-warning edit' style='margin-right:3px;'>";
		html+="<i class='fa fa-pencil'></i>";
		html+="</button>";
		
		html+="<button id='id-"+indexEntry[0]+"' class='btn btn-danger del'  >";
        		
		html+="<i class='fa fa-trash-o'></i>";
	    html+="</button>";
		
		html+="</td>";
	html+="</tr>";
	
	
	});
	$("#listDataEnrollmentArea").html(html);
	
	
	//maanage
	$(".edit").click(function(){
		
		var id=this.id.split("-");
		id=id[1];
		//alert(id);
		$("#enrollmentModal").modal("show");
		findOneEnrollmentDataFn(id);
		
		
	});
	
	$(".del").click(function(){
		var id=this.id.split("-");
		id=id[1];
		if(confirm("Do you want to Delete this data.")){
			delEnrollmentFn(id);	
			//delPictureEnrollmentFn(id);
		}
	});
	
  
	
}
var getProfileIDFn = function(cardId,passportID){
	var profileID="";
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"getProfileID",
			"cardId":cardId,"passportID":passportID
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		async:false,
		success:function(data){
			
			//console.log(data[0][0]);
			profileID= data[0][0];
			
		}
		
	});
	//console.log(profileID);
	return profileID;
	
}
var getEnrollmentDataFn = function(){
	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"get",
		dataType:"json",
		data:{
			"action":"selectAll"
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			listEnrollmentDataFn(data);
			
		}
	});
	
}

var enrollmentInsertFn = function(){
	var activeTxt="";
	if($("#activeTxt").prop("checked")==true){
		activeTxt="1";
	}else{
		activeTxt="0";
	}
	/*
	alert($("#cardIdTxt").val());
	alert($("#passportIDTxt").val());
	alert($("#titleTxt").val());
	alert($("#fristNameTxt").val());
	alert($("#lastNameTxt").val());
	alert($(".genderTxt:checked").val());
	alert($("#nationalityTxt").val());
	alert($("#dateOfBirthTxt").val());
	alert($("#religionTxt").val());
	alert($("#addressTxt").val());
	alert(activeTxt);
	*/
	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"post",
		dataType:"json",
		data:{
			"cardId":$("#cardIdTxt").val(),
			"passportID":$("#passportIDTxt").val(),
			"title":$("#titleTxt").val(),
			"fristName":$("#fristNameTxt").val(),
			"lastName":$("#lastNameTxt").val(),
			"gender":$(".genderTxt:checked").val(),
			"nationality":$("#nationalityTxt").val(),
			"dateOfBirth":$("#dateOfBirthTxt").val(),
			"religion":$("#religionTxt").val(),
			"address":$("#addressTxt").val(),
			"active":activeTxt,
			"createBy":sessionStorage.getItem('galbalUsername'),
			
			
			"action":"insert"
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data=="success"){
				if($("#flieEnrollment").val()==""){
					$("#enrollmentModal").modal("hide");
					getEnrollmentDataFn();
				}else{
					
					
					var getProfileID=getProfileIDFn($("#cardIdTxt").val(),$("#passportIDTxt").val());
					//$("form#uploadForm").attr("action","/IFACETech/admin/upload_jsp.jsp?token="+sessionStorage.getItem('galbalToken')+"&profileID="+getProfileID+"&createBy="+sessionStorage.getItem('galbalUsername')+"&profilePicturePath="+profilePicturePath);
					$("form#uploadForm").attr("action","/IFACETech/admin/upload_jsp.jsp?token="+sessionStorage.getItem('galbalToken')+"&profileID="+getProfileID+"&createBy="+sessionStorage.getItem('galbalUsername'));
					$("form#uploadForm").submit();
				}

			
			}
		}
	});
		
}

var enrollmentUpdateFn = function(){
	var activeTxt="";
	if($("#activeTxt").prop("checked")==true){
		activeTxt="1";
	}else{
		activeTxt="0";
	}

	
	$.ajax({
		url:"../Model/mEnrollment.jsp",
		type:"post",
		dataType:"json",
		data:{
			"cardId":$("#cardIdTxt").val(),
			"passportID":$("#passportIDTxt").val(),
			"title":$("#titleTxt").val(),
			"fristName":$("#fristNameTxt").val(),
			"lastName":$("#lastNameTxt").val(),
			"gender":$(".genderTxt:checked").val(),
			"nationality":$("#nationalityTxt").val(),
			"dateOfBirth":$("#dateOfBirthTxt").val(),
			"religion":$("#religionTxt").val(),
			"address":$("#addressTxt").val(),
			"active":activeTxt,
			"createBy":sessionStorage.getItem('galbalUsername'),
			"action":"update",
			"profileID":$("#idEnrollment").val()
		},
		headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
		success:function(data){
			//console.log(data);
			if(data=="success"){
				
				
				if($("#flieEnrollment").val()==""){
					$("#enrollmentModal").modal("hide");
					getEnrollmentDataFn();
				}else{
					var getProfileID=getProfileIDFn($("#cardIdTxt").val(),$("#passportIDTxt").val());
					//$("form#uploadForm").attr("action","/IFACETech/admin/upload_jsp.jsp?token="+sessionStorage.getItem('galbalToken')+"&profileID="+getProfileID+"&createBy="+sessionStorage.getItem('galbalUsername')+"&profilePicturePath="+profilePicturePath);
					$("form#uploadForm").attr("action","/IFACETech/admin/upload_jsp.jsp?token="+sessionStorage.getItem('galbalToken')+"&profileID="+getProfileID+"&createBy="+sessionStorage.getItem('galbalUsername'));
					
					$("form#uploadForm").submit();

				}
			}
		}
	});
		
}
$(document).ready(function(){
	
	
	getConfigDataFn();
	//alert(profilePicturePath);
	
	$("#addEnrollment").click(function(){
		clearEnrollmentDataFn();
		$("#enrollmentModal").modal("show");
		
	});
	$('#dateOfBirthTxt').datepicker({
	    //comment the beforeShow handler if you want to see the ugly overlay
	    beforeShow: function() {
	        setTimeout(function(){
	            $('.ui-datepicker').css('z-index', 99999999999999);
	        }, 0);
	    }
	});
	 $("#dateOfBirthTxt").datepicker( "option", "dateFormat", "yy-mm-dd");
	
	 
	 
	 //get data
	 getEnrollmentDataFn();
	 
	$("#btnSubmit").click(function(){
		if(validateEnrollmentFn()!=""){
			alert(validateEnrollmentFn());
			return false;
		}
		if($("#actionEnrollment").val()=="add"){
			
			enrollmentInsertFn();
		}else{
			enrollmentUpdateFn();
		}
		
		
		
	
	});
	$("#btnReset").click(function(){
		clearEnrollmentDataFn();
		$("#btnImageReset").click();
	});
	
	
	
	
	
	
	
	
});