<?php
    $conn = mysqli_connect('sql111.epizy.com','epiz_24116039','7qe7b4JYkMp','epiz_24116039_a');
    if($conn->connect_error){
        die('Kết nối không thành công'.$conn->connect_error);
    }
?>

    
<? require 'head.php'; ?>

	<div class="content">
	<center>
	<form action="" method="get">
            <input type="text" name="keyword" placeholder="Nhập từ khóa" >
            <input type="submit" name="btnSearch" value="Tìm kiếm">
        </form>
	</div>
        <br> <br>
        <div id="list">
	</center>
	
    <?php

try {
	// tạo kết nối
	$conn = new PDO("mysql:host=sql111.epizy.com;dbname=epiz_24116039_a",'epiz_24116039','7qe7b4JYkMp');
	// cấu hình exception
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	if(isset($_GET['btnSearch'])){
		$search = $_GET['keyword'];
		if($search != ""){
			//sử dụng prepare
			$stmt = $conn->prepare("SELECT DISTINCT Story.name, Story.link, Story.coverpicture FROM Category, Story WHERE Category.C_MSS = Story.MSS AND (Story.name = :search OR Category.category = :search)");
			$stmt->bindParam(":search",$search);
			//thực thi câu truy vấn
			$stmt->execute();
			//khai báo fetch kiểu mảng kết hợp
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			//lấy danh sách kết quả
			$result = $stmt->fetchAll();
			//in kết quả 
			if(count($result) > 0){
			echo "<table border ='1' cellspacing='0' cellpadding='10' align='center'>";
			foreach($result as $row){
				echo "<tr>";
            	echo "<td><img src='{$row['coverpicture']}' alt='no available'></td>";
            	echo "<td>{$row['name']}</td>";
            	echo "<td><a href='{$row['link']}'>Đọc truyện</a></td>";
				echo "</tr>";
			}
			echo "</table>";
		}
		else{
			echo "không có kết quả";
		}
		}
		else{
			echo "<span style='color:red;'> mời nhập keywor! </span>";
		}
	}
	
}
catch(PDOException $e){
	echo "Lỗi: ". $e->getMessage();
}
//ngắt kết nối
$conn = null;

    //     if(isset($_GET['btnSearch'])){
    //     $search = $_GET['keyword'];
    //     if($search != ""){
    //         $query = "SELECT DISTINCT story.name, story.link, story.coverpicture FROM category, story WHERE category.C_MSS = story.MSS AND (story.name = ? OR category.category = ?)" ;
    //         $stmt = $conn->prepare($query);
    //         $sql = $stmt->bind_param("ss",$search,$search);
	// 		$result = mysqli_query($conn,$sql);
	// 		echo "<table border ='1' cellspacing='0' cellpadding='10'>";
	// 		if(mysqli_num_rows($result) > 0){
	// 		while($row = mysqli_fetch_assoc($result)){
	// 			echo "<tr>";
    //         	echo "<td><img src='{$row['coverpicture']}' alt='no available'></td>";
    //         	echo "<td>{$row['name']}</td>";
    //         	echo "<td><a href='{$row['link']}'>Đọc truyện</a></td>";
	// 			echo $row['name']; 
	// 			}
	// 		}
	// 		else{
	// 		echo "<span style='color:red;'> Không có kết quả ! </span>";
	// 		}
    //     }
    //     else{
            
    //         echo "<span style='color:red;'> mời nhập keyword! </span>";
    //     }
    // }
?>
        </div>
    </div>
		
	<div class="footer">
		<div class="container">
				<div class="footer-class">
				<div class="class-footer">
					<ul>
						<li ><a href="index.html" class="scroll">HOME</a><label>|</label></li>
						<li><a href="#" class="scroll">TRUYỆN HOT</a><label>|</label></li>
						<li><a href="#" class="scroll">TRUYỆN MỚI</a><label>|</label></li>
						<li><a href="#" class="scroll">THỂ LOẠI</a><label>|</label></li>
						<li><a href="#" class="scroll">ĐĂNG NHẬP</a><label>|</label></li>
						<li><a href="#" class="scroll">TÀI KHOẢN</a></li>
					</ul>
			 	</div>
		 </div>
	</div>
</body>	
</html>