<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<style>
.form-group {
    margin-bottom: 5px;
}
</style>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>IFACE | Tech</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

	<!-- mloading -->
	<link href="css/jquery.mloading.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<body ng-app="myApp">
    <div id="wrapper" style='display:none;'>
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav metismenu" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element"> <span>
                            <img alt="image" width='100px;' class="img-circle" src="img/security.png" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Administrator</strong>
                             </span>
                             </span> </a>
                             
                        </div>
                        <div class="logo-element">
                            IFACE Tech
                        </div>
                    </li>
                    <li class="mainMenu active">
                        <a href="#/pages/home" id='homePage'><i class=" fa fa-home"></i> <span class="nav-label">หน้าแรก (Home)</span> </a>
                     
                    </li>
                    <li class="mainMenu">
                        <a href="#/pages/history" id='historyPage'><i class="fa fa-video-camera"></i> <span class="nav-label">ประวัติ (History)</span> </a>
                     
                    </li>
                    <li class="mainMenu">
                        <a href="#/pages/enrollment" id='enrollmentPage'><i class="fa fa-users"></i> <span class="nav-label">ลงทะเบียน (Enrollment)</span></a>
                    </li>
                    
                     <li class="mainMenu">
                        <a href="#/pages/config" id='configPage'><i class="fa fa-cogs"></i> <span class="nav-label">ตั้งค่า (Config)</span></a>
                    </li>

                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
           <!-- 
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
             -->
        </div>
            <ul class="nav navbar-top-links navbar-right">
               <!-- 
                <li>
                    <span class="m-r-sm text-muted welcome-message">Welcome to IFACETech</span>
                </li>
                 -->
                

                <li>
                    <a id='logOut' href="#">
                        <i class="fa fa-sign-out"></i> Log out
                    </a>
                </li>
                <!-- 
                <li>
                    <a class="right-sidebar-toggle">
                        <i class="fa fa-tasks"></i>
                    </a>
                </li>
                 -->
            </ul>

        </nav>
        </div>
        <div id="includePage"  class="ng-view"></div>
        
      
       
    </div>

    <!-- Mainly scripts -->
    
    <script src="js/jquery-2.1.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
   <!-- <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script> --> 
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Flot -->
    <script src="js/plugins/flot/jquery.flot.js"></script>
    <script src="js/plugins/flot/jquery.flot.tooltip.min.js"></script>
    <script src="js/plugins/flot/jquery.flot.spline.js"></script>
    <script src="js/plugins/flot/jquery.flot.resize.js"></script>
    <script src="js/plugins/flot/jquery.flot.pie.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>
    <script src="js/demo/peity-demo.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="js/inspinia.js"></script>
    <script src="js/plugins/pace/pace.min.js"></script>

    <!-- jQuery UI -->
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <!-- GITTER -->
    <script src="js/plugins/gritter/jquery.gritter.min.js"></script>

    <!-- Sparkline -->
    <script src="js/plugins/sparkline/jquery.sparkline.min.js"></script>

    <!-- Sparkline demo data  -->
    <script src="js/demo/sparkline-demo.js"></script>

    <!-- ChartJS-->
    <!-- 
    <script src="js/plugins/chartJs/Chart.min.js"></script>
 	-->
    <!-- Toastr -->
    <script src="js/plugins/toastr/toastr.min.js"></script>
    <!-- loadding  -->
    
    <script src="js/jquery.mloading.js"></script>
     <!-- load angular fame work start-->
     
    <script src="js/angular.min.js"></script>
    <script src="js/angular-route.js"></script>
    <!-- load angular fame work end -->
    
     <!-- Mainjs -->
    <script src="../Controller/cMain.js"></script>
     <!-- Indexjs -->
    <script src="../Controller/cIndex.js"></script>


    
</body>
</html>
