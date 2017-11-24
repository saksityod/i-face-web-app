$( document ).ajaxStart(function() {
	$("body").mLoading();
});
$( document ).ajaxStop(function() {
	$("body").mLoading('hide');
});
$(document).ready(function(){
		
		$("#readData").click(function(){
			$.ajax({
				url:"./Model/search.jsp",
				type:"get",
				dataType:"json",
				 headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
				 //headers:{Authorization:"Bearer "},
				success:function(data){
					console.log(data);
				}
			});
		});
		
		$("#getToken").click(function(){
	
			alert(sessionStorage.getItem('galbalToken'));
		
		});
		
		
		
		$("#formSubmit").submit(function(){
			
			
			$.ajax({
				url:"./Model/login.jsp",
				dataType:"json",
				type:"post",
				data:{"username":$("#username").val(),"password":$("#password").val()},
				async:false,
				success:function(data){
					console.log(data);
					if(data.status==200){
						sessionStorage.setItem('galbalToken', data.token);
						sessionStorage.setItem('galbalUsername', $("#username").val());
						//alert(sessionStorage.getItem('galbalToken'));
						//alert(sessionStorage.getItem('galbalUsername'));
						//alert("login"+data.status);
						window.location = "./admin";
			
					}else if(data.status==400){
						alert(data.errorMassage);
					}

				}
			});
			
			return false;
			
			
		});
});