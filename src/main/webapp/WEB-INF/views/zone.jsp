<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>论坛</title>
   
    
    <script src="js/mlink.min.js"></script>

    
    

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


</body>
</HTML>