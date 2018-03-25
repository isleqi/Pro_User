<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0057)https://www.zaih.com/topics/?category_id=420&city=beijing -->
<html class="no-js" lang="en"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>论坛</title>
   
    
    <script src="js/mlink.min.js"></script>

    
    

    <link rel="stylesheet" href="css/a488d11a.base.css">
    
<link rel="stylesheet" href="css/e099c360.topicList.css">

<style type="text/css">

.qq {
    display: none;
    position: absolute;
    padding-top: 9px;
    padding-bottom: 12px;
    top: 55px;
    z-index: 99999;
    background-color: black;
    border-radius: 0 0 4px 4px;
    width: 100px;
}
.zone:hover .qq{
display: block;
}

</style>

</head>
<body style="overflow-x: visible;">
    <!--[if gt IE 8]><!-->
    
    




    
    <!--<![endif]-->
    
    








<div id="header" class="header ">

    <div class="column">
        <a class="header-logo" href="/Pro_User" >
        <i class="icon icon-zaih">
        <img  src="img/3.png" width="150px" style="margin-top: 10px">
        </i>
        </a>
        <ul class="header-nav">
            <li class="decorate" style="left: 56px; width: 56px;"></li>
            
            
            
            <li data-action="nav-select" class="drop-more">
                <a href="" class="active" id="huoqu">获取</a>
<div class="drop_menu" style="display: none">
<a href="industry_news">资讯</a>
<a href="industry_data">数据</a>
</div>                
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
                <a href="" class="">需求</a>
            </li>
            
             <li data-action="nav-select">
                <a href="" class="">专家观点</a>
            </li>
            
            
           
            
            
            
            
           
            
            
        </ul>
        <div class="header-setting">
            
          
            <%if(session.getAttribute("account")!=null) {%>
                 <div  class="zone" style="display: inline-block;">
                 <a href="" >${sessionScope.name}</a>
                 <div class="qq" >
          <div style="width: 200px"> <a href="industry_news">资讯</a></div>
          <div style="width: 200px"> <a href="industry_data">数据</a></div>
         </ul>
         </div>
                 
                 </div>
                      
           
          <%--  <%if((int)session.getAttribute("type")==0){ %> --%>
            <a href="">发布需求 </a>
          <%--   <%}else{ %>
               <a href="">发布观点 </a>
            <%} %>  --%>
             <a style="cursor: pointer;" onclick="out()">退出</a>
            <%}else{ %>
                        <a href="">登录</a>
            <%} %>
           
            
        </div>
        
      
        
       
        
        <form class="search" action="search" method="GET">
        
        
            <input class="search-content" autocomplete="off" type="text" placeholder="搜资讯" value="" name="dec">
            <div class="search-sug sug"></div>
            <button class="search-btn icon icon-search" type="submit"></button>
        </form>
        
    </div>
</div>
    
    <%! String type; String url;%>
    <%type=(String)request.getAttribute("type"); url=(String)request.getAttribute("url");%>
<div class="container ">
    

<div class="content">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list parent_forum ">
    <colgroup>
      <col>
      <col width="60px">
      <col width="120px">
      <col width="60px">
      <col width="120px">
      <col width="60px">
    </colgroup>
    <tbody><tr class="zebra">
      <th>标题</th>
      <th class="tc">提问人</th>
      <th class="tc">时间</th>
    </tr>
          
  

          <tr>
    <td class="title">
      <strong class="green">？</strong>
      <a href="/topics/392143486" target="_blank" title="springboot 返回jsp页面的错误  真的逼疯了，">springboot 返回jsp页面的错误  真的逼疯了，</a>
    </td>
    <td class="tc">
      <a href="//my.csdn.net/qq_35587725" rel="nofollow" target="_blank" title="qq_35587725">qq_35587725</a><br>
      </td>
    <td class="tc">
      <span class="time">2018-03-24 13:21</span>
    </td>
  </tr>
  <tr class="zebra">
    <td class="title">
      <strong class="green">？</strong>
      <a href="/topics/392345698" target="_blank" title="关于JAVA前景的一些疑惑，过来人和大佬指点一下哟">关于JAVA前景的一些疑惑，过来人和大佬指点一下哟</a>
      <span class="forum_link">[<span class="parent"><a href="/forums/Java">Java</a></span> <a href="/forums/JavaOther">Java相关</a>]</span>
    </td>
    <td class="tc">
      <a href="//my.csdn.net/qq_37922457" rel="nofollow" target="_blank" title="ws加油你是最胖的">ws加油你是最胖的</a><br>
      </td>
    <td class="tc">
      <span class="time">2018-03-24 13:12</span>
    </td>
  </tr>
  <tr>
    <td class="title">
      <strong class="green">？</strong>
      <a href="/topics/392344637" target="_blank" title="请教下AbstractMethodError: oracle.jdbc.drive怎么解决啊？急">请教下AbstractMethodError: oracle.jdbc.drive怎么解决啊？急</a>
    </td>
    <td class="tc">
      <a href="//my.csdn.net/qq_39520065" rel="nofollow" target="_blank" title="qq_39520065">qq_39520065</a><br>
    <td class="tc">
      <span class="time">2018-03-24 13:05</span>
    </td>
  </tr>

  </tbody></table>
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
 
$(document).ready(function (){

});



</script>

<!-- end scripts -->









</body>
</html>