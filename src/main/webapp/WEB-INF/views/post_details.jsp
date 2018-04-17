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
            <script src="js/jquery.js"></script>
      

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
 .csdn-bbs .detailed .reply table {
  
    box-shadow: 0 2px 4px 0 rgba(0,0,0,0.05);
    margin: 0 0 !important;
    border: 1px solid #ddd;
}
 .csdn-bbs .detailed .reply table {
    border-collapse: separate;
}
.csdn-bbs .detailed .reply table {
    border-collapse: collapse;
    border-spacing: 0;
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    font-weight: 400;
    vertical-align: baseline;
    
    max-width: 100%;
       display: table;
    border-spacing: 2px;
    border-color: grey;
} 

    </style>
     <script>
     var from_account;
     var to_account;
     var comment_id;
     var to_account_name;
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
    	      elem.className="active";
    	   $("#div_reply").blur(function(){alert('cnm');$("#div_reply").css("display","none");});
    	   
	 	var post_id=$("#post_id").val();
	 	//alert(post_id);
	    var json ={"post_id":post_id};
	   $.ajax({
		   url:'get_comment_reply',
	       data:json,
	       type:"post",
	       dataType: "json",
	       success:function(data){
		      // alert(JSON.stringify(data));
		       var item="";
		       //alert(data.length);
                      for(var i=0;i<data.length;i++){ 
                          var c_id=data[i].id;
                             item=item+'<table border="0" cellspacing="0" cellpadding="0"  class="post" ><colgroup><col width="110"><col></colgroup><tbody><tr><td rowspan="2" valign="top" class="wirter" style="width: 110px"><dl class="user_info "><dt class="user_head" ><a href="" rel="nofollow" target="_blank"><img  class="avatar" src="'
                                 +data[i].user.tx_src+'" style="height: 80px;"></a></dt><dd class="nickname" style="word-break:break-all;"><a href="" rel="nofollow" target="_blank">'
                                 +data[i].user.name+'</a><br></dd></dl></td><td style="vertical-align: bottom" valign="top" class="post_info " ><div class="post_body">'
                                 +data[i].content+'</div></td></tr><tr><td valign="bottom"><div class="control"><span class="time"> 回复于：'
                                 +data[i].date+'</span><span class="fr" ><a href="">#'
                                 +(i+1)+'</a></span><a  class="huifu"  style="margin-right: 20px;float: right;" to-account='
                                 +data[i].user.account+' to-account-name='
                                 +data[i].user.name+' comment-id='
                                 +c_id+' >回复</a></div></td></tr></tbody></table>';
                                 
                                  var replys=data[i].replys;
                                  //alert(replys.length);
                                  item=item+'<div class="reply" style="margin-left:150px; width: 800px;position: relative;"><ul >';
                                  //alert(replys.length);
                                 for(var j=0;j<replys.length;j++){
                                     item=item+'<li class="aa" style="overflow:auto;"><a  href="" ><img src='
                                     +replys[j].from_user.tx_src+' style="height: 40px;width:40px;float: left;display: inline;"></a><div class="" style="float: left;display: inline;margin-left: 10px;word-wrap:break-word;width: 700px"><a class=""   target="_blank" href="" ><div style="display: inline;">'
                                     +replys[j].from_user.name+'</div></a>:&nbsp;<div class="" style="display: inline;">'
                                     +replys[j].content+' </div><div class="" style="display: inline;float: right;margin-left: 50px"><span class="">'
                                     +replys[j].date+'</span><a class="huifu" to-account-name='
                                     +replys[j].from_user.name+' to-account='
                                     +replys[j].from_user.account+' comment-id='
                                     +c_id+' class="">&nbsp;&nbsp;&nbsp;回复</a></div></div></li>';
                                     }
                                 item=item+'</ul></div>';
                          }
                      
                      $("#comment_reply").html(item);
                      $(document).delegate('.huifu',"click",function(event){
                          //alert("cnm!!!");
                           $("#div_reply").focus();
                          from_account=$("#account").val();
                 	        to_account = $(this).attr("to-account");
                 	        comment_id=$(this).attr("comment-id");
                 	        to_account_name=$(this).attr("to-account-name");
                 	       var y=$(this).offset().top;
                 	      var elem=document.getElementById("div_reply");  
                 	     elem.style.top=(y+42)+'px';
                 	 //  alert(comment_id);
                 	    $("#div_reply").slideToggle("slow");
                 	  
                 	      	
                   	}); 
		       },
          error:function(){
                       alert("cnm");
              }
		   });
		   
	  }); 
      
     
 var editor1;
 var editor2;
  KindEditor.ready(function(K) {
  //这里名字是富文本域的name，后台取数据时用的name
  editor1 = K.create('#commit', {
	  basePath:'/Pro_User/kindeditor/',
      cssPath : 'kindeditor/plugins/code/prettify.css',
    uploadJson : 'kindeditor/jsp/upload_json.jsp',
    fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp', 
    allowFileManager : true,
    items:[ 'emoticons',  'image', 'undo', 'redo', 'code', 'cut', 'copy', 'paste',
        'plainpaste', 'wordpaste', 'justifyleft', 'justifycenter', 'justifyright',
        'justifyfull',  'indent', 'outdent', 'subscript',
        'superscript', 'clearhtml', 'quickformat', 'selectall',
        'formatblock', 'fontname', 'fontsize',  'forecolor', 'hilitecolor', 'bold',
        'italic', 'underline','lineheight', 'removeformat',   'multiimage',
         'insertfile', 'hr', 'pagebreak',
        'link', 'unlink'],
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
  editor2 = K.create('#reply', {
	  basePath:'/Pro_User/kindeditor/',
      cssPath : 'kindeditor/plugins/code/prettify.css',
    uploadJson : 'kindeditor/jsp/upload_json.jsp',
    fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp', 
    allowFileManager : true,
    items:[ 'emoticons',  'image', 'undo', 'redo', 'code', 'cut', 'copy', 'paste',
        'plainpaste', 'wordpaste', 'justifyleft', 'justifycenter', 'justifyright',
        'justifyfull',  'indent', 'outdent', 'subscript',
        'superscript', 'clearhtml', 'quickformat', 'selectall',
        'formatblock', 'fontname', 'fontsize',  'forecolor', 'hilitecolor', 'bold',
        'italic', 'underline','lineheight', 'removeformat',   'multiimage',
         'insertfile', 'hr', 'pagebreak',
        'link', 'unlink'],
   
 
   });
  var elem=document.getElementById("div_reply");  
  elem.style.display='none';
  });
  
  
  function submit(type){
	 	 editor1.sync();
	 	 editor2.sync();
	 	var from_account=$("#account").val();
	 	var post_id=$("#post_id").val();
	 	//alert(title);
	 	
	 	//alert(comment_id+from_account+post_id);
	 	
	 	 
	 	if(from_account==null||from_account==''){
	                alert("请先登录");
	                return;
	     	}
	 	//alert(content);
	 	if(type=="comment"){
		 	var content=$("#commit").val();
		 	if(content==null||content==''){
                alert("请输入内容");
                return;
     	} 
	 	var json={'from_account':from_account,'content':content,"post_id":post_id};
	 	$.ajax({
	          type:"post",
	          url:"publish_comment",
	               data:json,
	               dataType: "text",
	               success:function(data){
	                     alert(data);
	                     location.reload(true);
	                     
	                   },
	           error:function(){
	                        alert("cnm");

	               }
	               

	     	});
	 	}
	 	else{
	 		var content=$("#reply").val();
		 	if(content==null||content==''){
                alert("请输入内容");
                return;
     	} 
              content="回复 "+to_account_name+" :"+content;
            var json={'from_account':from_account,'to_account':to_account,'comment_id':comment_id,'post_id':post_id,'content':content};
                   $.ajax({
         	          type:"post",
         	            url:"publish_reply",
         	               data:json,
         	               dataType: "text",
         	               success:function(data){
         	                     alert(data);
         	                     location.reload(true);
         	                     
         	                   },
         	           error:function(){
         	                        alert("cnm");

         	               }
         	               

         	     	});
		 	}

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
<input type="hidden" id="post_id" value=<%=post.getId() %>>
<div class="detail_tbox">
    <div class="detail_title">
      <h1>
          <span class="title text_overflow"><%=post.getTitle() %></span>
       
      </h1>
      
    </div>
</div>
<div>
 
 
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

  
       
      <a href="#quote" class="" rel="nofollow" style="float: right;margin-right: 20px;"></a>     
      


</div>


		</td>
  </tr>
</tbody>

</table>
  <div id="comment_reply" style="display: table;">
</div>

 <div id="div_reply" style=" position:absolute;margin: auto 200px;border: 1px solid #A9CBEE;width:auto;z-index: 9999;">
    <textarea id="reply" name=comment_reply  style=""></textarea>
       <input type="button" style="padding: 2px 8px 2px 8px;font-size: 5px;margin-top: -30px;margin-left: 470px" value="提交" id="tijiao" onclick="submit('reply')">
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
   <input type="button" style="padding: 2px 8px 2px 8px;font-size: 5px;margin-top: -30px;margin-left: 470px" value="提交" id="tijiao" onclick="submit('comment')">
    </div>
  
 </div>
<link rel="stylesheet" type="text/css" href="css/pub_footer_2014.css">


</body></html>