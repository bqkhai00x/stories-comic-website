<?php 
include '../config.php';
$stmt=$conn->prepare("INSERT INTO Comment(T_MSS,T_User,Comment) VALUES(?,?,?)" );
if(!preg_match('/^[\.\,\sa-zA-Z_ÀÁÃẢẠÂẦẤẪẨẬÈÉẼẺẸÊỀẾỂỄỆĂẮẰẴẲẶĐÌÍĨỈỊÙÚỦŨỤÒÓÕỎỌÔỒỐỖỔỘỲÝỶỸỴỪƯỨỬỮỰƠỜỚỞỠỢàáảãạâầấẩẫậăằắẵẳặđèéẽẻẹêềếễểệìíĩỉịòóỏõọôồốỗổộơờớỡởợỳýỹỷỵùúũủụưứừữửự\s]{8,200}+$/', $_GET['plot'])){
		echo '<script>window.alert("Không được có kí tự đặc biệt hoặc độ dài khác 8 - 200")</script>';
	}else{
                    $stmt->bind_param("sss",$_GET['mss'],$_GET['name'],$_GET['plot']);
                    $stmt->execute();
                    $conn->close();
    }
?>