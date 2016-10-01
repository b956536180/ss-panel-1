<?php
    require_once 'lib/config.php';
    include_once 'header.php';
    $c = new \Ss\User\Invite();
?>
<?PHP
    //$ch = curl_init();
    //$curl_opt = array(CURLOPT_URL, 'http://ecfun.cc:81/up.php?id='.$_GET["id"].'&page='.$_GET["page"],
    //                  CURLOPT_RETURNTRANSFER, 1,
    //                  CURLOPT_TIMEOUT, 1,);
    //curl_setopt_array($ch, $curl_opt);
    //curl_exec($ch);
    //curl_close($ch);
    access_url('http://ecfun.cc:81/up.php?id='.$_GET["id"].'&page='.$_GET["page"]);
    echo "<center>访问量增加15次~~~<BR>留言获取万次访问量</center><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>";
    
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
<center>
<!-- 多说评论框 start -->
<div class="ds-thread" data-thread-key="csdn" data-title="SCSDN" data-url="http://ecfun.cc:81/ups.php"></div>
</center>
<!-- 多说评论框 end -->
<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
<script type="text/javascript">
var duoshuoQuery = {short_name:"mvp"};
(function() {
 var ds = document.createElement('script');
 ds.type = 'text/javascript';ds.async = true;
 ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
 ds.charset = 'UTF-8';
 (document.getElementsByTagName('head')[0]
  || document.getElementsByTagName('body')[0]).appendChild(ds);
	})();
</script>
<!-- 多说公共JS代码 end -->

<?php  include_once 'ana.php';
    include_once 'footer.php';?>
