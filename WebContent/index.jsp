<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>IFACETech | Login</title>

    <link href="admin/css/bootstrap.min.css" rel="stylesheet">
    <link href="admin/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="admin/css/animate.css" rel="stylesheet">
    <link href="admin/css/style.css" rel="stylesheet">
    
    <!-- mloading -->
	<link href="admin/css/jquery.mloading.css" rel="stylesheet">

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen animated fadeInDown">
        <div>
            <div>

               <!--  <h1 class="logo-name">F+</h1> -->

            </div>
            <h3>Welcome to iFaceTech</h3>
           
            <p>ระบบระบุตัวบุคคลด้วยภาพใบหน้า</p>
            <form class="m-t" id='formSubmit' role="form" action="#">
                <div class="form-group">
                    <input type="text" id='username' class="form-control" placeholder="Username" required="">
                </div>
                <div class="form-group">
                    <input type="password" id='password' class="form-control" placeholder="Password" required="">
                </div>
                <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

				<!-- 
                <a href="#"><small>Forgot password?</small></a>
                <p class="text-muted text-center"><small>Do not have an account?</small></p>
                <a class="btn btn-sm btn-white btn-block" href="register.html">Create an account</a>
                 -->
            </form>
            <!-- 
            <p class="m-t"> <small>Inspinia we app framework base on Bootstrap 3 &copy; 2014</small> </p>
             -->
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="admin/js/jquery-2.1.1.js"></script>
    <script src="admin/js/bootstrap.min.js"></script>
    <script src="admin/js/jquery.mloading.js"></script>
     <!-- load angular fame work start-->
   
  
    <script src="Controller/cLogin.js"></script>
	
</body>

</html>
