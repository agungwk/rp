<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Kauruh e-Training</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Kauruh Website by www.kauruh.id - LPM e-Training"/>
	<meta name="keywords" content="Kauruh Website by www.kauruh.id - LPM e-Training"/>
	<meta name="author" content="www.kauruh.id" />
    <script type="text/javascript" src="config/js/jquery-3.1.1.min.js"></script>
    <link rel="icon" type="text/css" href="assets/theme_images/Logo_Rp.ico" sizes="32x32"/>

	<!--
	//////////////////////////////////////////////////////

	Kauruh TEMPLATE
	DESIGNED & DEVELOPED by andreas.co.id

	Website: 		http://kauruh.id/
	Email: 			info@kauruh.id
	Twitter: 		https://twitter.com/5_rumah
	Facebook: 		https://www.facebook.com/Rumah-Pengembangan-5-Pilar-1932387297013093/

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto+Slab:300,400" rel="stylesheet">

	<!-- Animate.css -->
	<link rel="stylesheet" href="config/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="config/css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="config/css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="config/css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="config/css/owl.carousel.min.css">
	<link rel="stylesheet" href="config/css/owl.theme.default.min.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="config/css/flexslider.css">

	<!-- Pricing -->
	<link rel="stylesheet" href="config/css/pricing.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="config/css/style.css">

	<!-- Modernizr JS -->
	<script src="config/js/modernizr-2.6.2.min.js"></script>

	</head>
	<body>

	<div class="fh5co-loader"></div>

	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<a href="http://eas-id.com/" target="_blank" class="site">www.eas-id.com</a>
						<p class="num">Phone: +6221 227 42550</p>
						<ul class="fh5co-social">
							<li><a href="https://www.facebook.com/" target="_blank"><i class="icon-facebook2"></i></a></li>
							<li><a href="https://twitter.com/" target="_blank"><i class="icon-twitter2"></i></a></li>
							<li><a href="https://www.linkedin.com/in/rumah-pengembangan-5299a2158/" target="_blank"><i class="icon-linkedin2"></i></a></li>
							<li><a href="https://www.instagram.com/" target="_blank"><i class="icon-instagram"></i></a></li>
							<li><a href="https://web.whatsapp.com/" target="_blank"><i class="icon-whatsapp"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.php"><i class="icon-home"></i>Lima Pilar<span></span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li class="active"><a href="index.php">Home</a></li>
							<li><a href="courses.php">Courses</a></li>
							<li><a href="teacher.php">Teacher</a></li>
							<li><a href="about.php">About</a></li>
							<li class="has-dropdown">
								<a href="blog.php">Blog</a>
								<ul class="dropdown">
									<li><a href="#">Web Master</a></li>
									<li><a href="#">e-Commerce</a></li>
								</ul>
							</li>
							<li><a href="contact.php">Contact</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</nav>

    <div id="own_wrapper">
        <?php
        $parameter = "";
        if(isset($_GET['param'])){
           $parameter = $_GET['param'];
        }
            switch($parameter){
                case 'home':
                    include('pages/home_blog.php');
                    break;
                default:
                    include('pages/home_blog.php');
                    break;
            }
        ?>
    </div>

	<footer id="fh5co-footer" style="padding: 20px" role="contentinfo" style="background-image: url(assets/theme_images/img_bg_4.jpg);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-6 fh5co-widget">
					<h3>Kontak Kami</h3>
					    <li>Address : Ruko Pondok Cabe Mutiara Blok B 16, Tangerang Selatan</li>
                        <li>Office Telephone : +6221 227 42550</li>
                        <li><a href="http://kauruh.id/" target="_blank">Website : www.kauruh.id</a></li>
                        <li><a href="#" target="_blank">Email : info@kauruh.id</a></li>
                        <li>Office Hour : 08:00 - 17:00 WIB</li>
				</div>
			</div>
			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<small class="block">&copy; 2017 Kauruh lpm e-Training. All Rights Reserved.</small>
						<small class="block">Designed by <a href="https://www.facebook.com/deathangel.kingdiamond" target="_blank">adrmade</a> Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> &amp; <a href="https://www.pexels.com/" target="_blank">Pexels</a></small>
					</p>
				</div>
			</div>
		</div>


	</footer>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="config/js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="config/js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="config/js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="config/js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="config/js/jquery.stellar.min.js"></script>
	<!-- Carousel -->
	<script src="config/js/owl.carousel.min.js"></script>
	<!-- Flexslider -->
	<script src="config/js/jquery.flexslider-min.js"></script>
	<!-- countTo -->
	<script src="config/js/jquery.countTo.js"></script>
	<!-- Magnific Popup -->
	<script src="config/js/jquery.magnific-popup.min.js"></script>
	<script src="config/js/magnific-popup-options.js"></script>
	<!-- Count Down -->
	<script src="config/js/simplyCountdown.js"></script>
	<!-- Main -->
	<script src="config/js/main.js"></script>
	<script>
    var d = new Date(new Date().getTime() + 1000 * 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
	</script>
	</body>
</html>
