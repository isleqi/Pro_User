<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>论坛</title>
   
    
    <script src="js/mlink.min.js"></script>
        <script src="js/jquery.js"></script>
            <script src="js/change.js"></script>
    
<!-- <link rel="stylesheet" href="css/default.min.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
    <link href="css/main.d8bf4b61.css" rel="stylesheet"> -->
    
    

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
.demand_list ul li{font-size: 15px;display: block;margin-bottom: 10px}
.demand_list li{display: list-item;}
</style>
<script>
$(document).ready(function(){
	 var elem=document.getElementById('view');
     elem.className="";
     elem=document.getElementById('huoqu');
     elem.className="";
     elem=document.getElementById('professor');
     elem.className="";
     elem=document.getElementById('demand');
     elem.className="";
     elem=document.getElementById('forum');
     elem.className="";
         var account =$('#account').val();
         var json={'account':account};
         $.ajax({
                    url:'get_zone2',
                    data:json,
                    dataType: "json",
                    type:'post',
                    success:function(data){
                        
                          if(data.phone==null)
                              data.phone='';
                          if(data.jianjie==null)
                              data.jianjie='';
                          if(data.hangye==null)
                              data.hangye='';
                         $('#user_tx').attr("src",data.tx_src);
                         $("#user_name").text(data.name);
                         $("#user_phone").text("手机：  "+data.phone);
                         $('#user_email').text("邮箱：  "+data.account);
                         $('#user_jianjie').text("个人简介：   "+data.jianjie);
                         $("#user_hangye").text("行业：   "+data.hangye);
                        }
             });
         $.ajax({
                    url:'get_post_account',
                    data:json,
                   dataType: "json",
                   type:"post",
                   success:function (data){
                             //alert(JSON.stringify(data));
                             var item='<ul>';
                             for(var i=0;i<data.length;i++){
                                      item=item+'<li> <span class="" style="text-align: left"><a href=post_details?id='
                                      +data[i].id+' target="_blank" >'
                                      +data[i].title+'</a></span><span class="" style="float: right;"><em data-bind="time" class="" >'
                                      +data[i].date+'</em></span></li>';

                                 }
                             item=item+"</ul>";

                             $(".post_list").html(item);
                             $(document).delegate('.remove',"click",function(){
                                 
                                var post_id= $(this).attr("post-id");
                                var json={"post_id":post_id};
                                $.ajax({
                                            url:'deletePost',
                                            data:json,
                                            dataType: "text",
                                            type:"post",
                                            success:function(data){
                                                    location.reload();

                                                }
                                           

                                    });
                                        


                                 });
                             
                       },
                    error:function(){
                               alert('cnm');
                        }

             });

     
        
         
    
     	
});



   function get_posts(){
	   $(".post_list").css("display","table");
		  $(".demand_list").css("display","none");
	   }
  
  function get_demands(){
	  $(".post_list").css("display","none");
	  $(".demand_list").css("display","table");
       var account =$('#account').val();
       var json={'account':account};
       $.ajax({
                    data:json,
                    url:'get_demand_account',
                    dataType: "json",
                    type:'post',
                    success:function (data){
                    	//alert(JSON.stringify(data));
                        var item='<ul>';
                        for(var i=0;i<data.length;i++){
                                 item=item+'<li> <span class="" style="text-align: left"><a href=demand_details?id='
                                 +data[i].id+' target="_blank" >'
                                 +data[i].title+'</a></span><span class="" style="float: right;"><em data-bind="time" class="" >'
                                 +data[i].date+'</em></span></li>';

                            }
                        item=item+"</ul>";

                        $(".demand_list").html(item);
                            
                        }

           });

	  }

 

  function out(){
      $.ajax({
              url:"out",
              dataType: "text",
              type:"post",
              success:function(data){
                         alert(data);
                         top.location.href="index.jsp"; 

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
                <a href="industry_news" id="huoqu">获取</a>
          <div class="qq" style="text-align: center;">
          <div  class="ww"><a href="industry_news" >资讯</a></div>
                    <div  class="ww"><a href="industry_data" >数据</a></div></div>             
            </li>
            <li data-action="nav-select">
                <a href="professor_list" class="" id="professor">专家</a>
            </li>
            <li data-action="nav-select">
                <a href="" class="" id="organization">机构</a>
            </li>
            
            <li data-action="nav-select">
                <a href="forum" class="" id="forum">论坛</a>
            </li>
            
              <li data-action="nav-select">
                <a href="demand_view?kind=demand" class="" id="demand">需求</a>
            </li>
            
             <li data-action="nav-select">
                <a href="demand_view?kind=view" class="" id="view">专家观点</a>
            </li>
       
        </ul>
        <div class="header-setting">
            
          
            <%if(session.getAttribute("account")!=null) {%>
                 <div  class="zone" style="display: inline-block;">
                 <a href="zone" >${sessionScope.name}</a>
                                  <input type="hidden" id="account" value=${requestScope.account}>
                 
               
                 <div class="qq" style="text-align: center;">
          <div  class="ww"><a style="cursor: pointer;" onclick="out()">退出</a></div>
          
         
        
         </div>
       
                 
                 </div>
                      
           
            
                      <div style="display: inline-block;"><a href="publish_post">发贴 </a></div>
                      
          <%if(session.getAttribute("identity").equals("0")){ %>
           
            <div style="display: inline-block;"><a href="publish">发布需求 </a></div>
            <%}else if(session.getAttribute("identity").equals("1")){ %>
            <div style="display: inline-block;"><a href="publish">发布观点 </a></div>
            <%} %>  
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
<img src="" style="height: 150px;width:150px;float: left;display: inline;" id="user_tx">
</a>
<div class="" style="float: left;display: inline;margin-left: 30px;word-wrap:break-word;width: 700px">

<div style="display: inline;font-size: 30px;margin-top: 30px" id="user_name">
</div>

<div class="" style="" id="user_hangye"> 
</div>
<div id="user_phone">手机:</div>
<div id="user_email">邮箱:</div>
<div class=".jianjie" style="" id="user_jianjie">
<span class=""></span>

</div>
</div>

</div>

<div class="tab" style="margin: 0 auto;width: 900px">
<ul>
<li onclick="get_posts()" style="cursor: pointer;">ta的帖子</li>&nbsp;&nbsp;&nbsp;&nbsp;
<li onclick="get_demands()" style="cursor: pointer;">ta的需求</li>
</ul>
</div>

<div class="post_list" style="margin: 0 auto;width:900px;display: table;font-size: 10px;padding-top: 20px">
</div>

<div class="demand_list" style="margin: 0 auto;width:900px;display: none;font-size: 10px;padding-top: 20px">
</div>
<div id="maskTop" style="display: none;width: 400px; height: 620px; border: #999999 1px solid; background: #fff; color: #333; position: fixed; top: 50%; left: 50%; margin-left: -200px; margin-top: -310px; z-index: 2999; filter: progid:DXImageTransform.Microsoft.Shadow(color=#909090,direction=120,strength=4); -moz-box-shadow: 2px 2px 10px #909090; -webkit-box-shadow: 2px 2px 10px #909090; box-shadow: 2px 2px 10px #909090;">
<iframe id="childframe" name="childframe" width="400" height="568" frameborder="0" scrolling="no" src="changeinfo.jsp">
</iframe>



</div>

</body>
</HTML>