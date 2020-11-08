<div class="in-line">
					<div class="para-an">
						<h3>KẾT QUẢ</h3>
					</div>
					<div class="manga-in">
						<?php include 'config.php'; 
                    $stmt=$conn->prepare("SELECT * FROM Story,Category WHERE MSS = C_MSS AND category = ?");
                    $stmt->bind_param("s",$_GET['category']);
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {
					echo '
						<div class="col-sm-4 col-md-3">
							<a href="'.$row['link'].'"><img class="img-responsive pic-in" src="'.$row['coverpicture'].'" alt=" " ></a>
							<div class="you-in">
								
							</div>
							<p>'.$row['Name'].'</p>
							<span>New  | <a href="'.$row['link'].'">Đọc truyện</a></span>
						</div>
						';
                    $conn->close();
                    }
                    ?>
						<div class="clearfix"> </div>
					</div>
				</div>