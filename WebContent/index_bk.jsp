<script
			  src="https://code.jquery.com/jquery-2.2.4.min.js"
			  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
			  crossorigin="anonymous"></script>
			  
<script>

var galbalToken="";
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
		
		$("#getSesstion").click(function(){
			$.ajax({
				url:"./Model/session.jsp",
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
		
		$("#logOut").click(function(){
			
			sessionStorage.setItem('galbalToken', '');
		
		});
		
		$("#setToken").click(function(){
			
			$.ajax({
				url:"./Model/getToken.jsp",
				dataType:"json",
				type:"get",
				data:{"username":"admin","password":"password"},
				success:function(data){
					if(data.status==200){
						sessionStorage.setItem('galbalToken', data.token);
						location.reload();
						
					}
					
					
					
					
				}
			});
		});
		
		
$("#insertData").click(function(){
			
			$.ajax({
				url:"./Model/insertData.jsp",
				dataType:"json",
				type:"get",
				headers:{Authorization:"Bearer "+sessionStorage.getItem('galbalToken')},
				success:function(data){
					console.log(data);
				}
			});
		});
		
		
		
	});
</script>
<button id='setToken'>Login</button>
<button id='logOut'>LogOut</button>
<button id='getToken'>getToken</button>
<button id='readData'>readData</button>
<button id='getSesstion'>getSesstion</button>
<button id='insertData'>inertData</button>