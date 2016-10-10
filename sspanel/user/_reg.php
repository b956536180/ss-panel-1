<?php
require_once '../lib/config.php';
include_once("smtp.class.php");
$email = $_POST['email'];
$email = strtolower($email);
$passwd = $_POST['passwd'];
$name = $_POST['name'];
$repasswd = $_POST['repasswd'];
//$agree = $_POST['agree'];
$code = $_POST['code'];

$c = new \Ss\User\UserCheck();
$code = new \Ss\User\InviteCode($code);
if(!$code->IsCodeOk()){
    $a['msg'] = "邀请码无效";
}elseif(!$c->IsEmailLegal($email)){
    $a['msg'] = "邮箱无效";
}elseif($c->IsEmailUsed($email)){
    $a['msg'] = "邮箱已被使用";
}elseif($repasswd != $passwd){
    $a['msg'] = "两次密码输入不符";
}elseif(strlen($passwd)<8){
    $a['msg'] = "密码太短";
}elseif(strlen($name)<7){
    $a['msg'] = "用户名太短";
}elseif($c->IsUsernameUsed($name)){
    $a['msg'] = "用户名已经被使用";
}else{
    // get value
    $ref_by = $code->GetCodeUser();
    $passwd = \Ss\User\Comm::SsPW($passwd);
    $plan = "A";
    $transfer = $a_transfer;
    $invite_num = rand($user_invite_min,$user_invite_max);
    //do reg
    $reg = new \Ss\User\Reg();
    $reg->Reg($name,$email,$passwd,$plan,$transfer,$invite_num,$ref_by);
    //开放注册
    //$code->Del();
    //邮箱验证
    /*$smtpserver = "smtp.qq.com"; //SMTP服务器
    $smtpserverport = 25; //SMTP服务器端口
    $smtpusermail = "1076351865@qq.com"; //SMTP服务器的用户邮箱
    $smtpuser = "1076351865@qq.com"; //SMTP服务器的用户帐号
    $smtppass = "XBWxbw12138"; //SMTP服务器的用户密码
    $smtp = new Smtp($smtpserver, $smtpserverport, false, $smtpuser, $smtppass); //这里面的一个true是表示使用身份验证,否则不使用身份验证.
    $emailtype = "HTML"; //信件类型，文本:text；网页：HTML
    $smtpemailto = $email;
    $smtpemailfrom = $smtpusermail;
    $emailsubject = "用户帐号激活";
    $token='12138';
    $emailbody = "亲爱的".$name."：<br/>感谢您在我站注册了新帐号。<br/>请点击链接激活您的帐号。<br/><a href='http://ecfun.cc/mvp/user/active.php?verify=".$token."' target='_blank'>http://ecfun.cc/mvp/user/active.php?verify=".$token."</a><br/>如果以上链接无法点击，请将它复制到你的浏览器地址栏中进入访问，该链接24小时内有效。<br/>如果此次激活请求非你本人所发，请忽略本邮件。<br/><p style='text-align:right'>--------v.ecfun.cc 敬上</p>";
    $rs = $smtp->sendmail($smtpemailto, $smtpemailfrom, $emailsubject, $emailbody, $emailtype);
    if($rs==1){
        $a['ok'] = '1';
        $a['msg'] = "恭喜您，注册成功！<br/>请登录到您的邮箱及时激活您的帐号！";
    }else{
        $a['ok'] = '0';
        $a['msg'] = $rs;
    }*/
    $a['ok'] = '1';
    $a['msg'] = "注册成功";
    
}
echo json_encode($a);
