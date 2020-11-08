<!doctype html>
<html>
<head>
<title>Lab08 - bai03 - Login</title>
<?php 
	session_start();
	if (isset($_SESSION['status_login']))
	if ($_SESSION['status_login'] == true)
		header("location:info.php");
 ?>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />
<script type="text/javascript">
	function dangki()
	{
		window.location="signin.php";
	}
</script>

</head>
<body>
<h1 class="w3ls">Form đăng nhập</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">COMIC </h2>
	</div>
	<div class="content-agile2">
		<form action="info.php" method="post">

			<div class="form-control w3layouts">	
				<input type="text" id="name" name="name" placeholder="Tên đăng nhập" title="Vui lòng nhập tên đang nhập" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password" placeholder="Mật khẩu" id="password1" required="">
			</div>			
			
			<input type="submit" class="register" value="Đăng nhập">
		</form>
		<p class="wthree w3l">Chưa có tài khoản?</p>
		<button onclick="dangki();">Đăng kí</button>
		<p class="wthree w3l"><br>Bạn có thể đăng nhập với</p>
		<ul class="social-agileinfo wthree2">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
<p class="copyright w3l">Giao diện được sử dụng để hiện thực yêu cầu của lab08-bài3 <a href="https://w3layouts.com/" target="_blank">LHD</a></p>
</body>
</html>