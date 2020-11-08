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
	<link rel="stylesheet" type="text/css" href="css/table.css">
	<script type="text/javascript">
	function dangnhap()
	{
		window.location="dangnhap.php";
	}
	function chinhsua(){

		alert (this.value);
	}
	</script>	
	<?php
		ob_start(); 
		session_start();
		$username = $_SESSION['username'];
	    
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
	
	<div class="content-agile2" style = "width: 100%">
		<table style = "margin-left: 20px">
			<tr>
				<th colspan="2">Chọn</th>
				<th>Username</th>
				<th>Password</th>
				<th>Họ và tên</th>
				<th>Giới tính</th>
				<th>Ngày sinh</th>
			</tr>

		<?php
		include "config.php";
		$query = mysqli_query($conn,"SELECT * FROM account");
		while ($row = mysqli_fetch_array($query)){
			$username =$row['Username'];
			$fullname =$row['fullname'];
			$password =$row['Password'];
			$email =$row['Email'];
			$bd =$row['BirthDate'];
		?>	
		<tr>
			<td>
				<form action="chinhsuauserbyadmin.php" method="post">
					<input type="text" name = "usernameedit"  style = "display: none" value=<?php echo $username  ?> >
					<input type="submit" name="click_chinhsua" value="Chỉnh sửa" style="width: 100px;height: 50px; background-color: #3970b0;color: white;">
				</form>
			</td>
			
			<td>
				<form action="xoauserbyadmin.php" method="post">
					<input type="text" style = "display: none" id = "usernameedit" value=<?php echo $username  ?> >
					<input type="submit" name="click_xoa" value="Xoá" style="width: 100px;height: 50px; background-color: #3970b0;color: white;">
				</form>
			</td>
			<td> <?php echo $username ?> </td>
			<td> <?php echo $password ?> </td>
			<td> <?php echo $fullname ?> </td>
			<td> <?php echo $email ?> </td>
			<td> <?php echo $bd ?> </td>	
		</tr>


		<?php } 
		?>		
		</table>
		<div style="color:red;margin-left:20%">
		<?php

		if (isset($_POST['click_chinhsua'])){
    		header("Location: chinhsuausernamebyadmin.php");
		};

		if (isset($_POST['username'])){
			$fullname = $_POST['fullname'];
			$pw = $_POST['password'];	
			$email = $_POST['email'];
			$bd = $_POST['birthdate'];
		    include "config.php";
		    //Kiểm tra trùng mật khẩu hay không
		    $query = mysqli_query($conn,"SELECT password FROM account WHERE Username='$username'");
		    $row = mysqli_fetch_array($query);
		    if ($row['password'] != $pw) {
		        echo "<p>Mật khẩu bạn nhập không chính xác</p>";
		    }
		    else
		    {
		    	//Kiểm tra tên email đã tồn tại chưa
				$query = mysqli_query($conn,"SELECT username,password FROM account WHERE Email='$email'");
				$row = mysqli_fetch_array($query);
			    if ($row['username'] != $username ) {
			        echo "<p>Email này đã tồn tại. Vui lòng sử dụng email khác. </p>";
			    }
		    	else
		    	{
			    	$sql = "UPDATE account SET fullname = '$fullname', Email = '$email', BirthDate = '$bd' WHERE account.Username = '$username';";
	   				if (mysqli_query($conn, $sql)){
	   				$_SESSION['count'] = -1;
	   				header("Location: taikhoan.php");
	   				}
	   				else echo "Chỉnh sửa không thành công!<br><br>";
					
		    	}
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