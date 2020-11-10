<?php require 'header.php'; ?>
<link rel="stylesheet" type="text/css" href="css/dangnhap.css">
<br /><br /><br /><br />
<script type="text/javascript">
	function dangki()
	{
		window.location="dangki.php";
	}
	function dangnhap()
	{
		window.location="dangnhap.php";
	}
	function trangchu()
	{
		window.location="index.php";
	}
</script>
	<?php 
	include "config.php";
	 ?>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">COMIC WEB</h2>
		<p class="agileits2">ASSIGNMENT 2</p>
	</div>
	<div class="content-agile2">
		<div style="color:white">
		<?php
		session_start();
		if (isset($_SESSION['username']))
		{
			$username = $_SESSION['username'];
			if (!isset($_SESSION['count']))
				{
					echo "Xin chào " . $username . ". Bạn đã đăng nhập thành công.<br><br>";
					$_SESSION['count'] = 0;
				};
			$_SESSION['count']++;


		?>
		<button onclick="trangchu();">Về trang chủ</button>
		<?php
		echo "<br>Thông tin của bạn: <br>";
		$query = mysqli_query($conn,"SELECT * FROM users WHERE account='$username'");
		$row = mysqli_fetch_array($query);
		echo "<br>Tên đăng nhập: ".$row['account'];
		echo "<br>Email: ".$row['email'];
		echo "<br>Sinh nhật: ".$row['birthday'];
		echo "<br>Giới tính: ".(($row['sex']==null)? 'không xác định':$row['sex']);
		echo "</div>";
		?>
		
		<form action="taikhoan.php" method="post">
				<input type="submit" class="register" name="click_dangxuat" value="Đăng xuất">
		</form>
		<?php
		// Nếu người dùng click vào button đăng xuất
        // tên của key nằm trong biến $_POST
        if (isset($_POST['click_dangxuat'])){
        	if (isset($_SESSION['username'])){
    		unset($_SESSION['username']); // xóa session login
			}
			header("location:dangnhap.php");
		};
		}
		else
		{
		?>
		</div>
		<p class="wthree w3l">Bạn chưa đăng nhập, vui lòng đăng nhập!</p>
		<p class="wthree w3l">Đã có tài khoản?</p>
		<button onclick="dangnhap();">Đăng nhập</button>
		<p class="wthree w3l"><br>Chưa có tài khoản?</p>
		<button onclick="dangki();">Đăng kí</button>
		<?php
		}
		?>
	</div>
	<div class="clear"></div>

</body>	
</html>