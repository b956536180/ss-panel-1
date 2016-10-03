<?php
    require_once 'lib/config.php';
    include_once 'header.php';
    $c = new \Ss\User\Invite();
?>

<style type="text/css">
a:link,a:visited{
    text-decoration:none;  /*超链接无下划线*/
}
</style>

<?PHP
    $response = array();
    require("danmu/db_config.php");
    $conn=mysql_connect($mysql_server_name,$mysql_username,$mysql_password) or die("error connecting") ;
    mysql_query("set names 'utf8'");
    mysql_select_db($mysql_database);
    $ids=$_GET["id"];
    $result = "INSERT INTO fangke(ids) VALUES('$ids')";
    mysql_query($result);
    $rets = file_get_contents('http://blog.csdn.net/'.$_GET["id"]);
    $isMatcheds = preg_match_all('/<li>(?<grp0>[^"]+)<span>(?<grp1>[^"]+)<\/span>(.*)<\/li>/', $rets, $matches);
    echo "<center>";
    for($i=0;$i<$isMatcheds;$i++){
        $bo=array();
        for($j=1;$j<=2;$j++){
            $bo[$j]=$matches[$j][$i];
        }
        if($i==0||$i==1||$i==2){
            echo "<li>".$bo[1].$bo[2]."</li>";
        }else{
            echo $bo[1].$bo[2]."<BR>";
        }
    }
    echo "</center>";
    echo "<HR style=FILTER: alpha(opacity=100,finishopacity=0,style=3) width=100% color=#987cb9 SIZE=2>";
    echo "－－－标题－－－－<li style=float:right;>阅读量－－－－－－－发表时间－－</li>";
    echo "<HR style=FILTER: alpha(opacity=100,finishopacity=0,style=3) width=100% color=#987cb9 SIZE=2>";

    $istotal=preg_match_all('/<span>(?<grp0>[^"]+)<\/span><strong>/',$rets,$matchtotal);
    $isyuanchuang = preg_match_all('/\d*/', $matchtotal[1][0], $matcheyuanchuang);
    $totalpage=(int)$matcheyuanchuang[0][1]/15+1;
    $page=1;$haha=0;
    while($page<=$totalpage){
        $ret = file_get_contents('http://blog.csdn.net/'.$_GET["id"].'/article/list/'.$page);
        $isMatched = preg_match_all('/<span class="link_title"><a href="(?<grp0>[^"]+)">(?<grp1>[^"]+)<\/a><\/span>/', $ret, $matches);
        $isMatcheda = preg_match_all('/<span class="link_postdate">(?<grp0>[^"]+)<\/span>/', $ret, $matchesa);
        $isMatchedb = preg_match_all('/<span class="link_view" title="(.*)"><a href="(.*)" title="(.*)">(.*)<\/a>(.*)<\/span>/', $ret, $matchesb);

        for($i=0;$i<$isMatched;$i++){
            $xu=array();
            for($j=1;$j<=2;$j++){
                $xu[$j]=$matches[$j][$i];
            }
            //$haha++;
            echo "(".++$haha.") <a href=http://blog.csdn.net".$xu[1].">". $xu[2]."</a>";
            echo "<li style=float:right;>".$matchesb[5][$i]."-------------------".$matchesa[1][$i]."</li><BR>";
            echo "<HR style=FILTER: alpha(opacity=100,finishopacity=0,style=3) width=100% color=#987cb9 SIZE=1>";
        }
        $page++;
    }
    echo "<center>总共".$haha."篇文章"."</center><BR>";
?>
<div style="left:0;height:120px;line-height:120px;width:100%;position:fixed;bottom:0%;font-size:30px;background:url(http://pic.90sjimg.com/back_pic/00/04/27/49/5b1eee8bdba7b9aefc62fccafe72737c.jpg) no-repeat center;text-align:center">
<a href="http://ecfun.cc/mvp/ups.php?id=<?PHP echo $_GET["id"]; ?>&page=<?PHP echo $totalpage; ?>" style="color:#FFF" target="_blank">猛戳此处，提高CSDN访问量～</a>
</div>

<?php  include_once 'ana.php';
    include_once 'footer.php';?>
<?php
    echo "<BR><BR><BR><BR><BR>";
    ?>
