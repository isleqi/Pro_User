<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0057)https://www.zaih.com/topics/?category_id=420&city=beijing -->
<html class="no-js" lang="en"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>获取</title>
   
    
    <script src="js/mlink.min.js"></script>

    
    

    <link rel="stylesheet" href="css/a488d11a.base.css">
    
<link rel="stylesheet" href="css/e099c360.topicList.css">
<link rel="stylesheet" href="css/haha.css">


    

</head>
<%!String url; %>
<%url=(String)request.getAttribute("url");%>


<body style="overflow-x: visible;">
    <!--[if gt IE 8]><!-->
    
    <input type="hidden" id="url" value=<%=url %>></input>

<nav class="mobileMenu mobile-menu mobile-menu-nav">
    <span class="mobile-menu-close">
        <i class="icon icon-close-menu"></i>
    </span>
    <ul class="mobile-menu-list">
        <li class="item">
            <a href="">首页</a>
        </li>
        
        <li class="item">
            <a href="">获取</a>
        </li>
        
        <li class="item">
            <a href="">专家</a>
        </li>
        
        <li class="item">
            <a href="">机构</a>
        </li>
        
        <li class="item">
            <a href="">论坛</a>
        </li>
        
         <li class="item">
            <a href="">专家观点</a>
        </li>
        
        <li class="item">
            <a href="">发布需求</a>
        </li>
        
       
        
    </ul>
</nav>

<nav class="mobileMenu mobile-menu mobile-menu-setting">
    <span class="mobile-menu-close">
        <i class="icon icon-close-menu"></i>
    </span>
   
    <div class="mobileMenuFooter mobile-menu-footer">
        <a href="">退出</a>
    </div>
    
</nav>
    
    <!--<![endif]-->
    
    






<div class="mobileHeader mobile-header ">
    <h1><a href="" class="mobile-logo"><i class="icon icon-zaih"></i></a></h1>
    <a href="javascript: void 0;" class="mobile-menu-btn" id="mobileMenuBtn"><span class="icon icon-menu"></span></a>
    
    <a class="searchBtn search-btn-mobile" ><span class="icon icon-search"></span></a>
    <form class="search" action="search" method="GET">
        <input class="search-content" type="text" placeholder="" name="dec" autocomplete="off" value="">
        <div class="search-sug sug"></div>
    </form>
    

    
    <a href="javascript: void 0;" class="mobile-text-btn" id="mobileLoginBtn">-----_30847</a>
    
</div>

<div id="header" class="header ">

    <div class="column">
        <a class="header-logo" href="index.html" >
        <i class="icon icon-zaih">
        <img  src="img/3.png" width="150px" style="margin-top: 10px">
        </i>
        </a>
        <ul class="header-nav">
            <li class="decorate" style="left: 56px; width: 56px;"></li>
            
            
            
            <li data-action="nav-select">
                <a href="" class="active">获取</a>
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="" class="">专家</a>
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="" class="">机构</a>
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="" class="">论坛</a>
            </li>
            
             <li data-action="nav-select">
                <a href="" class="">专家观点</a>
            </li>
            
            
             <li data-action="nav-select">
                <a href="" class="">发布需求</a>
            </li>
            
            
            
            
           
            
            
        </ul>
        <div class="header-setting">
            
          
            
            <a href="">-----_30847</a>
            
            <a href="">退出</a>
            
        </div>
        
        <div class="header-notice">
            <a href="javascript:void 0;" class="header-msg-btn"><span class="icon icon-msg"></span></a>
            <div class="drop-notice dropMenu">
                <i class="arrow-up"></i>
                <h3 class="drop-notice-title">私信</h3>
                <ul class="drop-list"></ul>
            </div>
        </div>
        
       
        
        <form class="search" action="search" method="GET">
        
        
            <input class="search-content" autocomplete="off" type="text" placeholder="搜资讯" value="" name="dec">
            <div class="search-sug sug"></div>
            <button class="search-btn icon icon-search" type="submit"></button>
        </form>
        
    </div>
</div>
  
<div class="content" style="margin-top: 80px;margin-bottom: 100px">
    

   
</div>


    
  
</div>


<!-- JavaScript at the bottom for fast page loading -->


<script>
var weixin_mp_config = {"appId": "wx63736776bf28c6b5", "nonceStr": "wuflTNo8oUcu", "signature": "e1440d8146f9b24e81a86f16715035957c66e99f", "timestamp": "1520831665"};
</script>

<script>
var current_user = {"avatar": "//media.zaih.com/Fh8J1Fi5s-dN1IasJlJ12wpJKOsa", "followers_count": 0, "id": 85241129, "industry": null, "is_tutor": false, "labels": [], "location": null, "nickname": "-----_30847", "realname": "", "title": null};
</script>

<script src="js/62c4d7e6.base.js"></script>
<script src="js/76b4679b.main.js"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/8e026d0f.topicList.js"></script>
  

 <script>
 var currentpage=1;
 var type_url;
 var type;
 var temp;
 
$(document).ready(function (){
	var url=$("#url").val();
	var json={'url':url};
	$.ajax({
                data:json,
                url:'get_news_details',
                dataType: "text",
                type:"post",
                success:function(data){
                   $(".content").html(data);
                   var dl=document.getElementsByClassName("mt2")[0];
                   var img=dl.getElementsByTagName("img");
                   for(var i=0;i<img.length;i++)
                       {
                	   var before=img[i].getAttribute("src");
                       //alert(before);
                       img[i].setAttribute("src", "http://www.chinairn.com"+before);

                       }
                  
                   

                    }

		});
});


</script>

<!-- end scripts -->









</body>
</html>