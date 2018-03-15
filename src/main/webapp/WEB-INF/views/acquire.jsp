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
    <form class="search" action="" method="GET">
        <input class="search-content" type="text" placeholder="" name="word" autocomplete="off" value="">
        <div class="search-sug sug"></div>
    </form>
    

    
    <a href="javascript: void 0;" class="mobile-text-btn" id="mobileLoginBtn">-----_30847</a>
    
</div>

<div id="header" class="header ">

    <div class="column">
        <a class="header-logo" href="index.html" >
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
        
       
        
        <form class="search" action="" method="GET">
        
        
            <input class="search-content" autocomplete="off" type="text" placeholder="搜资讯" value="" name="word">
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
<script type="text/javascript" async="" src="js/collect.js"></script>
    <script type="text/javascript" src="js//9ccc3afdf5"></script>
    <script src="js/tm.js" async=""></script>
    <script type="text/javascript" id="zhuge-js" async="" src="js/zhuge-lastest.min.js"></script>
    <script async="" src="js/analytics.js"></script>
    <script src="js/nr-1071.min.js"></script>
    <script type="text/javascript">window.NREUM||(NREUM={}),__nr_require=function(e,t,n){function r(n){if(!t[n]){var o=t[n]={exports:{}};e[n][0].call(o.exports,function(t){var o=e[n][1][t];return r(o||t)},o,o.exports)}return t[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(e,t,n){function r(){}function o(e,t,n){return function(){return i(e,[f.now()].concat(u(arguments)),t?null:this,n),t?void 0:this}}var i=e("handle"),a=e(2),u=e(3),c=e("ee").get("tracer"),f=e("loader"),s=NREUM;"undefined"==typeof window.newrelic&&(newrelic=s);var p=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],d="api-",l=d+"ixn-";a(p,function(e,t){s[t]=o(d+t,!0,"api")}),s.addPageAction=o(d+"addPageAction",!0),s.setCurrentRouteName=o(d+"routeName",!0),t.exports=newrelic,s.interaction=function(){return(new r).get()};var m=r.prototype={createTracer:function(e,t){var n={},r=this,o="function"==typeof t;return i(l+"tracer",[f.now(),e,n],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],n),o)try{return t.apply(this,arguments)}catch(e){throw c.emit("fn-err",[arguments,this,e],n),e}finally{c.emit("fn-end",[f.now()],n)}}}};a("setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(e,t){m[t]=o(l+t)}),newrelic.noticeError=function(e){"string"==typeof e&&(e=new Error(e)),i("err",[e,f.now()])}},{}],2:[function(e,t,n){function r(e,t){var n=[],r="",i=0;for(r in e)o.call(e,r)&&(n[i]=t(r,e[r]),i+=1);return n}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],3:[function(e,t,n){function r(e,t,n){t||(t=0),"undefined"==typeof n&&(n=e?e.length:0);for(var r=-1,o=n-t||0,i=Array(o<0?0:o);++r<o;)i[r]=e[t+r];return i}t.exports=r},{}],4:[function(e,t,n){t.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],ee:[function(e,t,n){function r(){}function o(e){function t(e){return e&&e instanceof r?e:e?c(e,u,i):i()}function n(n,r,o,i){if(!d.aborted||i){e&&e(n,r,o);for(var a=t(o),u=m(n),c=u.length,f=0;f<c;f++)u[f].apply(a,r);var p=s[y[n]];return p&&p.push([b,n,r,a]),a}}function l(e,t){v[e]=m(e).concat(t)}function m(e){return v[e]||[]}function w(e){return p[e]=p[e]||o(n)}function g(e,t){f(e,function(e,n){t=t||"feature",y[n]=t,t in s||(s[t]=[])})}var v={},y={},b={on:l,emit:n,get:w,listeners:m,context:t,buffer:g,abort:a,aborted:!1};return b}function i(){return new r}function a(){(s.api||s.feature)&&(d.aborted=!0,s=d.backlog={})}var u="nr@context",c=e("gos"),f=e(2),s={},p={},d=t.exports=o();d.backlog=s},{}],gos:[function(e,t,n){function r(e,t,n){if(o.call(e,t))return e[t];var r=n();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(e,t,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return e[t]=r,r}var o=Object.prototype.hasOwnProperty;t.exports=r},{}],handle:[function(e,t,n){function r(e,t,n,r){o.buffer([e],r),o.emit(e,t,n)}var o=e("ee").get("handle");t.exports=r,r.ee=o},{}],id:[function(e,t,n){function r(e){var t=typeof e;return!e||"object"!==t&&"function"!==t?-1:e===window?0:a(e,i,function(){return o++})}var o=1,i="nr@id",a=e("gos");t.exports=r},{}],loader:[function(e,t,n){function r(){if(!x++){var e=h.info=NREUM.info,t=d.getElementsByTagName("script")[0];if(setTimeout(s.abort,3e4),!(e&&e.licenseKey&&e.applicationID&&t))return s.abort();f(y,function(t,n){e[t]||(e[t]=n)}),c("mark",["onload",a()+h.offset],null,"api");var n=d.createElement("script");n.src="https://"+e.agent,t.parentNode.insertBefore(n,t)}}function o(){"complete"===d.readyState&&i()}function i(){c("mark",["domContent",a()+h.offset],null,"api")}function a(){return E.exists&&performance.now?Math.round(performance.now()):(u=Math.max((new Date).getTime(),u))-h.offset}var u=(new Date).getTime(),c=e("handle"),f=e(2),s=e("ee"),p=window,d=p.document,l="addEventListener",m="attachEvent",w=p.XMLHttpRequest,g=w&&w.prototype;NREUM.o={ST:setTimeout,SI:p.setImmediate,CT:clearTimeout,XHR:w,REQ:p.Request,EV:p.Event,PR:p.Promise,MO:p.MutationObserver};var v=""+location,y={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1071.min.js"},b=w&&g&&g[l]&&!/CriOS/.test(navigator.userAgent),h=t.exports={offset:u,now:a,origin:v,features:{},xhrWrappable:b};e(1),d[l]?(d[l]("DOMContentLoaded",i,!1),p[l]("load",r,!1)):(d[m]("onreadystatechange",o),p[m]("onload",r)),c("mark",["firstbyte",u],null,"api");var x=0,E=e(4)},{}]},{},["loader"]);</script><script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"bam.nr-data.net","queueTime":0,"licenseKey":"9ccc3afdf5","agent":"","transactionName":"b1MANhcFCxcCAkdYC1YZJBcLBxENDA8cRRFMWRBMEw0AExBPR14UUVURWAkNFhA=","applicationID":"13763035","errorBeacon":"bam.nr-data.net","applicationTime":720}</script>


 <script>
 var currentpage=1;
 var type_url;
 var type;
 var temp;
 
$(document).ready(function (){
	var url=$('#url').val();
	//alert(url);
   get_info(url);
   currentpage=1;
});


  
   var flag=true;

     function goto_page(action){
         //alert(action);
        flag=false;
            if(action=='pre'){
                     if(currentpage>1){
                     currentpage=currentpage-1;
                     if(type=='hangye')  var url=type_url+temp+"-"+currentpage+".html";
                     else {
                         if(type=='hyzx')
                         var url=type_url+'/moref8fff'+currentpage+".html";
                         else
                             var url=type_url+'/moref21fff'+currentpage+".html";
                         }
                     get_info(url);
                     }
                }
            else if(action=='next'){
            	if(currentpage<20){
                    currentpage=currentpage+1;
                    if(type=='hangye')  var url=type_url+temp+"-"+currentpage+".html";
                    else {
                        if(type=='hyzx')
                        var url=type_url+'/moref8fff'+currentpage+".html";
                        else
                            var url=type_url+'/moref21fff'+currentpage+".html";
                        }
            	 get_info(url);
                           
                }
            }
                
            else if(action=='first'){
                        currentpage=1;
                        if(type=='hangye')  var url=type_url+temp+"-"+currentpage+".html";
                        else {
                            if(type=='hyzx')
                            var url=type_url+'/moref8fff'+currentpage+".html";
                            else
                                var url=type_url+'/moref21fff'+currentpage+".html";
                            }
                        get_info(url);
                }
            else{
                currentpage=20;
                if(type=='hangye')  var url=type_url+temp+"-"+currentpage+".html";
                else {
                    if(type=='hyzx')
                    var url=type_url+'/moref8fff'+currentpage+".html";
                    else
                        var url=type_url+'/moref21fff'+currentpage+".html";
                    }
               
                                get_info(url);
                }

         }

     function get_info(url){
        
        // alert("!!!");
       // alert(url);
       type_url=url.substring(0,url.lastIndexOf("/"));
       if(flag)
       temp=url.substring(url.lastIndexOf("/"),url.lastIndexOf('.'));
       flag=true;
       
       //alert(temp);
       type=url.split('/')[3];
       
       if(url.indexOf('-')==-1&&type=='hangye')
           currentpage=1;
       
      // alert(type_url); 
      // alert(type); 
         var json={'url':url};
         var item='<ul class="topic-list topics">';
         
             $.ajax({
                          data:json,
                          url:"get_news",
                          type:"post",
                          dataType: "json",
                          success:function(data){
                             // alert("!!!!");
                              //alert(JSON.stringify(data));
                             // alert(item);
                               for(var i=0;i<data.length;i++){
                            	  item=item+'<li class="a-topic"><a href=""  class="topic-tutor-link" target="_blank"><span class="topic-tutor-pic" style="background-image : url('
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
         }


     $('.inner').click(function(e){$('#type').text(e.target.innerHTML);});

</script>

<!-- end scripts -->

<script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '5fed0ea', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script><script type="text/javascript" id="">var _smq = _smq || []; _smq.push(['_setAccount', '5fed0ea', new Date()]); _smq.push(['pageview']); (function() { var sm = document.createElement('script'); sm.type = 'text/javascript'; sm.async = true; sm.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'site.cdnmaster.cn/sitemaster/collect.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(sm, s); })(); </script>








</body>
</html>