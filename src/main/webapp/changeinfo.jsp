<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   
        <script src="js/jquery.js"></script>
            <script type="text/javascript" src="js/common.js?v=3"></script>
            <script type="text/javascript" src="js/lrz.all.bundle.js"></script>
        
        <script src="js/change.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    .posirelative {
    position: relative;
    //margin-left: 30px;
}
.select-out-div {
    width: 160px;
    overflow: hidden;
}
select.m-wrap {

    background-color: #ffffff;
    background-image: none !important;
    filter: none !important;
    border: 1px solid #e5e5e5;
    outline: none;
    height: 25px !important;
    line-height: 25px;
}
.select-hide-span {
    height: 25px;
    position: absolute;
    top: 0;
    border-right: 1px solid #e5e5e5;
    right: 0;
    width: 20px!important;
    z-index: 999;
}
.select-show-b {
    border-color: #888 transparent transparent transparent;
    border-style: solid;
    border-width: 5px 4px 0 4px;
    margin-left: -4px;
    margin-top: 10px;
    position: absolute;
}
    </style>
    <script>
/*     $(function(){alert(window.parent.document.getElementById("maskTop").innerHTML);})
 */   
    

    </script>
    
</head>
<body>
<input type="hidden" id="tx_src" value=${sessionScope.tx_src} >
<input type="hidden" id="phone" value=${sessionScope.phone}> 
<input type="hidden" id="user_account" value=${sessionScope.account}> 


        <div id="rm_userinfo" >
            <div class="txtUserInfo">修改个人信息</div>
            <div class="avater_parent">
                <a class="avater" href="javascript:up_clicked()">
                    <img id="avaterImg" src="img/defaultavater.png" width="80" height="80" alt=""></a>
            </div>
            
            <input type="file" id="FileInput" name="file" style="display:none;" accept=".jpg,.JPG"/>
            <div style="padding-left: 20px;padding-right: 20px">
            <div class="userinput_parent">
                <div class="user_input_text" style="display: inline;">&nbsp;选择你的行业</div>
                
                <div class=" posirelative select-out-div">
                                                <select class="m-wrap  user_input" id="industry" value=${sessionScope.industry} style="width: 280px; padding: 2px 0;">
                                                    <option value="IT与通讯">IT与通讯</option>
                                                    <option value="机器电子">机器电子</option>
                                                    <option value="医疗医药保健">医疗医药保健</option>
                                                    <option value="建筑房地产">建筑房地产</option>
                                                    <option value="金融保险投资">金融保险投资</option>
                                                    <option value="出版传媒包装">出版传媒包装</option>
                                                    <option value="酒店旅游餐饮">酒店旅游餐饮</option>
                                                    <option value="零售商贸">零售商贸</option>
                                                    <option value="能源矿产环保">能源矿产环保</option>
                                                    <option value="石油化工">石油化工</option>
                                                    <option value="食品饮料酒业">食品饮料酒业</option>
                                                    <option value="家用电器">家用电器</option>
                                                    <option value="家用日化">家用日化</option>
                                                    <option value="车辆交通运输">车辆交通运输</option>
                                                    <option value="其他">其他</option>
                                                </select>
                                                <span class="select-hide-span" >
                                                    <b class="select-show-b"  ></b></span>
                                            </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="text" class="user_input" id="txtUserInfoNickName" value=${sessionScope.name} placeholder="昵称（1-12个字符）">
                </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="text" class="user_input" id="user_introduction" placeholder="个人简介" value=${sessionScope.introduction} >
                </div>
            </div>
           
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="number" class="user_input" id="txtUserInfoPhone" placeholder="手机号码" value=${sessionScope.phone}>
                </div>
            </div>
            <div id="change"><a class="save_user_info" href="javascript:change()" style="margin: 20px auto">保存</a></div>
            <div  id="cancel" ><a class="save_user_info"  style="margin: 20px auto">取消</a></div>
            <div>
        </div>

</body>
</html>