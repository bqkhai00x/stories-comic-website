<?php require 'head.php'; ?>


				<!---->	
				<div class="in-line">
					<div class="para-an">
						<h3>TRUYỆN MỚI NHẤT</h3>
					</div>
					<div class="manga-in">
						<?php include 'config.php'; 
                    $stmt=$conn->prepare("SELECT * FROM Story ORDER BY MSS DESC");
                    $temp = 1;
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {
					if(($temp%4)==0){
                        echo '<div class="row">';
                    }
					echo '
						<div class="col-sm-3">
							<a href="'.$row['link'].'"><img class="img-responsive pic-in" src="'.$row['coverpicture'].'" alt=" " ></a>
							
							<p>'.$row['Name'].'</p>
							<span>New  | <a href="'.$row['link'].'">Đọc truyện</a></span>
						</div>
						';
                    if($temp%4==0){
                        echo '</div>';
                    }
                    
					if($temp > 9) break;
                    $temp = $temp + 1;
                    
                    }
                    $conn->close();
                    ?>
						<div class="clearfix"> </div>
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
						<li><a href="#" class="scroll">TÌA KHOẢN</a></li>
					</ul>
			 	</div>
		 </div>
	</div>
</body>	
</html>