<?php
require_once ('XingeApp.php');
if (isset($_GET['title'])&&isset($_GET['content'])){
	$user = $_GET['title'];
    $content = $_GET['content'];
	var_dump(DemoPushAllDeviceMessage($user,$content));
}
//所有设备下发透传消息       注：透传消息默认不展示
function DemoPushAllDeviceMessage($user,$content)
{
	$push = new XingeApp(2100215888, '833c9faccd7c14c519e9fc5e64b6108a');
	$mess = new Message();
	$mess->setTitle($user);
	$mess->setContent($content);
	$mess->setType(Message::TYPE_MESSAGE);
	$ret = $push->PushAllDevices(0, $mess);
	return $ret;
}
