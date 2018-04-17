<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0057)https://www.zaih.com/topics/?category_id=420&city=beijing -->
<html class="no-js" lang="en"><!--<![endif]--><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <title>论坛</title>
   
    
    <script src="js/mlink.min.js"></script>

    <link rel="stylesheet" href="kindeditor/themes/default/default.css" />
 <link rel="stylesheet" href="kindeditor/plugins/code/prettify.css" />
 <script charset="utf-8" src="kindeditor/kindeditor-all.js"></script>
 <script charset="utf-8" src="kindeditor/lang/zh-CN.js"></script>
 <script charset="utf-8" src="kindeditor/plugins/code/prettify.js"></script>
    

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

</style>
 
 
 <script>
 var editor1;
  KindEditor.ready(function(K) {
  //这里名字是富文本域的name，后台取数据时用的name
  editor1 = K.create('#aaa', {
      cssPath : 'kindeditor/plugins/code/prettify.css',
    uploadJson : 'kindeditor/jsp/upload_json.jsp',
    fileManagerJson : 'kindeditor/jsp/file_manager_json.jsp', 
    allowFileManager : true,
     fterCreate : function() {
     var self = this;
     K.ctrl(document, 13, function() {
      self.sync();
      //注意修改这里的form表单的名字
      document.forms['content'].submit();
     });
     K.ctrl(self.edit.doc, 13, function() {
      self.sync();
      document.forms['content'].submit();
     });
    } 
 
   });
    //prettyPrint(); 
  });

    function submit(){
    	 editor1.sync();
    	var title=$("#title").val();
    	var industry=$("#industry").val();
    	var content=$("#aaa").val();
    	var account=$("#account").val();
    	//alert(title);
    	if(title==null||title=='')
        	{
                    alert("请输入标题");
                    return;
        	}
    	if(industry==null||industry==''){
                alert("请选择行业");
                return;
        	}
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
    	var url;
    	var identity=$("#identity").val();
    	if(identity=='0')
        	url='publish_demand';
    	else
        	url='publish_view';
    	$.ajax({
             type:"post",
             url:url,
                  data:json,
                  dataType: "text",
                  success:function(data){
                        alert(data);
                        if(url=='publish_demand')
                        top.location.href="demand_view?kind=demand";
                        else
                            top.location.href="demand_view?kind=view";
                        
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
 
 
 
</head>
<body style="overflow-x: visible;">
    <!--[if gt IE 8]><!-->
    
    




    
    <!--<![endif]-->
    
    




<input type="hidden" id="account" value=${sessionScope.account}>


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
            <input type="hidden" id="identity" value=${sessionScope.identity} >
          
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
<div class="container" >
<div class="content">
<div style="margin-left: 200px;margin-top: 100px;position: relative;"><span>请输入标题</span>
<input type="text" name="title" id="title" >&nbsp;&nbsp;&nbsp; <span>行业</span>&nbsp;&nbsp;&nbsp;
<select class="m-wrap  user_input" id="industry"  style="width: 200px; padding: 2px 0;">
                                                    <option value="0">IT与通讯</option>
                                                    <option value="1">机器电子</option>
                                                    <option value="3">医疗医药保健</option>
                                                    <option value="4">建筑房地产</option>
                                                    <option value="5">金融保险投资</option>
                                                    <option value="6">出版传媒包装</option>
                                                    <option value="7">酒店旅游餐饮</option>
                                                    <option value="8">零售商贸</option>
                                                    <option value="9">能源矿产环保</option>
                                                    <option value="10">石油化工</option>
                                                    <option value="11">食品饮料酒业</option>
                                                    <option value="12">家用电器</option>
                                                    <option value="13">家用日化</option>
                                                    <option value="14">车辆交通运输</option>
                                                    <option value="15">其他</option>
                                                </select>
</div>
    <div style="margin-left: 200px;margin-top: 10px;position: relative;">
    <p style="margin-left: 300px;margin-top: 20px;position: relative;"></p>
<textarea name="content" id="aaa" >
</textarea>  
</div>
<div><input type="button" value="提交" onclick="submit()" style="margin-left: 500px;margin-top: 20px;position: relative;"></div>
 
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
     elem.className="";
});



</script>

<!-- end scripts -->









</body>
</html>