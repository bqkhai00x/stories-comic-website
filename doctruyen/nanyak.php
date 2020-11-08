<?php include '../header.php';
    session_start();
 ?>
<link rel="stylesheet" type="text/css" href="../css/stylereadstory.css">
<script>
function onupdate(){
    $.ajax({
   type: "get",
   url: "getdata.php",
   data: "mss=10" +"&chapter=" + document.getElementById("chapter").value,
   success: function(msg){
     document.getElementById("result").innerHTML = msg;
   }
 });
 checkchap();
}
function loadcomment(){
    $.ajax({
   type: "get",
   url: "getcomment.php",
   data: "mss=10",
   success: function(msg){
     document.getElementById("commentframe").innerHTML = msg;
   }
 });
}
function comment(){
    var textComment = document.getElementById("textcomment").value;
    var filter = /^[\.\,\sa-zA-Z_ÀÁÃẢẠÂẦẤẪẨẬÈÉẼẺẸÊỀẾỂỄỆĂẮẰẴẲẶĐÌÍĨỈỊÙÚỦŨỤÒÓÕỎỌÔỒỐỖỔỘỲÝỶỸỴỪƯỨỬỮỰƠỜỚỞỠỢàáảãạâầấẩẫậăằắẵẳặđèéẽẻẹêềếễểệìíĩỉịòóỏõọôồốỗổộơờớỡởợỳýỹỷỵùúũủụưứừữửự]+$/; 
    if (!filter.test(textComment) || textComment.length <= 8 || textComment.length >= 200)
                         window.alert("Chứa kí tự không cho phép hoặc không đủ độ dài");
    else{
    document.getElementById("textcomment").value = "";
    var name = "<?php echo $_SESSION['username']; ?>"
    document.getElementById("buttoncomment").style.display = "none";
    $.ajax({
   type: "get",
   url: "setcomment.php",
   data: "mss=10"+"&name="+name+"&plot=" + textComment,
   success: function(msg){
     document.getElementById("buttoncomment").style.display = "block";
     loadcomment();
   }
 });
    }
}
</script>
<div class="row" style="margin-top:50px;">
<div class="col-sm-3"></div>
<div class="col-sm-3">
<select id="chapter" class="selectchap">
    <?php include '../config.php'; 
                    $stmt=$conn->prepare("SELECT COUNT(category) AS t FROM Story,Category WHERE MSS = C_MSS AND C_MSS = 10");
                    $temp = 1;
                    $stmt->execute();
                    $result = $stmt->get_result();
                    while($row = $result->fetch_assoc()) {
                        $temp = $row['t'];
                    }
                    for($i = 0; $i < $temp; $i = $i + 1){
                        echo '<option value='.($i + 1).'>'.'Chapter '.($i + 1).' </option>';
                    }
                    $conn->close();
        ?>
</select>
</div>
<div class="col-sm-2">
<button class="readchap" onclick="onupdate()"> 
Đọc
</button>
</div>
<div class="col-sm-4"></div>
</div>
<div id="result" class="row"></div>
<div id="controlchap" class="row">
    <div class="col-xs-6"><button class="btnextchap" id="prechap" onclick="onprechap()">Chapter trước</button></div>
    <div class="col-xs-6"><button class="btnextchap" id="nextchap" onclick="onnextchap()">Chapter kế</button></div>
    <script>
    function checkchap(){
        var currentchap = document.getElementById("chapter").value;
        var maxchap = <?php echo $temp; ?>;
        if(currentchap == maxchap){
            document.getElementById("nextchap").style.display = "none";
        }
        else{
            document.getElementById("nextchap").style.display = "block";
        }
        if(currentchap == 1){
            document.getElementById("prechap").style.display = "none";
        }
        else{
            document.getElementById("prechap").style.display = "block";
        }
    }
    function onprechap(){
        document.getElementById("chapter").value = parseInt(document.getElementById("chapter").value) - 1;
        location.href = "#result";
        onupdate();
    }
    function onnextchap(){
        document.getElementById("chapter").value =parseInt(document.getElementById("chapter").value) + 1;
        location.href = "#result";
        onupdate();
    }
    </script>
</div>

<script>onupdate();</script>

<div class="para-an commentbox">
	<h3>BÌNH LUẬN</h3>
</div>
<?php 
    if(!isset($_SESSION['username'])){
        echo '<div class="col-xs-1"></div><div class="col-xs-11">Bạn chưa đăng nhập, vui lòng đăng nhập để bình luận</div>';
    }
    else{
        echo'
        <input type="text" id="textcomment" class="textcomment" />
        <input type="button" id="buttoncomment" onclick="comment()" class="buttoncomment" value="Gửi" />
        
        ';
    }
?>
<div id="commentframe" class="row boxco">
</div>
<script>loadcomment();</script>
<?php include '../footer.php'; ?>