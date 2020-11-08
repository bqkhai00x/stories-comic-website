<!doctype html>
<html>
<head>
<title>TTCNPM ASS2</title>
<?php
	session_start();
	if (isset($_POST['name'])) $_SESSION['status_login'] = $_POST['name'];
	if  (isset($_SESSION['status_login'])) 
		$name = $_SESSION['status_login'];
	else
		header("location:login.php");

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
	function dangxuat()
	{
		var result = confirm('Bạn có chắc muốn đăng xuất khỏi trình duyệt?');
		if (result)	
		window.location="logout.php";
	}
</script>

</head>
<body>
<h1 class="w3ls">Form thông tin</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">L H D</h2>
		<p class="agileits2">Lab08 - bài 03</p>
	</div>
	<div class="content-agile2">
		<p class="wthree w3l">Bạn Đã Đăng Nhập Thành Công</p>
		<p class="wthree w3l">Tên Đăng Nhập Của Bạn: <?php echo $name; ?></p>
		<button onclick="dangxuat();">Đăng xuất</button>

	</div>
	<div class="clear"></div>
</div>
<p class="copyright w3l">Giao diện được sử dụng để hiện thực yêu cầu của lab08-bài3 <a href="https://w3layouts.com/" target="_blank">LHD</a></p>
</body>
</html>