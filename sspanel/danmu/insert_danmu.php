<?php
$response = array();
require("db_config.php");
$conn=mysql_connect($mysql_server_name,$mysql_username,$mysql_password) or die("error connecting") ;
mysql_query("set names 'utf8'"); 
mysql_select_db($mysql_database);
if (isset($_POST['user_phone'])&&isset($_POST['danmu_content'])&&isset($_POST['open'])) {
    $user_phone = $_POST['user_phone'];
    $danmu_content = $_POST['danmu_content'];
    $open=$_POST['open'];
    if($open=="two"){
        $result = "INSERT INTO danmu(user_phone,danmu_content) VALUES('$user_phone','$danmu_content')";
	mysql_query($result);
        if ($result) {
		$url="http://ecfun.cc:81/danmu/danmu.php?title=".$user_phone."&content=".$danmu_content;
		access_url($url);
        $response["success"] = 1;
        $response["message"] = "YES";
        echo json_encode($response);
    } else {
        $response["success"] = 0;
        $response["message"] = "NO";
        echo json_encode($response);
    }
}else if($open=="one"){
                $url="http://ecfun.cc:81/danmu/danmu.php?title=".$user_phone."&content=".$danmu_content;
		access_url($url);
                $response["success"] = 1;
                $response["message"] = "YES";
                echo json_encode($response);
}
} else {
    $response["success"] = 0;
    $response["message"] = "NO";
    echo json_encode($response);
}
function access_url($url) {  
    if ($url=='') return false;  
    $fp = fopen($url, 'r') or exit('Open url faild!');  
    if($fp){
    while(!feof($fp)) {  
        $file.=fgets($fp)."";
    }
    fclose($fp);  
    }
    return $file;
}
?>