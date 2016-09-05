<?php
require_once '../lib/config.php';
$uid = $_POST['uid'];
$oo = new Ss\User\Ss($uid);
//获得流量信息
if($oo->get_transfer()<1000000)
{
    $transfers=0;}else{ $transfers = $oo->get_transfer();

}
//计算流量并保留2位小数
$all_transfer = $oo->get_transfer_enable()/$togb;
$unused_transfer =  $oo->unused_transfer()/$togb;
$used_100 = $oo->get_transfer()/$oo->get_transfer_enable();
$used_100 = round($used_100,2);
$used_100 = $used_100*100;
//计算流量并保留2位小数
$transfers = $transfers/$tomb;
$transfers = round($transfers,2);
$all_transfer = round($all_transfer,2);
$unused_transfer = round($unused_transfer,2);
//最后在线时间
$unix_time = $oo->get_last_unix_time();

$rs['yiyong']=$transfers." MB";
$rs['keyong']=$all_transfer." GB";
$rs['shengyu']=$unused_transfer." GB";
$rs['lasttime']=date('Y-m-d H:i:s',$unix_time);
$rs['message']="1";
echo json_encode($rs);
?>