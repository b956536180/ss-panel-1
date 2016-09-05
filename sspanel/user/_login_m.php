<?php
require_once '../lib/config.php';
$email = $_POST['email'];
$email = strtolower($email);
$passwd = $_POST['passwd'];
$passwd = \Ss\User\Comm::SsPW($passwd);
$c = new \Ss\User\UserCheck();
$q = new \Ss\User\Query();
if($c->EmailLogin($email,$passwd)){
    //login success
    $ext = 3600*24*7;
    //获取用户id
    $id = $q->GetUidByEmail($email);
    //处理密码
    $pw = \Ss\User\Comm::CoPW($passwd);
    setcookie("user_pwd",$pw,time()+$ext);
    setcookie("uid",$id,time()+$ext);
    setcookie("user_email",$email,time()+$ext);
    
    header("Location:node_qr_m.php?id=1&uid=".$id);
}else{
    $rs['code'] = '0';
    $rs['msg'] = "邮箱或者密码错误";
    $rs['uid']='null';
    echo json_encode($rs);
}
