<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0057)https://www.zaih.com/topics/?category_id=420&city=beijing -->
<html class="no-js" lang="en"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>获取</title>
   
    
    <script src="js/mlink.min.js"></script>

    
    

    <link rel="stylesheet" href="css/a488d11a.base.css">
    
<link rel="stylesheet" href="css/e099c360.topicList.css">

    

</head>
<body style="overflow-x: visible;">
    <!--[if gt IE 8]><!-->
    
    

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
        <a class="header-logo" href="/Pro_User" >
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
    
    <%! String dec;%>
    <%dec=(String)request.getAttribute("dec"); %>
<div class="container ">
    
<div class="topic-menu-wrap">
    <div class="topic-menu">
        
        
        <div class="crumb">
            <h2>
                <input id='dec' value=<%=dec %> type="hidden"></input>
                <a id='type' >关于‘<%=dec %>’的搜索结果</a><i class="icon icon-go"></i>
                
            </h2>
            
            
        </div>
        
        <div class="price-screen priceScreen">
            <a class="price-screen-btn priceScreenBtn" href="javascript:void 0;">行业</a>
            <div class="topic-drop-wrap topicDropWrap">
                <div class="topic-sub-menu">
                    
                    <ul style="cursor: pointer;">
                        <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy2.html')" class="inner" >IT与通信</a>
                        </li>
                        <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy3.html')" class="inner" >机器电子</a>
                        </li>
                        <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy1.html')" class="inner" >医疗医药保健</a>
                        </li>
                        <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy5.html')" class="inner" >建筑房地产</a>
                    </li>
                    
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy12.html')" class="inner" >金融保险投资</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy13.html')" class="inner" >出版传媒包装</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy11.html')" class="inner" >酒店旅游餐饮</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy10.html')" class="inner" >零售商贸</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy15.html')" class="inner" >能源矿产环保</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy16.html')" class="inner" >石油化工</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy9.html')" class="inner" >食品饮料酒业</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy7.html')" class="inner" >家用电器</a>
                    </li>
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy8.html')" class="inner" >家用日化</a>
                    </li>
                    
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy4.html')" class="inner" >车辆交通运输</a>
                    </li>
                    
                     <li>
                            <a  onclick="get_info('http://www.chinairn.com/hangye/hy18.html')" class="inner" >其他行业</a>
                    </li>
                    
                    </ul>
                    
                </div>
            </div>
        </div>
    </div>
</div>

<div class="content">
   

  
 
   
</div>


<div id="page1" style="margin-left: 550px;display: none">
<ul class="pager" ><li><a href="javascript:scrollTo(0,0);" onClick="goto_page('first')">首页</a></li><li ><a href="javascript:scrollTo(0,0);" onClick="goto_page('pre')">上一页</a></li><li><a  href="javascript:scrollTo(0,0);" onClick="goto_page('next')">下一页</a></li><li><a href="javascript:scrollTo(0,0);" onClick="goto_page('last')">尾页</a></li></ul>
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
	var dec=$("#dec").val();
 
$(document).ready(function (){
	//alert("111");
    get_info(dec,currentpage);
	
});


  
   var flag=true;

     function goto_page(action){
         //alert(action);
        flag=false;
        var dec=$("#dec").val();
            if(action=='pre'){
                     if(currentpage>1){
                     currentpage=currentpage-1;
                         }
                     get_info(dec,currentpage);
                     
                }
            else if(action=='next'){
            	if(currentpage<20){
                    currentpage=currentpage+1;
                    
                        }
                get_info(dec,currentpage);
                
            }
                
            else if(action=='first'){
                        currentpage=1;
                       
                            
                        get_info(dec,currentpage);
                }
            else{
                currentpage=20;
              
                get_info(dec,currentpage);
                }

         }

     function get_info(dec,currentpage){
        
    	 var json={'dec':dec,'id':currentpage};
    	 var item='<ul class="topic-list topics">';
    	//alert(dec);
    	$.ajax({
                 data:json,
                 type:"post",
                 dataType: "json",
                 url:"get_result",
                 success:function(data){
                     //alert("@@@");
                     //alert(data.length);
                	 for(var i=0;i<data.length;i++){
                    	 //alert(data[i].news_url);
                		  item=item+'<li class="a-topic"><a href="details?url='+data[i].news_url+'"  class="topic-tutor-link" target="_blank"><span class="topic-tutor-pic" style="background-image : url('
                    	  +data[i].img_url+')"></span> <div class="topic-info"> <h3 class="topic-title"> <span class="topic-title-txt">'
                    	  +data[i].title+'</span></h3> <div><p class="date"><em>'
                    	  +data[i].date+'</em><span></span></p><p class="dec">'
                    	  +data[i].dec+'</p></div></div></a></li>';

                       	  //alert(item);
                       	  
                   	
                         }
                 
                      item=item+"</ul>";
                      
                      //alert(item);
                      $(".content").html(item); 
                      $('#page1').show();


                     }


    		}); 
       currentpage=1;
         }


     $('.inner').click(function(e){$('#type').text(e.target.innerHTML);});

</script>

<!-- end scripts -->









</body>
</html>