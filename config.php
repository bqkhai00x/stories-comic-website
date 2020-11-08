<?php 
//cấu hình kết nối
$conn = mysqli_connect('localhost','root','','web_truyen_tranh') or die ('Không thể kết nối tới database');
//xét kiểu ký tự
mysqli_set_charset($conn,'utf8');

?>
