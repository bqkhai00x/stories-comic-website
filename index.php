<?php require 'head.php' ?>

	<div class="content">
		<div class="container">
		<div class="comic-in">
			<div class="col-md-9 col-d">
				<div class="banner">	
				</div>
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
					echo '
						<div class="col-md-4">
							<a href="'.$row['link'].'"><img class="img-responsive pic-in" src="'.$row['coverpicture'].'" alt=" " ></a>
							<div class="you-in">
								
							</div>
							<p>'.$row['Name'].'</p>
							<span>New  | <a href="'.$row['link'].'">Đọc truyện</a></span>
						</div>
						';
					if($temp > 5) break;
                    $temp = $temp + 1;
                    $conn->close();
                    }
                    ?>
                    <div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<div class="col-md-3 col-m-left">
				<div class="in-left">				
					<p class="code">TRUYỆN ĐỀ CỬ</p>				
				</div>
				<div class="discount">
					<a href="#"><img class="img-responsive pic-in" src="images/p2.jpg" alt=" " >	</a>						
					<a href="#" class="know-more">Xem thêm</a>
				</div>
				<div class="discount">
					<a href="#"><img class="img-responsive pic-in" src="images/p3.jpg" alt=" " ></a>								
					<a href="#" class="know-more">Xem thêm</a>
				</div>
				<div class="infor-in">
					<h5>Thông tin trang web</h5>
					
					<div class="info">
						<div><img src="./images/email.jpg"><span> : 18020671@vnu.edu.vn</span></div>
						<div><img src="./images/email.jpg"><span> : 18021140@vnu.edu.vn</span></div>
						<a href="#"></a>
						<p class="ago">#design by Group31</p>
					</div>
					<a href="#" class="more">More</a>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
			</div>
			<!---->
			<div class="manga-in-on">
			<div class="other">
						<h3>TRUYỆN KHÁC</h3>
						<p>cập nhật liên tục</p>
					</div>
					<ul id="flexiselDemo1">
                <?php include 'config.php'; 
                    $stmt=$conn->prepare("SELECT * FROM Story ORDER BY MSS ASC");
                    $temp = 1;
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {	
                        echo'
                            <li><a href="#"><img class="img-responsive comic" src="'.$row['coverpicture'].'" alt=""></a>
				            <div class="hide-in">
				            <p>'.$row['Name'].'</p>
				            <p>#Shounen</p>
				            <span><a href="'.$row['link'].'">ĐỌC TRUYỆN</a></span>
			    	        </div></li>';
                        if($temp >= 4) break;
                        $temp = $temp + 1;
                    }
                    $conn->close();
                ?>
            </ul>
            		<script type="text/javascript">
		$(window).load(function() {
			$("#flexiselDemo1").flexisel({
				visibleItems: 4,
				animationSpeed: 1000,
				autoPlay: true,
				autoPlaySpeed: 3000,    		
				pauseOnHover: true,
				enableResponsiveBreakpoints: true,
		    	responsiveBreakpoints: { 
		    		portrait: { 
		    			changePoint:480,
		    			visibleItems: 1
		    		}, 
		    		landscape: { 
		    			changePoint:640,
		    			visibleItems: 2
		    		},
		    		tablet: { 
		    			changePoint:768,
		    			visibleItems: 3
		    		}
		    	}
		    });
		    
		});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
		</div>
	</div>
	</div>
	<!---->
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