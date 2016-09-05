<?php
require_once '../lib/config.php';
require_once '_check.php';
$id = $_GET['id'];
$uid = $_GET['uid'];
$node = new \Ss\Node\NodeInfo($id);
$server =  $node->Server();
$method = $node->Method();
$pass = $oo->get_pass();
$port = $oo->get_port();

$ssurl =  $method.":".$pass."@".$server.":".$port;
$ssqr = "ss://".base64_encode($ssurl);
$rs['code'] = '1';
$rs['msg'] = $ssqr;
$rs['uid']=$uid;
echo json_encode($rs);
?>



