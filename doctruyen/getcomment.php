<?php include '../config.php'; 
        $stmt=$conn->prepare("SELECT * FROM Comment WHERE T_MSS = ?");
        $stmt->bind_param("s",$_GET['mss']);
        $stmt->execute();
        $result = $stmt->get_result();
        while($row = $result->fetch_assoc()) {
			echo '
            <div class="row">
				<div class="col-sm-3 namecm">
                '.$row['T_User'].'
				</div>
                <div class="col-sm-9 plotcm">'.$row['Comment'].'
                </div>
                </div>
					';
                    
        }
        $conn->close();
?>