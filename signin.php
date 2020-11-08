<!doctype html>
<html>
<head>
<title>Lab 8 - bai3</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' media="all" />


<!-- /php -->
<script type="text/javascript">
	function dangnhap()
	{

		window.location="login.php";
	}
</script>
</head>
<body>
<h1 class="w3ls">Form đăng kí</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">L H D</h2>
		<p class="agileits2">Lab08 - bài 03</p>
	</div>
	<div class="content-agile2">
		<form action="login.php" method="post">
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="firstname" placeholder="Họ và tên" title="Please enter your First Name" required="">
			</div>

			<div class="form-control w3layouts">	
				<input type="text" id="name" name="name" placeholder="Tên đăng nhập" title="Vui lòng nhập tên đang nhập" required="">
			</div>

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password" placeholder="Mật khẩu" id="password1" required="">
			</div>	

			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="confirm-password" placeholder="Nhập lại mật khẩu" id="password2" required="">
			</div>			
			
			<input type="submit" class="register" value="Đăng kí">
		</form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Mật khẩu phải giống nhau!");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
		</script>
		<p class="wthree w3l">Đã có tài khoản?</p>
		<button onclick="dangnhap();">Đăng nhập</button>
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