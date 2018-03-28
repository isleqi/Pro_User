<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.team.model.Post"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
    <meta http-equiv="Cache-Control" content="no-transform">
     <link rel="alternate" media="handheld" href="#">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title></title>
    <!-- <link href="css/main-c.css" media="screen" rel="stylesheet" type="text/css">
    <link href="css/btn.css" media="screen" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/content_toolbar.css">
    <link href="css/sh-353e52ea73888f7bf72641c9ae8e6a45.css" media="all" rel="stylesheet" type="text/css">
     <link rel="stylesheet" type="text/css" href="css/goTop.min.css?v1520235729">-->
      <link rel="stylesheet" href="css/a488d11a.base.css">
     <link rel="stylesheet" href="css/e099c360.topicList.css"> 
     <link rel="stylesheet" type="text/css" href="css/luntang.css"> 
      <script src="js/mlink.min.js"></script>

    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
 <link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
 <script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
 <script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
 <script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
      <style>
        #topic-detail-ad-ul{width:960px;float:left;font-size:1px;margin:0;padding:0}
        #topic-detail-ad-l{float:left;}
        #topic-detail-ad-r{float:right;}
        #topic-detail-ad-ul li{list-style: none;}
        .column, .content {
    width: 1000px;
    margin: 0 auto;
}
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
 var editor1;
  KindEditor.ready(function(K) {
  //这里名字是富文本域的name，后台取数据时用的name
  editor1 = K.create('#commit', {
      cssPath : 'kindeditor/plugins/code/prettify.css',
    uploadJson : 'kindeditor/jsp/upload_json.jsp',
    fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp', 
    allowFileManager : true,
     fterCreate : function() {
     var self = this;
     K.ctrl(document, 13, function() {
      self.sync();
      //注意修改这里的form表单的名字
      document.forms['comment'].submit();
     });
     K.ctrl(self.edit.doc, 13, function() {
      self.sync();
      document.forms['comment'].submit();
     });
    } 
 
   });
    //prettyPrint(); 
  });

    function submit(){
    	 editor1.sync();
    	
    	
    	var content=$("#commit").val();
    	var account=$("#account").val();
    	//alert(title);
    	
    	 if(content==null||content==''){
                   alert("请输入内容");
                   return;
        	} 
    	if(account==null||account==''){
                   alert("请先登录");
                   return;
        	}
    	//alert(content);
    	var json={'account':account,'content':content,'title':title,'industry':industry};
    	/* $.ajax({
             type:"post",
             url:"publish_comment_reply",
                  data:json,
                  dataType: "text",
                  success:function(data){
                        alert(data);

                      },
              error:function(){
                           alert("cnm");

                  }
                  

        	}); */

        }
  
 </script>
    
<!--   <script>
  $(document).ready(function(){
               $.ajax({
                          url:"get_content_reply",
                          type:"post",
                          dataType: "json",
                          success:function(data){
                                     alert("!!!!");
                                     $(".title.text_overflow").html(data[0].title);
                                   for(var i;i<data.length;i++){
                                       var item='<table border="0" cellspacing="0" cellpadding="0"  class="post topic "  ><colgroup><col width="110"><col></colgroup><tbody><tr><td rowspan="2" valign="top" class="wirter" style="width: 110px"><dl class="user_info "><dt class="user_head"><a href="" rel="nofollow" target="_blank"><img alt="" class="avatar" src=';
                                             item=item+data[i].user.tx_src+'style="height: 80px;"></a></dt><dd class="nickname" style="word-break:break-all;"><a href="" rel="nofollow" target="_blank" >'
                                                       +data[i].user.name+'</a><br></dd></dl></td><td style="vertical-align: bottom" valign="top" class="post_info topic" ><div class="post_body"><div class="tag"></div>'
                                                       +data[i].content+'</div></td></tr><tr><td valign="bottom"><div class="control" ><span class="time">发表于：'
                                                       +data[i].time+' </span><strong class="fr"> 楼主</strong><a href="#quote" class="" rel="nofollow" style="float: right;margin-right: 20px;">回复</a>     </div></td></tr></tbody></table>'


                                      
                                       }
                                     
                              }

                   });
	  });
  
  </script>
 -->  </head>
  <body id="topics-show" style="position: static;"><!--全屏-->
<ins data-revive-zoneid="149" data-revive-id="8c38e720de1c90a6f6ff52f3f89c4d57" id="revive-0-0"></ins>
<!--全屏-->



    <style>

  .news-nav .container {
    MARGIN: 0px auto;width:1170px; FONT-FAMILY: "Microsoft YaHei";
    padding:0;
  }
  .nav-bar{
    font-size :16px;
    color:#fff;
    float:left;
  }
  .nav-bar a{
    padding: 0;
    display: inline-block;
    line-height: 44px;
    margin-right: 32px;
    color: #4f4f4f;
    text-decoration: none;
    font-family: "Microsoft YaHei";
  }
  .nav-bar .current, .nav-bar .active, .nav-bar a:hover {
    position: relative;
    border:none;
  }
  .nav-bar .current::after,
  .nav-bar .active::after,
  .nav-bar a:hover::after {
    content: '';
    position: absolute;
    bottom: 0;
    height: 3px;
    left: 0;
    right: 0;
    background-color: #c92027;
  }


  .search-download{
    float:right;
    margin-top:11px;
  }
  .search-download form{
    float:left;
    border: 1px solid #ddd;
  }
  .search-download input{
    /* border:solid 1px #ddd;
    border-right:none; */
    border:none;
    height: 26px;
    line-height:22px;
    padding:0 10px;
    margin-right:-5px;
    width: 229px;
  }
  .search-download .download-search-bth{
    background: url(//csdnimg.cn/public/common/toolbar/images/f_icon.png) no-repeat 0 -189px;
    display: inline-block;
    border: none;
    width: 22px;
    height: 26px;
    vertical-align: middle;
    padding-right: 2px;
    background-color: #fff;
  }
  .search-download .help{
    float:left;
    margin:3px 0 0 20px;
    font-size: 15px;
    color: #4f4f4f;
    line-height: 35px;
    border: 0 !important;
  }
  .search-download .help .fa{
    margin-right:5px;
  }

</style>

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
                 <a href="" >${sessionScope.name}</a>
               
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

<div  class="csdn-bbs">
    <div class="wraper">
      
    
<script type="text/javascript">

  $(function(){
      //获取要定位元素距离浏览器顶部的距离
      $ = jQuery;
      var navH = $(".detail_title_fixed").offset().top;
      $(".detail_title_fixed").hide();

      var show_detail_title_fixed = true;
      //滚动条事件
      $(window).scroll(function(){

          //获取滚动条的滑动距离
          var scroH = $(this).scrollTop();

          //滚动条的滑动距离大于等于定位元素距离浏览器顶部的距离，就固定，反之就不固定
          if(show_detail_title_fixed){
              if(scroH>=navH){
                  $(".detail_title_fixed").css({"position":"fixed","top":"0","border":"1px #198cc5 solid","z-index":"99999"});
                  $(".detail_title_fixed").show();
              }else if(scroH<navH){
                  $(".detail_title_fixed").css({"position":"static"});
                  $(".detail_title_fixed").hide();
              }
          }
      });

      $("#close_detail_title_fixed").click(function(){
          show_detail_title_fixed = false;
          $(".detail_title_fixed").hide();
      });

   
  })
</script>

<%! Post post; %>
<%post=(Post)request.getAttribute("post");%>
<div class="detail_tbox">
    <div class="detail_title">
      <h1>
          <span class="title text_overflow"><%=post.getTitle() %></span>
       
      </h1>
      
    </div>
</div>
<div>
 
  <script>
      (function() {
          var s = "_" + Math.random().toString(36).slice(2);
          document.write('<div id="' + s + '"></div>');
          (window.slotbydup=window.slotbydup || []).push({
              id: '4776821',
              container: s,
              size: '960,90',
              display: 'inlay-fix'
          });
      })();
  </script>
</div>


<div class="detailed">
<table border="0" cellspacing="0" cellpadding="0"  class="post topic ">
  <colgroup><col width="110"><col></colgroup>
  <tbody>
  <tr>
		<td rowspan="2" valign="top" class="wirter" style="width: 110px">
       <dl class="user_info ">
          <dt class="user_head">
            <a href="" rel="nofollow" target="_blank"><img alt="" class="avatar" src=<%=post.getUser().getTx_src() %> style="height: 80px;"></a>
</dt>
          <dd class="nickname" style="word-break:break-all;">
            <a href="" rel="nofollow" target="_blank" ><%=post.getUser().getName() %></a>
            <br>
          </dd>
        </dl>
      </td>
		<td style="vertical-align: bottom" valign="top" class="post_info topic" >
			
        <div class="post_body">
        <%=post.getContent() %>
        </div>


		</td>
	</tr>
	<tr>
		<td valign="bottom">
			
<div class="control" >

  <span class="time">
              发表于：
<%=post.getDate()%>  
</span>


      <strong class="fr">
        楼主
      </strong>

  
       
      <a href="#quote" class="" rel="nofollow" style="float: right;margin-right: 20px;">回复</a>     
      


</div>


		</td>
  </tr>
</tbody>

</table>

<!--  <div>
<table border="0" cellspacing="0" cellpadding="0"  class="post topic ">
  <colgroup><col width="110"><col></colgroup>
  <tbody>
  <tr>
		<td rowspan="2" valign="top" class="wirter" style="width: 110px">
       <dl class="user_info ">
          <dt class="user_head">
            <a href="" rel="nofollow" target="_blank"><img alt="" class="avatar" src="//avatar.csdn.net/8/0/1/1_qq_26602805.jpg" style="height: 80px;"></a>
</dt>
          <dd class="nickname" style="word-break:break-all;">
            <a href="" rel="nofollow" target="_blank" title="qq_26602805">qq_26602805</a>
            <br>
          </dd>
        </dl>
      </td>
		<td style="vertical-align: bottom" valign="top" class="post_info topic" >
			
        <div class="post_body">

             
                  <br>
为什么把char&nbsp;p[]换成char&nbsp;*p就对了，这有什么区别吗？？？
        </div>


		</td>
	</tr>
	<tr>
		<td valign="bottom">
			
<div class="control" >

  <span class="time">
              发表于：
    2018-03-25 00:28:09
  </span>


      <strong class="fr">
        楼主
      </strong>

  
       
      <a href="#quote" class="" rel="nofollow" style="float: right;margin-right: 20px;">回复</a>     
      


</div>


		</td>
  </tr>
</tbody>

</table>


<table border="0" cellspacing="0" cellpadding="0" id="post-403125485" class="post" >
  <colgroup><col width="110"><col></colgroup>
  <tbody>
  <tr>
      <td rowspan="2" valign="top" class="wirter" style="width: 110px">
                <dl class="user_info ">
          <dt class="user_head" >
            <a href="" rel="nofollow" target="_blank"><img alt="earbao" class="avatar" src="//avatar.csdn.net/4/9/F/1_earbao.jpg" style="height: 80px;"></a>
</dt>
         
          <dd class="nickname" style="word-break:break-all;">
            <a href="" rel="nofollow" target="_blank">yunshouhu</a>
            <br>
            
            
            
          </dd>



          

          

        </dl>

      </td>
		<td style="vertical-align: bottom" valign="top" class="post_info " >
			
        <div class="post_body">

                  有的，局部变量返回后会给自动释放，指针不会。



        </div>


		</td>
	</tr>
	<tr>
		<td valign="bottom">
							
					
<div class="control">

  <span class="time">
              回复于：
    2018-03-25 00:47:22
  </span>
                  


            <span class="fr" >
              <a href="#post-403125485">#1</a>
            </span>

 
        <a href="#quote" class="" rel="nofollow" style="margin-right: 20px;float: right;">回复</a>     



</div>


		</td>
  </tr>
</tbody>
</table>
</div>-->


</div>

<script type="text/javascript" charset="utf-8">
    $(function(){
        topics_page_js.show_page();
    });
</script>




 

<script>
  $(function(){
    $('.refresh-captcha').on('click', function(e){
      e.preventDefault();
      $('.captcha').load('/captchas/new');
    });
  });
  $(function(){
      showsuggest('post_body');
  });
</script>


   



   <div  style="position: relative;width: 100%;margin: 50px auto;border: 1px solid #A9CBEE;padding: 20px 10px;">
    <textarea id="commit" name=comment_reply  style="width: 100%;"></textarea>
    </div>
   <input type="button" style="padding: 2px 8px 2px 8px;font-size: 5px;margin-top: -30px;margin-left: 470px" value="提交">
    </div>
  
 </div>
<link rel="stylesheet" type="text/css" href="css/pub_footer_2014.css">


</body></html>