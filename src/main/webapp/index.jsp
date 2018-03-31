<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0024)https://www.zoomeye.org/ -->
<html lang="en-us">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/default.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<title>Pro_User</title>
<link href="css/main.d8bf4b61.css" rel="stylesheet">
<meta property="wb:webmaster" content="fffba8f9212e3204" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/common.js?v=3"></script>
    <script type="text/javascript" src="js/default.js?v=1"></script>
    <script type="text/javascript" src="js/lrz.all.bundle.js"></script>
    <script>
    $(document).ready(function (){
    	$("#denglu").click(function(){
   if($("#maskTop").css("display")=='none')
        	$("#maskTop").show();
   else
   	$("#maskTop").hide();
   
      
            
                  
            	});    
    	if(document.getElementById('tx').className=='header-icon header-icon-profile had_denglu'){
    		$('#denglu').unbind("click");
    		document.getElementById('denglu').className='header-profile-link zone';
    		
          $(".zone").click(function(){alert("cnm");});
        	}
    });
   
 
    
          
    
    </script>
    <script>	
</script>
</head>

<body>
<div id="Pro_User">
<div class="Pro_User">
<div class="home" style="background-image: url(&quot;img/bb.jpg&quot;);">
<div class="header" style="background: transparent;">
<div class="header-content content-width clear">
<div class="header-left">
<a href="" style="padding-left: 0px;">
<img src="img/home.a277a0b7.svg" class="header-home header-icon" alt="home">
</a>
<div class="header-links-box"><span>获取</span>
<div class="header-links">
<a href="industry_news">行业资讯</a>
<a href="industry_data">行业数据</a>
</div>
</div>
<a href="">专家</a>
<a href="">机构</a>
<a href="forum">论坛</a>
<a href="demand_view?kind=demand">需求</a>
<a href="demand_view?kind=view">专家观点</a>
</div>
<div class="header-more">
<!-- <div class="header-links-box"><span>帮助</span>
<div class="header-links"><a href="">帮助手册</a></div>
</div> -->
<a href="">关于</a>
</div>
<div class="header-right">
<div class="header-profile-link" id="denglu" style="margin-top: 20px">
<%
if(session.getAttribute("account")!=null){
%>
<img src=${sessionScope.tx_src} class="header-icon header-icon-profile had_denglu" id="tx" alt="more">
<%}
else{
%>
<img src="img/profile.622b8052.svg" class="header-icon header-icon-profile " id="tx" alt="more">
<%} %>

</div>
<!-- <div class="header-profile-link header-lang">
<a href="" style="font-size: 0px;"><img class="header-icon-lang" src="img/en.d2ce3044.svg" alt="more">
</a>
</div> -->
</div>
</div>
</div>

<div class="home-content content-width">
<form class="home-search" action="search" method="get">
<img class="home-logo" src="img/3.png" style="width: 400px" alt="">
<input class="home-search-input" id="searchInput" autocomplete="off" name="dec" type="text">
<img class="home-search-icon" src="img/search.fdbb782e.svg" alt="search">
</form>
<!-- <p class="home-tip">
<span>Tips: shift + / 显示快捷帮助</span>
<a class="home-to-search" href="https://www.zoomeye.org/search/host">高级搜索</a>
</p> -->
<p class="home-copyright">isleqi@163.com Qi Kai Nan Teng Wei</p>

</div>
</div>
</div>
</div>

<div id="maskTop" style="display: none;width: 400px; height: 620px; border: #999999 1px solid; background: #fff; color: #333; position: fixed; top: 50%; left: 50%; margin-left: -200px; margin-top: -310px; z-index: 2999; filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,direction=120,strength=4); -moz-box-shadow: 2px 2px 10px #909090; -webkit-box-shadow: 2px 2px 10px #909090; box-shadow: 2px 2px 10px #909090;">
<iframe id="childframe" name="childframe" width="400" height="568" frameborder="0" scrolling="no" src="Login_register.html">

</iframe>
</div>
</body>
</html>