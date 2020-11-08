<?php require 'head.php'; ?>
<script>
function getdata(cate){
    $.ajax({
   type: "get",
   url: "getcategory.php",
   data: "category=" + cate,
   success: function(msg){
     document.getElementById("result").innerHTML = msg;
   }
 });
}
</script>
    <div class="container">
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 catebox">
                <?php
                    include 'config.php';
                    $stmt=$conn->prepare("SELECT category,COUNT(C_MSS) as count FROM Category GROUP BY category");
                    $temp = "";
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {
					    echo '
                        <div class="col-sm-4">
                            <a class="textcategory" href="javascript:getdata(\''.$row['category'].'\')">'.$row['category'].'('.$row['count'].')'.'</a>
                        
                        </div>';
                    
                    }
                    
                    $conn->close();
                 ?>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
	<div class="row">
    <div class="col-sm-1 col-md-2"></div>
    <div class="col-sm-10 col-md-8">
        <div id="result"></div>
    </div>
    <div class="col-sm-1 col-md-2"></div>
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