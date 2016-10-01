<?php
require_once 'lib/config.php';
include_once 'header.php';
$c = new \Ss\User\Invite();
?>

<div class="section no-pad-bot" id="index-banner">
    <div class="container">
        <br><br>
        <div class="row center">
            <h5>留言板</h5>



            <br><br><br><br>

<!-- 多说评论框 start -->
<div class="ds-thread" data-thread-key="123" data-title="留言板" data-url="http://ecfun.cc:81/talk.php"></div>
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

        </div>
    </div>
</div>




<?php  include_once 'ana.php';
include_once 'footer.php';?>
