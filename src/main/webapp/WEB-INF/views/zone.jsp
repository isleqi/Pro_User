<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>论坛</title>
   
    
    <script src="js/mlink.min.js"></script>
        <script src="js/jquery.js"></script>
    

    
    

    <link rel="stylesheet" href="css/a488d11a.base.css">
    
     <link rel="stylesheet" href="css/e099c360.topicList.css">

<style type="text/css">

.qq {
    display: none;
    position: absolute;
    top: 56px;
    z-index: 99999;
    background-color: white;
    border-radius: 0 0 4px 4px;
     width：50px;
     line-height:30px;
    
    
     
}

.huoqu:hover .qq{
display: block;

}
.qq a{color: black; height: 30px;}
.ww{      
    line-height:30px;
}
.ww a{
       line-height:30px;
        color: black;
}
.zone:hover .qq{
display: block;
}
.tc{
text-align:center;
}
ul li{display: inline;font-size: 20px}
.post_list ul li{font-size: 15px;display: block;margin-bottom: 10px}
.post_list li{display: list-item;}
</style>
<script>
$(document).ready(function(){
         var account =$('#account').val();
         var json={'account':account};
         $.ajax({
                    url:'get_post_account',
                    data:json,
                   dataType: "json",
                   type:"post",
                   success:function (data){
                             alert(JSON.stringify(data));
                             var item='<ul>';
                             for(var i=0;i<data.length;i++){
                                      item=item+'<li> <span class="" style="text-align: left"><a href=post_details?id='
                                      +data[i].id+' target="_blank" >'
                                      +data[i].title+'</a></span><span class="" style="float: right;"><em data-bind="time" class="" >'
                                      +data[i].date+'</em></span></li>';

                                 }
                             item=item+"</ul>";

                             $(".post_list").html(item);
                             
                       },
                    error:function(){
                               alert('cnm');
                        }

             });

	
});

  function get_commands(){
       var account =$('#account').val();
       var json={'account':account};
       $.ajax({
                    data:json,
                    url:'get_command_account',
                    dataType: "json",
                    type:'post',
                    success:function (data){
                            
                        }

           });

	  }
</script>
</head>
<body style="overflow-x: visible;">
<div id="header" class="header ">

    <div class="column">
        <a class="header-logo" href="/Pro_User" >
        <i class="icon icon-zaih">
        <img  src="img/3.png" width="150px" style="margin-top: 10px">
        </i>
        </a>
        <ul class="header-nav">
            <li class="decorate" style="left: 56px; width: 56px;"></li>
            <li data-action="nav-select" class="huoqu">
                <a href="" class="active" >获取</a>
          <div class="qq" style="text-align: center;">
          <div  class="ww"><a href="industry_news" >资讯</a></div>
                    <div  class="ww"><a href="industry_data" >数据</a></div>
          
         
        
         </div>             
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="" class="">专家</a>
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="" class="">机构</a>
            </li>
            
            
            
            
            <li data-action="nav-select">
                <a href="forum" class="">论坛</a>
            </li>
            
              <li data-action="nav-select">
                <a href="demand_view?kind=demand" class="">需求</a>
            </li>
            
             <li data-action="nav-select">
                <a href="demand_view?kind=view" class="">专家观点</a>
            </li>
            
            
           
            
            
            
            
           
            
            
        </ul>
        <div class="header-setting">
            
          
            <%if(session.getAttribute("account")!=null) {%>
                 <div  class="zone" style="display: inline-block;">
                 <a href="zone" >${sessionScope.name}</a>
                                  <input type="hidden" id="account" value=${sessionScope.account}>
                 
               
                 <div class="qq" style="text-align: center;">
          <div  class="ww"><a style="cursor: pointer;" onclick="out()">退出</a></div>
          
         
        
         </div>
       
                 
                 </div>
                      
           
          <%--  <%if((int)session.getAttribute("type")==0){ %> --%>
                      <div style="display: inline-block;"><a href="publish_post">发贴 </a></div>
          
            <div style="display: inline-block;"><a href="publish">发布需求 </a></div>
          <%--   <%}else{ %>
               <a href="">发布观点 </a>
            <%} %>  --%>
            <%}else{ %>
                        <div><a href="">登录</a></div>
            <%} %>
           
            
        </div>
        
       
        
       
        
        <form class="search" action="search" method="GET">
        
        
            <input class="search-content" autocomplete="off" type="text" placeholder="搜资讯" value="" name="dec">
            <div class="search-sug sug"></div>
            <button class="search-btn icon icon-search" type="submit"></button>
        </form>
        
    </div>
</div>

<div class="userinfo" style="margin: 70px auto 20px auto;max-width: 1000px;padding: 0 20px;display: table;">

<a href="">
<img src="touxiang/2969827f7966480abb4eb05077694387.jpg" style="height: 150px;width:150px;float: left;display: inline;">
</a>
<div class="" style="float: left;display: inline;margin-left: 30px;word-wrap:break-word;width: 700px">

<div style="display: inline;font-size: 30px;margin-top: 30px">isleqi
</div>

<div class="" style="">行业：
</div>
<div class="" style="">个人简介：
<span class=""></span>

</div>
</div>

</div>

<div class="tab" style="margin: 0 auto;width: 900px">
<ul>
<li>我的帖子</li>&nbsp;&nbsp;&nbsp;&nbsp;
<li>我的需求</li>
</ul>
</div>

<div class="post_list" style="margin: 0 auto;width:900px;display: table;font-size: 10px;padding-top: 20px">
</div>

<div class="command-list">
</div>

</body>
</HTML>