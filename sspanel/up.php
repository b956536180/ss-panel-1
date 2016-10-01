<?PHP
set_time_limit(0);
$page=1;
$totalpage=(int)$_GET["page"];
$ci=15;
while($ci>0){
	$str = file_get_contents('http://blog.csdn.net/'.$_GET["id"].'/article/list/'.$page);
	if($page==$totalpage){
			$page=1;
	}
	$isMatched = preg_match_all('/"link_title"><a href="(?<grp0>[^"]+)">/', $str, $matches);
	for($i=0;$i<$isMatched;$i++){
		access_url('http://blog.csdn.net'.$matches[1][$i]);
        $ci--;
	}	
	$page++;
}
function access_url($url) {  
    if ($url=='') return false;  
    $fp = fopen($url, 'r') or exit('Open url faild!');  
    if($fp){
		$file="";
    while(!feof($fp)) {  
        $file.=fgets($fp)."";
    }
    fclose($fp);  
    }
    return $file;
}
    
?>
