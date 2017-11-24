var galbalToken="";
$( document ).ajaxStart(function() {
	$("body").mLoading();
});
$( document ).ajaxStop(function() {
	$("body").mLoading('hide');
});

var checkSessionFn = function(){
	
	var token= sessionStorage.getItem('galbalToken');
	console.log(token);
	
	$.ajax({
		url:"../Model/session.jsp",
		type:"get",
		dataType:"json",
		 headers:{Authorization:"Bearer "+token},
		 cache: false,
		 async:true,
		success:function(data){
			console.log(data.status);
			if(data.status==200){
				$("#wrapper").show();
				return true;
				
			}else{
				window.location = "../";
			}
		}
	});
	
};
var getPageFn = function(page){
	$.ajax({
		url:page,
		type:"get",
		success:function(data){
			$("#contentArea").html(data);
		}
	});
};



/*route single page*/

var app = angular.module("myApp", ["ngRoute"]);
app.config(function($routeProvider) {
	$routeProvider
	.when("/", {
        templateUrl : "home.jsp"
    })
    .when("/pages/:url", {
        templateUrl : "home.jsp",
        controller:"pageController"
    	
    })
    .otherwise({
    	templateUrl : "home.jsp"
    });
});

app.controller("pageController",function($scope, $route, $routeParams){

	$route.current.templateUrl = $routeParams.url + ".jsp";
	  $.get($route.current.templateUrl, function (data){
	       $("#includePage").html(data);

	    });
});


$(".mainMenu").click(function(){
	$(".mainMenu").removeClass("active");
	$(this).addClass("active");
		
	
});

/*route single page*/