<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1">

<title>

</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<meta property="qc:admins" content="26733071625165516375">
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/common.js?v=3"></script>
    <script type="text/javascript" src="js/default.js?v=1"></script>
    <script type="text/javascript" src="js/lrz.all.bundle.js"></script>
    
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

    $(document).ready(function(){    		 
        //alert("cnm!!!");
    
    }
    		  );

  //头像点击
    function avater_clicked() {
        $("#avaterFileInput").click();
      
     
    }

  
 
    
    </script>
</head>

<body class="lr" style="background-color: rgb(255, 255, 255);">
    <form method="post" action="" id="form1" class="form_style_m">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2OTY3ODA1OTZkZGBq6rWnVklKLPArhNW/WjGDZFsSNGfHowLnNR9VNFsi">
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="CA0B0334">
</div>
        
        <div id="rm_login">
           
            <div class="product">
                <img src="img/denlu.png" width="300" >
                
            </div>
            
            <div id="login_panel">
                <div class="userinput_parent">
                    <div class="user_input_text">邮箱</div>
                    <div>
                        <input type="text" class="user_input" id="txtEmail" placeholder="" placeholder-data="邮箱">
                    </div>
                </div>
                <div class="userinput_parent">
                    <div style="float: left">
                        <div class="user_input_text">密码</div>
                        <div>
                            <input type="password" class="user_input user_pw" id="txtPwd" placeholder="" placeholder-data="密码">
                        </div>
                    </div>
                    <a class="forgotpsw a_link" href="javascript:forgetpsw_clilcked()">忘记密码？</a>
                </div>
                <a class="loginbtn" href="javascript:loginbtn_clicked()">登录</a>
                <div class="remember_me_parent">
                    <a class="remember_me_link" href="javascript:remember_me_click()" title="">
                        <img id="remember_me_img" width="15" height="15" alt="" src="img/checked.png"></a>
                    <div id="remember_me_text_parent"><a href="javascript:remember_me_click()" class="remember_me a_link" title="">记住我</a></div>
                    <a href="javascript:regnow_clicked()"><img width="15" height="15" alt="" src="img/arraw.png" class="reg_now_img"></a>
                    <div><a class="reg_now a_link" href="javascript:regnow_clicked()">立即注册</a></div>
                </div>
            </div>
            
            <div id="reg_panel" style="display: none;">
                <div class="userinput_parent">
                    <div class="user_input_text">&nbsp;</div>
                    <input type="text" class="user_input" id="email" placeholder="邮箱">
                </div>
                <div class="userinput_parent no_border">
                    <div class="code_parent">
                        <div class="user_input_text">&nbsp;</div>
                        <div>
                            <input type="number" class="user_input code_input" id="code" placeholder="邮箱验证码">
                        </div>
                    </div>
                    <a id="sendsms" class="sendsms sendsms_enable a_link" href="javascript:send_sms_click()">获取验证码</a>
                </div>
                <div><a class="regbtn" href="javascript:registerbtn_clicked(0)">学员注册</a></div>
                                <div><a class="regbtn" href="javascript:registerbtn_clicked(1)">专家注册</a></div>
                                <div><a class="regbtn" href="javascript:registerbtn_clicked(2)">机构注册</a></div>
                <div><a class="login_now a_link" href="javascript:loginnow_clicked()">我已有账号，立即登录</a></div>
            </div>
            <div class="one_press_login_parent">
                <img src="img/line.png" alt="线" width="270" height="1" class="one_press_login_img">
                <div class="one_press_login">一键登录</div>
            </div>
            <div id="openplat">
                <span class="openplaticon Phonelogin_parent">
                    <a href="javascript:connectLogin('Phone');" title="使用Phone帐号登录">
                        <img width="40" height="40" src="img/iconPhone.png" alt=""></a>
                </span>
                
                <span class="openplaticon wxlogin_parent">
                    <a href="javascript:connectLogin('wx');" title="使用微信帐号登录">
                        <img width="40" height="40" src="img/iconwechat.png" alt=""></a>
                </span>
                <span class="openplaticon sinalogin_parent">
                    <a href="javascript:connectLogin('sina')" title="使用新浪微博帐号登录">
                        <img width="40" height="40" src="img/iconweibo.png" alt=""></a>
                </span>
            </div>
        </div>
        
        <div id="rm_userinfo" style="display: none;">
            <div class="txtUserInfo">上传头像、填写手机号码</div>
            <div class="avater_parent">
                <a class="avater" href="javascript:avater_clicked()">
                    <img id="avaterImg" src="img/defaultavater.png" width="80" height="80" alt=""></a>
            </div>
            
            <input type="file" id="avaterFileInput" name="file" style="display:none;" accept=".jpg,.JPG"/>
            
            <div class="userinput_parent">
                <div class="user_input_text" style="display: inline;">&nbsp;选择你的行业</div>
                
                <div class=" posirelative select-out-div">
                                                <select class="m-wrap  user_input" id="industry" value='0' style="width: 280px; padding: 2px 0;">
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
                                                <span class="select-hide-span" >
                                                    <b class="select-show-b"  ></b></span>
                                            </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="text" class="user_input" id="txtUserInfoNickName" placeholder="昵称（1-12个字符）">
                </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="password" class="user_input" id="txtUserInfoPsw" placeholder="密码（6位或以上的数字和字母）">
                </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="password" class="user_input" id="txtUserInfoPswConfirm" placeholder="确认密码（再次输入密码）">
                </div>
            </div>
            <div class="userinput_parent">
                <div class="user_input_text">&nbsp;</div>
                <div>
                    <input type="number" class="user_input" id="txtUserInfoPhone" placeholder="手机号码（便于活动等沟通）">
                </div>
            </div>
            <div><a class="save_user_info" href="javascript:save_user_info_clicked()">保存</a></div>
        </div>
        
    </form>
    


</body></html>