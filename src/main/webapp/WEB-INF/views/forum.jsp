<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0057)https://www.zaih.com/topics/?category_id=420&city=beijing -->
<html class="no-js" lang="en"><!--<![endif]-->
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
    
    <%! String type; String url;%>
    <%type=(String)request.getAttribute("type"); url=(String)request.getAttribute("url");%>
    
    
<div class="container ">
        <div class="topic-menu-wrap">
    <div class="topic-menu">
        
        
        <div class="crumb">
            <h2>
                <input id='url' value=<%=url %> type="hidden"></input>
                <a id='type' ><%=type %></a><i class="icon icon-go"></i>
                
            </h2>
            
            
        </div>
        
        <div class="price-screen priceScreen">
            <a class="price-screen-btn priceScreenBtn" href="javascript:void 0;">行业</a>
            <div class="topic-drop-wrap topicDropWrap">
                            <div class="topic-sub-menu">
                    
                    <ul style="cursor: pointer;">
                        <li>
                            <a  onclick="" class="inner" >IT与通信</a>
                        </li>
                        <li>
                            <a  onclick="" class="inner" >机器电子</a>
                        </li>
                        <li>
                            <a  onclick="" class="inner" >医疗医药保健</a>
                        </li>
                        <li>
                            <a  onclick="" class="inner" >建筑房地产</a>
                    </li>
                    
                     <li>
                            <a  onclick="" class="inner" >金融保险投资</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >出版传媒包装</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >酒店旅游餐饮</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >零售商贸</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >能源矿产环保</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >石油化工</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >食品饮料酒业</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >家用电器</a>
                    </li>
                     <li>
                            <a  onclick="" class="inner" >家用日化</a>
                    </li>
                    
                     <li>
                            <a  onclick="" class="inner" >车辆交通运输</a>
                    </li>
                    
                     <li>
                            <a  onclick="" class="inner" >其他行业</a>
                    </li>
                    
                    </ul>
                    
                </div>
            
            </div>
        </div>
    </div>
</div>
    

<div class="content">
  <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_list parent_forum " id="table">
  
    <tbody>
    <tr class="zebra">
      <th>标题</th>
      <th >提问人</th>
      <th >时间</th>
    </tr>
          
  


  </tbody>
  </table>
</div>    
  
</div>


<!-- JavaScript at the bottom for fast page loading -->




<script src="js/62c4d7e6.base.js"></script>
<script src="js/76b4679b.main.js"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/8e026d0f.topicList.js"></script>


 <script>
 
$(document).ready(function (){
	 var elem=document.getElementById('view');
     elem.className="";
     elem=document.getElementById('huoqu');
     elem.className="";
     elem=document.getElementById('professor');
     elem.className="";
     elem=document.getElementById('demand');
     elem.className="";
     elem=document.getElementById('forum');
     elem.className="active";
   get_post();
});

               function get_post(){

                   
                          $.ajax({
                                 url:'get_posts',
                                 type:"post",
                                 dataType: "json",
                                 success:function(data){
                                          // alert(JSON.stringify(data));
                                                var item='<tbody><tr class="zebra"><th>标题</th> <th >提问人</th> <th >时间</th>   </tr>';
                                              
                                                for(var i=0;i<data.length;i++){
                                              	  item=item+'<tr><td class="title"><strong class="green">？</strong><a href="post_details?id='
                                              	  +data[i].id+'"target="_blank" >'
                                              	  +data[i].title+'</a></td><td class="tc"><a href="" rel="nofollow" target="_blank" >'
                                              	  +data[i].user.name+'</a><br></td><td class="tc"><span class="time">'
                                              	  +data[i].date+'</span></td></tr>';
                                                                                          	  

                                                    }
                                            
                                                 item=item+"</tbody></table>";
                                                 
                                                 //alert(item);
                                                 $("#table").html(item); 
                                                 //$('#page1').show();
                                     },
                                     error:function(){
                                               alert("cnm");
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

<!-- end scripts -->









</body>
</html>