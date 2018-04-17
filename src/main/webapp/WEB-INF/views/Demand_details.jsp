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
     elem.className="active";
     elem=document.getElementById('forum');
     elem.className="";
	 var demand_id=$("#demand_id").val();
	 var json={'demand_id':demand_id};
	 $.ajax({
             url:'get_demand_details',
             data:json,
             dataType: "json",
             type:'post',
             success:function(data){
                 alert(JSON.stringify(data));
                 $(".demand_title").html(data.title);
                 $(".demand_content").html(data.content);
                 var item='<img src='+data.user.tx_src+' style="height: 50px;width:50px;float: left;display: inline;"><div style="font-weight:blod">&nbsp;&nbsp;&nbsp;'
                 +data.user.name+'&nbsp;|&nbsp'
                 +data.user.phone+'</div>';
                 $(".userInfo").html(item);
                     
                 }


		 });
	 
        
});
  

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
<input type="hidden" id="demand_id" value=${requestScope.demand_id} >
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
                                  <input type="hidden" id="account" value=${sessionScope.account}>
                 
               
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

<div style="margin: 30px auto;width: 1000px;height: 100%">
<div class="demandInfo" >

<div class="demand_title" style="margin-top:100px;margin-bottom:20px;margin-left:0;display: table;font-size: 30px;font-weight: bold;">
</div>
<div style="font-size: 20px;margin-bottom: 10px"> 需求描述:</div>
<div class="demand_content">
</div>

<div class="userInfo" style="font-weight: bold;position:fixed;height: 100px;rigth:0;bottom: 0;width: 100%">

</div>
</div>

</div>
</body>
</HTML>