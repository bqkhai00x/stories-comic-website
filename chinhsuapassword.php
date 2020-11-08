<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>COMIC ASS2 HOMEVIEW</title>
	<!-- Custom Theme files -->
	<!--theme-style-->
	<!--fonts-->
	<link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,700,400italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
	<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" type="text/css" href="css/dangki.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<script type="text/javascript">
	function dangnhap()
	{
		window.location="dangnhap.php";
	}

	</script>	
	<?php
		ob_start(); 
		session_start();
		$username = $_SESSION['username'];
	    include "config.php";
		$query = mysqli_query($conn,"SELECT * FROM account WHERE username='$username'");
		$row = mysqli_fetch_array($query);
		$password =$row['Password'];

	?>
</head>

<body>
	<!-- /#header -->
	<div id="page">
	<div id="menu-wrapper" class="navbar-wrapper">
	<div class="inner-container">
	<div id="navigation-bar" class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
	<div class="navbar-header">
	<div>
	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
	<span class="sr-only"></span>

	</button>
	<a id="logo" class="navbar-brand" href="index.php"><img class="" ass="" src="https://www.upsieutoc.com/images/2019/12/07/logo.png" alt="errorr"></a>
	</div>
	</div>
	<div id="menu" class="navbar-collapse collapse">
	<ul class="nav navbar-nav navbar-left">
	<li class=" home"><a href="index.php" data-title="Home">Trang chủ</a></li>
	<li class="service"><a href="truyenhot.php" data-title="Truyện Hot">Truyện Hot</a></li>
	<li class="portfolio"><a href="truyenmoi.php" data-title="Truyện mới">Truyện mới</a></li>
	<li class="about"><a href="theloai.php" data-title="Thể loại">Thể loại</a></li>
	<li class="team"><a href="dangnhap.php" data-title="Đăng nhập">Đăng nhập</a></li>
	<li class="active client"><a href="Taikhoan.php" data-title="Tài Khoản">Tài khoản</a></li>
	</ul>
	</div>
	</div>
	</div>
	</div>
	</div> 
	</div> 
	<!-- /#header -->
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">COMIC WEB</h2>
		<p class="agileits2">ASSIGNMENT 2</p>
	</div>
	<div class="content-agile2">
		<form action="chinhsuapassword.php" method="post">
			
			<div class="form-control w3layouts">	
				<input type="text" style="color: red" id="username" name="username" placeholder="Tên đăng nhập" title="Vui lòng nhập tên đăng nhập" required="" readonly value = <?php echo $username ?>> 
			</div>
			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password" placeholder="Nhập mật khẩu cũ" id="password" required="" >
			</div>
			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password1" placeholder="Nhập mật khẩu mới" id="password1" required="" >
			</div>
			<div class="form-control agileinfo">	
				<input type="password" class="lock" name="password2" placeholder="Nhập lại mật khẩu mới" id="password2" required="" >
			</div>
			<input type="submit" class="register" name="click_dangki" value="Thay đổi thông tin">
		</form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password").onchange = validatePassword;
				document.getElementById("password1").onchange = validatePassword1;
				document.getElementById("password2").onchange = validatePassword2;
				
			}
			function validatePassword(){
				var pass=document.getElementById("password").value;

				if(pass.split(" ").length!=1)
					document.getElementById("password").setCustomValidity("Không được chứa khoảng trắng!");
				else
					document.getElementById("password").setCustomValidity('');	 
					//empty string means no validation error
			}
			function validatePassword1(){
				var pass1=document.getElementById("password1").value;

				if(pass1.split(" ").length!=1)
					document.getElementById("password1").setCustomValidity("Không được chứa khoảng trắng!");
				else
					document.getElementById("password1").setCustomValidity('');	 
					//empty string means no validation error
			}
			function validatePassword2(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;

				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Mật khẩu phải giống nhau!");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
			
		</script>
		<div style="color:red;margin-left:20%">
		<?php
		if (isset($_POST['password'])){
			$pw = $_POST['password'];	
			$pw1 = $_POST['password1'];	
		    include "config.php";
		    //Kiểm tra trùng mật khẩu hay không
		    $query = mysqli_query($conn,"SELECT password FROM account WHERE Username='$username'");
		    $row = mysqli_fetch_array($query);
		    if ($row['password'] != $pw) {
		        echo "<p>Mật khẩu bạn nhập không chính xác</p>";
		    }
		    else
		    {
		    	$sql = "UPDATE account SET Password = '$pw1' WHERE account.Username = '$username';";
   				if (mysqli_query($conn, $sql)){
   				$_SESSION['count'] = -1;
   				header("Location: taikhoan.php");
   				}
   				else echo "Chỉnh sửa không thành công!<br><br>";
					
		    	
	    	}

		}
		ob_end_flush();
		?>
	</div>
		<ul class="social-agileinfo wthree2">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		</ul>
	</div>
	<div class="clear"></div>

</body>	
</html>