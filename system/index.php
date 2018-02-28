<?php
	include("../config/koneksi.php");
 ?> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>LPM e-Learning</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="config/css/bootstrap.min.css" rel="stylesheet">
<link href="config/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600"
        rel="stylesheet">
<link href="config/css/font-awesome.css" rel="stylesheet">
<link href="config/css/style.css" rel="stylesheet">
<link href="config/css/pages/dashboard.css" rel="stylesheet">
<link href="config/css/pages/signin.css" rel="stylesheet" type="text/css">

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="navbar navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container"> 
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
        </a>
        <a class="brand" href="index.php?param=logout">LPM e-Training</a>
      <!--/.nav-collapse --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /navbar-inner --> 
</div>
<!-- /navbar -->
<?php if(isset($_SESSION['jenis_user'])!=""){ ?>

<div class="subnavbar">
  <div class="subnavbar-inner">
    <div class="container">
      <ul class="mainnav">
        <li><a href="index.php"><i class="icon-dashboard"></i><span>Dashboard</span> </a> </li>
        <?php 
        	if($_SESSION['jenis_user']=="Teacher"){
        ?>
        <li><a href="index.php?param=subject"><i class="icon-book"></i><span>Materi Pelajaran</span> </a> </li>
        <?php } ?>
        <?php 
        	if($_SESSION['jenis_user']=="Student"){
        ?>
        <li><a href="index.php?param=student_subject"><i class="icon-book"></i><span>Materi Pelajaran</span> </a> </li>
        <?php } ?>
        
        <li><a href="index.php?param=logout"><i class="icon-off"></i><span>Keluar</span> </a> </li>

      </ul>
    </div>
    <!-- /container --> 
  </div>
  <!-- /subnavbar-inner --> 
</div>
<!-- /subnavbar -->
<div class="main">
  		<?php 
			$parameter = "";
			if(isset($_GET['param'])){
				$parameter = $_GET['param'];
			}
			switch($parameter){
				case 'home':
					include('pages/home.php');
					break;

				case 'subject':
					include('pages/subject.php');
					break;

				case 'student_subject':
					include('pages/student_subject.php');
					break;

				case 'logout':
					session_destroy();
					header("Location:index.php");
					break;

				default:
					include('pages/home.php');
					break;
			}
			
		?>  <!-- /main-inner --> 
</div>
<!-- /main -->

<div class="footer">
  <div class="footer-inner">
    <div class="container">
      <div class="row">
        <div class="span12"> &copy; 2017 <a href="https://www.facebook.com/deathangel.kingdiamond">Responsive LPM e-Training | Design by adrmade</a>. </div>
        <!-- /span12 --> 
      </div>
      <!-- /row --> 
    </div>
    <!-- /container --> 
  </div>
  <!-- /footer-inner --> 
</div>
<?php 
	}else{ 

		$parameter = "";
			if(isset($_GET['param'])){
				$parameter = $_GET['param'];
			}
			switch($parameter){
				case 'signup':
					include('pages/signup.php');
					break;
				case 'login':
					include('pages/login.php');
					break;
        
				default:
					include("pages/login.php");
					break;
			}
	}
?>
<!-- /footer --> 
<!-- Le javascript
================================================== --> 
<!-- Placed at the end of the document so the pages load faster --> 
<script src="config/js/jquery-1.7.2.min.js"></script> 
<script src="config/js/excanvas.min.js"></script> 
<script src="config/js/chart.min.js" type="text/javascript"></script> 
<script src="config/js/bootstrap.js"></script>
<script language="javascript" type="text/javascript" src="config/js/full-calendar/fullcalendar.min.js"></script>
 
<script src="config/js/base.js"></script> 

</body>
</html>
