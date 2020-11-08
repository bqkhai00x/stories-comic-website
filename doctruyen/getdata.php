<?php 
include '../config.php';
$stmt=$conn->prepare("SELECT Plot FROM Plot WHERE R_MSS=".$_GET['mss']." AND Chapter=".$_GET['chapter']);
                    $temp = "";
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {
					    $temp = $row['Plot'];
                    
                    }
                    $temp2 = explode("\n",$temp);
                    echo '<div class="col-sm-1"></div><div class="col-sm-9">';
                    foreach($temp2 as $value){
                        echo '<img style="width:100%;height:auto;" src="'.$value.'" /><br />';
                    }
                    echo'</div><div class="col-sm-2">';
                    $conn->close();
?>