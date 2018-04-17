
/***************************************
             初始状态判断
***************************************/

/*
网页参数：

page：
    register：   注册
    forgetpsw：  忘记密码，accout=找回密码的账号

source：
    ruanmei:    通行证官网，默认值
    ithome:     IT之家（PC + Wap）
    lapin:      辣品（PC + Wap）
    itquan:     IT圈（PC + Wap）

app：
    lapin_uwp：  辣品UWP版
    ...

使用说明：
    网页嵌入（IT之家、辣品、IT圈）：
        1）构造url，例：https://my.ruanmei.com/?source=ithome
        2）将url嵌入到iframe显示，例：<iframe src="url"></iframe>
        3）用户登录之后，会使用iframe调用callback页面，参数有hash、rmlogin、rememberme
            hash：用户登录hash
            rmlogin：一般为true，指示是软媒同行证登录，接收到该参数时，刷新页面，通常为：parent.parent.location.reload();
            rememberme：指示用户勾选了记住我，需要记录cookie等下次打开自动登录，登录账号密码在hash字段中。
        4）各网站callback页面：
            IT之家：http://www.ithome.com/ithome/openplat/Phone/callBack.aspx
            辣品：
            IT圈：
        5）本页面登录之后，会调用IT之家、辣品、IT圈相关接口，来登录对应网站。
*/

//状态判断
var isWap = false;
var isPC = false;
var isApp = false;
var isIFrame = false;
var source = "ruanmei";
var app = "";
var http = "http://"
$(function () {
    //取得source参数
    source = GetQueryString("source");
    if (null == source || "" == source) {//默认值
        source = "ruanmei";
    }

    //取得app参数
    app = GetQueryString("app");
    if (null == app) {
        app = "";
    }

    //判断是否移动端、PC、App
    if (isWapPage()) {
        isWap = true;
        if ("" == app) {
            app = "wap";
        } else {
            isApp = true;
        }
    } else {
        if ("" == app || "pc" == app) {
            app = "pc";
        } else {
            isApp = true;
        }
        isPC = true;
    }

    //是否在iframe中
    if (!isApp) {
        if ("ithome" == source || "lapin" == source || "itquan" == source) {
            isIFrame = true;
        }
    }

    //判断是否是https
    if ('https:' == document.location.protocol) {
        http = 'https://'
    }
});

//根据状态设置界面
$(function () {
    //App端界面差异
    if (isApp) {
        $(".remember_me_link").hide();
        $("#remember_me_text_parent").hide();

        $(".login_now").hide();
        $("#openplat").hide();
        $(".one_press_login_parent").hide();

        $(".regbtn").css("margin-top", "60px");

        $(".fp_backbtn").hide();
    }

    //wap或者界面宽度较窄时界面调整
    window.onload = onResize;
    window.onresize = onResize;
    function onResize() {
        var useNoBorder = isWap || window.innerWidth < 640;
        if (isIFrame) {
            useNoBorder = true;
        }
        if (useNoBorder) {
            $("#form1").attr("class", "form_style_m");
            $("body").css("background-color", "#fff");
        } else {
            $("#form1").attr("class", "form_style");
            $("body").css("background-color", "#F6F6F6");
        }
    }

    //根据page参数显示相关页面
    var page = GetQueryString("page");
    if (null != page || "" != page) {
        if ("register" == page) {
            regnow_clicked();
            checkBindingRegJump();
        } else if ("forgetpsw" == page) {
            forgetpsw_clilcked();
            var account = GetQueryString("account");
            if (null != account && "" != account) {
                $("#txtFpEmail").val(account);
            }
        }
    }
})

//检查是否是绑定注册跳转
function checkBindingRegJump() {
    var bindtype = GetQueryString("bindtype");
    if (null == bindtype || "" == bindtype) {//无参数不需跳转
        return;
    }

    //手机和验证码参数不对
    var mobile = GetQueryString("mobile");
    var sendcode = GetQueryString("sendcode");
    if (null == mobile || "" == mobile || !isMobile(mobile) || null == sendcode || "" == sendcode) {
        return;
    }

    //将不需要的元素隐藏
    $(".login_now").hide();
    $(".one_press_login_parent").hide();
    $(".openplat").hide();
    $(".regbtn").html("校验并继续绑定");
    $(".save_user_info").html("保存并绑定")

    //将验证码填写到界面上，然后自动点击注册按钮
    $("#email").val(mobile);
    $("#code").val(sendcode);
    registerbtn_clicked();
}

//输入框焦点时隐藏placeholder，并显示标题
$(function () {
    //输入框焦点
    $(".user_input").focus(function () {
        if ($(this).val() == "") {
            var placeholder = $(this).attr("placeholder");
            if (placeholder != "") {
                $(this).attr("placeholder-data", placeholder);
            }
            $(this).attr("placeholder", "");
            var user_input_text = findUserInputText($(this));
            if (null != user_input_text) {
                user_input_text.html(placeholder);
            }
        }

        var userinput_parent = findUserInputParent($(this));
        if (null != userinput_parent) {
            userinput_parent.addClass("blue_border");
        }
    });

    //输入框失去焦点
    $(".user_input").blur(function () {
        if ($(this).val() == "") {
            var placeholder = $(this).attr("placeholder-data");
            $(this).attr("placeholder", placeholder);
            var user_input_text = findUserInputText($(this));
            if (null != user_input_text) {
                user_input_text.html("&nbsp;");
            }
        }
        var userinput_parent = findUserInputParent($(this));
        if (null != userinput_parent) {
            userinput_parent.removeClass("blue_border");
        }
    });

    //查找输入框标题元素
    function findUserInputText(input) {
        var prev = input.prev();
        if (null != prev && prev.hasClass("user_input_text")) {
            return prev;
        }
        prev = input.parent().prev();
        if (null != prev && prev.hasClass("user_input_text")) {
            return prev;
        }
        return null;
    }

    //找到输入框的父元素
    function findUserInputParent(input) {
        var parent = input.parent();
        if (null != parent && parent.hasClass("userinput_parent")) {
            return parent;
        }
        parent = parent.parent();
        if (null != parent && parent.hasClass("userinput_parent")) {
            return parent;
        }
        parent = parent.parent();
        if (null != parent && parent.hasClass("userinput_parent")) {
            return parent;
        }
        return null;
    }
})

//输入框回车登录
$(function () {
    $("#txtEmail").keydown(loginUserInputKeyDown);
    $("#txtPwd").keydown(loginUserInputKeyDown);
    $("#email").keydown(registerUserInputKeyDown);
    $("#code").keydown(registerUserInputKeyDown);
    $("#txtFpEmail").keydown(findPasswordUserInputKeyDown);
    $("#txtFpCode").keydown(findPasswordUserInputKeyDown);

    function loginUserInputKeyDown(e) {
        if (13 == e.which) {
            loginbtn_clicked();
        }
    }

    function registerUserInputKeyDown(e) {
        if (13 == e.which) {
            registerbtn_clicked();
        }
    }

    function findPasswordUserInputKeyDown(e) {
        if (13 == e.which) {
            fp_nextbtn_clicked();
        }
    }
})

/***************************************
                登录页面
***************************************/

function loginbtn_clicked() {
    var email = $("#txtEmail").val();
    var psw = $("#txtPwd").val();
    if (null == email || "" == email || null == psw || "" == psw) {
        ShowErrorMessage("请输入账号密码");
        return;
    }

    //记忆密码
    var rememberme = "true";
    var remember_me_img = $("#remember_me_img");
    var src = remember_me_img.attr("src");
    if (src.indexOf("un") >= 0) {
        rememberme = "false";
    }

   /* //密码转义
    psw = escape(psw);
    while (psw.indexOf("+") >= 0) {
        psw = psw.replace("+", "%2B");
    }*/
//alert("55555");
    var json={'account':email,'password':psw,'rememberme':rememberme};
    //发送验证请求
    $.ajax({
        type: "POST",
        url: "LoginUser",
        dataType: "text",
        data: json,
        error: function () {
            ShowErrorMessage("登录失败！");
        },
        success: function (data) {
        	
        	alert(data);
        	top.location.href="index.jsp"; 

/*            if (null != data && "" != data) {
                if (data.d.indexOf("ok:") == 0) {
                    var hash = data.d.replace("ok:", "");
                    if (isIFrame) {
                        var url = http + "my.ruanmei.com/openplat/callback.aspx?type=web&hash=" + hash;
                        var iframe = createHiddenIFrameElement(url, function () {
                            url = getCallbackUrl(hash, rememberme);
                            if ("" != url) {
                                createHiddenIFrameElement(url);
                            }
                        })
                    } else {
                        var url = getReturnUrl();
                        location.replace(url);
                    }
                } else {
                    ShowErrorMessage(data.d);
                }
            }*/
        }
    });
}

//记住我，点击
function remember_me_click() {
    var src = $("#remember_me_img").attr("src");
    if (src.indexOf("un") > 0) {//当前unchecked
        src = "img/checked.png";
    } else {
        src = "img/unchecked.png";
    }
    $("#remember_me_img").attr("src", src);
}

//忘记密码点击
function forgetpsw_clilcked() {
    $("#rm_login").hide();
    $("#reg_panel").hide();
    $("#rm_forgetpassword").show();
}

//立即注册点击
function regnow_clicked() {
    $("#login_panel").hide();
    $("#reg_panel").show();
}

//第三方登录
function connectLogin(type) {
    var url = "/openplat/callback.aspx?type=" + type,
        name = "",
        width = 630,
        height = 688;
    var clienttime = parseInt((new Date).getTime() / 1000)

    switch (type) {
        case "sina":
            name = "SinaLogin";
            break;
        case "Phone":
            name = "Phone";
            break;
        case "wx":
            name = "wx";
            break;
        case "taobao":
            name = "taobao";
            break;
    }

    url += "&source=" + source;
    url += "&clienttime=" + clienttime
    var l = (window.screen.width - width) / 2,
        t = (window.screen.height - height) / 2;
    var childwindow = window.open(url, name, "width=" + width + ",height=" + height + ",left=" + l + ",top=" + t + ",menubar=0,scrollbars=0,resizable=0,status=0,titlebar=0,toolbar=0,location=1");
    var timer = setInterval(function () {
        if (childwindow.closed) {
            if (isIFrame) {
                var hash = getCookie("rmlogin_hash");
                var url = getCallbackUrl(hash);
                if ("" != url) {
                    createHiddenIFrameElement(url);
                }
            } else {
                window.location.reload();
            }
            clearInterval(timer);
        }
    }, 10, null);
}

//创建一个隐藏的iframe
function createHiddenIFrameElement(url, onload) {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("style", "display:none;");
    document.body.appendChild(iframe);
    if (null != onload) {
        iframe.onload = iframe.onreadystatechange = function () {
            if (this.readyState && this.readyState != 'complete')
                return;
            else {
                onload();
            }
        };
    }
    iframe.setAttribute("src", url);
    return iframe;
}

//获取回调地址
function getCallbackUrl(hash, rememberme) {

    //记忆密码
    if (null == rememberme) {
        rememberme = "true";
        var remember_me_img = $("#remember_me_img");
        var src = remember_me_img.attr("src");
        if (src.indexOf("un") >= 0) {
            rememberme = "false";
        }
    }

    var urlbase = "";
    if ("ithome" == source) {
        urlbase = "https://www.ithome.com/ithome/openplat/Phone/callBack.aspx?hash=";
    } else if ("lapin" == source) {
        urlbase = "";
    } else if ("itquan" == source) {
        urlbase = "";
    }
    if (null != urlbase) {
        var url = urlbase + hash + "&rmlogin=true&rememberme=" + rememberme;
        return url;
    }
    return "";
}

/***************************************
                验证码相关
***************************************/

//检查发送验证码的超时时间
var sendCodeTimeOutSecond = 60;
$(function () {
    var seconds = GetSendSmsCoundDownSecond();
    if (seconds > 0) {//不到超时时间

        //注册发送验证码
        var sendsms = $("#sendsms");
        sendsms.removeClass("sendsms_enable");
        sendsms.addClass("sendsms_disable");
        sendsms.html(seconds.toString() + "秒");

        //找回密码发送验证码
        var fp_sendsms = $("#fp_sendsms");
        fp_sendsms.removeClass("sendsms_enable");
        fp_sendsms.addClass("sendsms_disable");
        fp_sendsms.html(seconds.toString() + "秒");

        sendSmsCountDown(seconds);
    }
});

//获取当前发送验证码倒计时时间，在此时间内不能再次发送
function GetSendSmsCoundDownSecond() {
    var sendsmstime = getCookie("sendsms");
    if (null != sendsmstime && "" != sendsmstime) {
        sendsmstime = new Date(sendsmstime);
        var now = new Date();
        var seconds = now.getTime() - sendsmstime.getTime();
        seconds = parseInt(seconds / 1000);
        seconds = sendCodeTimeOutSecond - seconds;
        return seconds;
    }
}

//开始发送验证码按钮的倒计时
function sendSmsCountDown(seconds) {
    var sendsms = $("#sendsms");
    var fp_sendsms = $("#fp_sendsms");
    var countdownTimer = setInterval(function () {
        seconds -= 1;

        //注册发送验证码
        if (null != sendsms) {
            sendsms.html(seconds.toString() + "秒");
            if (seconds <= 0) {
                clearInterval(countdownTimer);
                sendsms.removeClass("sendsms_disable");
                sendsms.addClass("sendsms_enable");
                sendsms.html("重新发送");
            }
        }

        //找回密码发送验证码
        if (null != fp_sendsms) {
            fp_sendsms.html(seconds.toString() + "秒");
            if (seconds <= 0) {
                clearInterval(countdownTimer);
                fp_sendsms.removeClass("sendsms_disable");
                fp_sendsms.addClass("sendsms_enable");
                fp_sendsms.html("重新发送");
            }
        }

    }, 1000, null);
}

//发送验证码点击
function send_sms_click() {
    var sendsms = $("#sendsms");
    if (sendsms.hasClass("sendsms_disable")) {
        return;
    }
    if (GetSendSmsCoundDownSecond() > 0) {
        return;
    }

    //校验邮箱
    var email = $('#email');
    
    if (!isEmail(email.val())) {
        ShowErrorMessage("请输入正确的邮箱");
        return;
    }


   

    //发送邮件
    var data = $("#data").val();
   // alert("data  "+data);
    alert(email.val());
    sendSms(email.val(),function (msg) {
        var type = null;
        if (msg.indexOf("发送成功") >= 0) {
            type = 1;

            //发送成功，开始倒计时
            var date = new Date();
            setCookie("sendsms", date.toString(), null);
            sendsms.removeClass("sendsms_enable");
            sendsms.addClass("sendsms_disable");
            sendsms.html(sendCodeTimeOutSecond.toString() + "秒");
            sendSmsCountDown(sendCodeTimeOutSecond);
        } else if (msg.indexOf("验证码不正确") >= 0) {
            $("#randomNoImg").click();
        }
        ShowErrorMessage(msg, type);
    });
}

var user_code=0;

//发送验证码
function sendSms(email,finish) {
	//alert(email)
	var json={"email":email};
    $.ajax({
        type: "POST",
        url: "SendSmsReg",
        dataType: "json",
        cache: false,
        data: json,
        success: function (data) {
        	         //alert(data.msg);
        	        // alert(data.code);
                     if(data.code!=0){
                    	 user_code=data.code;
                    msg = "邮箱验证码发送成功！";
                if (null != finish) {
                    finish(msg);
                }
                     }
                     else{
                    	 user_code=data.code;
                    	 return;
                     }
            }
        
    });
}

/***************************************
                注册
***************************************/

//立即登录点击
function loginnow_clicked() {
    var url = "Login_register.html";
    location.replace(url);
   
   }

//获得刷新url
function getReloadUrl() {
    var url = "Login_register.html";
    return url;
}
/*
//获得返回url
function getReturnUrl() {
    var url = "/usercenter/base.aspx";
    var returnurl = GetQueryString("returnurl");
    if (null != returnurl && "" != returnurl) {
        if ("hd" == returnurl) {
            url = "/usercenter/myactivities.aspx";
        } else {
            url = returnurl;
        }
    }
    return url;
}*/
//注册按钮点击


var identity;
function registerbtn_clicked(type) {
	identity=type;
	//alert("sdasdasda");
   var email = $('#email');
    var code = $('#code');
    if (!isEmail(email.val())) {
        ShowErrorMessage("请输入正确的邮箱");
        return;
    }
    var checkcode = code.val();
    if (null == checkcode || "" == checkcode) {
        ShowErrorMessage("请输入验证码");
        return;
    }
    var checkcodeOk = true;
    for (var i = 0; i < checkcode.length; ++i) {
        var c = checkcode.charAt(i);
        if (c < '0' || c > '9') {
            checkcodeOk = false;
            break;
        }
    }
    if (6 != checkcode.length || !checkcodeOk) {
        ShowErrorMessage("请输入正确的验证码");
        return;
    }
    
    if(user_code==0)
    {
        ShowErrorMessage("请重新输入邮箱");
        return;
    }else{
    	
    	if(checkcode==user_code){
    		$("#rm_login").hide();
            $("#rm_forgetpassword").hide();
            $("#rm_userinfo").show();
    		
           
    	}
    	
    	
    	
    }
    

   /* //发送验证请求
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "verification",
        dataType: "json",
        cache: false,
        data: '{email:"' + email + '"}',
        error: function () {
            ShowErrorMessage("校验验证码失败！");
        },
        success: function (data) {
            if (null != data && "" != data) {

                //下面几行为调试使用
                //$("#rm_login").hide();
                //$("#rm_userinfo").show();
                //return;

                if ("ok" == data.d) {
                    $("#rm_login").hide();
                    $("#rm_forgetpassword").hide();
                    $("#rm_userinfo").show();
                } else {
                    ShowErrorMessage(data.d);
                }
            }
        }
    });*/
    
    
}




/***************************************
              用户信息输入
***************************************/

var tx_src="touxiang/default.jpg";

var avatarData = null;
var photo_select=false;
$(function () {
    $("#avaterFileInput").change(function () {
       var filePath = $(this).prop("files");
        if (filePath.length > 0) {
            filePath = filePath[0];
            lrz(filePath, {
                width: 150,
                height: 150
            }).then(function (rst) {
                avatarData = rst.base64;
                photo_select=true;

                var avaterImg = $("#avaterImg");
                avaterImg.attr("src", avatarData);
                avaterImg.attr("style", "border-radius: 50% 50%");
            })

        } 

        
 	   var form = new FormData();
 	   form.append('file',$("#avaterFileInput")[0].files[0]);
 	  alert('cnm!!!!');
 	      $.ajax({
 	          url:"Up_tx",
 	          type:"post",
 	          data:form,
 	          datatype:"text",
 	         processData: false,
 	        contentType: false,
 	          success:function(data){
 	          	
 	             alert("上传成功！！！！");
 	             alert(data);
 	             tx_src=data;
 	             
 	          },
 	          error:function(XMLHttpRequest, textStatus, errorThrown) {  
 	              alert(XMLHttpRequest.status);  
 	              alert(XMLHttpRequest.readyState);  
 	              alert(textStatus);  
 	          }
 	      });      
     
}); 
});
//保存用户信息点击
function save_user_info_clicked() {
	//alert("44444");
	var industry=$("#industry").val();
    var userNick = $("#txtUserInfoNickName").val();
    var userPsw = $("#txtUserInfoPsw").val();
    var userPswConfirm = $("#txtUserInfoPswConfirm").val();
    var userPhone = $("#txtUserInfoPhone").val();
    if (null == userNick || "" == userNick
        || null == userPsw || "" == userPsw
        || null == userPswConfirm || "" == userPswConfirm) {
        ShowErrorMessage("昵称/密码不能为空");
        return;
    }
    if (userPsw != userPswConfirm) {
        ShowErrorMessage("输入的密码不一致");
        return;
    }
    if (null == userPhone || "" == userPhone) {
        ShowAvaterAndPhoneMessage();
        return;
    } else {
        var regexp = /^[1-9][0-9]{4,14}$/;
        if (!regexp.test(userPhone)) {
            ShowErrorMessage("请输入正确的Phone号码")
            return;
        }
    }
    

    //注册
    //alert("2222");
    var account=$("#email").val();
  
    RegisterUser(account,industry, userNick, userPsw,  userPhone,tx_src,identity);
}

//注册账号
function RegisterUser(account,industry,userNick, userPsw, userPhone,tx_src,identity) {
    var checkcode = $("#code").val();
//alert(account+industry+userNick);
    var oriPsw = userPsw;

   /* //密码转义
    userPsw = escape(userPsw);
    while (userPsw.indexOf("+") >= 0) {
        userPsw = userPsw.replace("+", "%2B");
    }

    //密码转义
    userPswConfirm = escape(userPswConfirm);
    while (userPswConfirm.indexOf("+") >= 0) {
        userPswConfirm = userPswConfirm.replace("+", "%2B");
    }*/
  
       var json={'email':account,'industry':industry,'name':userNick,'password':userPsw,'phone':userPhone,'tx_src':tx_src,'type':identity};
    
    $.ajax({
        type: "POST",
        url: "register",
        dataType: "text",
         data:json,
         error: function () {
            ShowErrorMessage("注册失败！");
        },
        success: function (data) {
        	//alert(data);
        	top.location.href="index.jsp"; 
        	
/*            if (null != data && "" != data) {
                if (data.d.indexOf("注册成功:") == 0) {
                    var tmpstr = data.d.replace("注册成功:", "");
                    var array = tmpstr.split("\f");
                    if (array.length >= 2) {
                        var userId = parseInt(array[0]);
                        var psw = array[1];
                        if (!isAndroid()) {
                            oriPsw = psw;
                        }
*/
                        //用户选择了头像，上传头像
        	
/*
                        //绑定账户
                        var bindtype = GetQueryString("bindtype");
                        if (null != bindtype && "" != bindtype) {
                            var string1 = "", string2 = "", string3 = "", string4 = "";
                            if ("Phone" == bindtype || "wx" == bindtype) {
                                string1 = GetQueryString("string1");
                            } else if ("sina" == bindtype) {
                                string1 = GetQueryString("string1");
                                string2 = GetQueryString("string2");
                            } else if ("taobao" == bindtype) {
                                string1 = GetQueryString("string1");
                                string2 = "";//暂时没有这个参数
                                string3 = GetQueryString("string3");
                                string4 = GetQueryString("string4");
                            } else {
                                return;
                            }

                            //解一下码
                            string1 = unescape(string1);
                            string2 = unescape(string2);
                            string3 = unescape(string3);
                            string4 = unescape(string4);

                            //是否是APP调用
                            var isapp = GetQueryString("isapp");
                            if (isapp == null) {
                                isapp = "false";
                            }
                            isapp = unescape(isapp);

                            $.ajax({
                                type: "POST",
                                contentType: "application/json; charset=utf-8",
                                url: "Default.aspx/BindUser",
                                dataType: "json",
                                cache: false,
                                data: '{userid:"' + escape(userId) + '", psw:"' + escape(psw) + '", bindtype:"' + escape(bindtype) + '", isapp:"' + escape(isapp) + '", string1:"' + escape(string1) + '", string2:"' + escape(string2) + '", string3:"' + escape(string3) + '", string4:"' + escape(string4) + '"}',
                                error: function () {
                                    ShowErrorMessage("绑定失败！");
                                },
                                success: function (data) {
                                    if (data.d.indexOf("ok") == 0) {
                                        var hash = data.d.replace("ok:", "");
                                        if (null != isapp && "true" == isapp) {
                                            AppLogin(hash);
                                        } else {
                                            var url = http + "my.ruanmei.com/openplat/callback.aspx?type=web&hash=" + hash;
                                            location.replace(url);
                                        }
                                    } else {
                                        ShowErrorMessage(data.d);
                                    }
                                }
                            })
                        } else {
                            //提示成功并跳转
                            showRegSuccessAndJump();
                        }
                    }

                    function showRegSuccessAndJump() {
                        var msg = "";
                        if (isApp) {
                            msg = "注册成功，正在登录，请稍候...";
                        } else {
                            msg = "注册成功，现在为您登录！";
                        }

                        ShowErrorMessage(msg, 1);
                        var jumpTimer = setInterval(function () {
                            clearInterval(jumpTimer);
                            if (isApp) {
                                RegOK(mobile, oriPsw);
                            } else {
                                var url = getReturnUrl();
                                location.replace(url);
                            }
                        }, 2500, null);
                    }
                } else {
                    ShowErrorMessage(data.d);
                }
            }*/
        }
    });
}

/***************************************
                找回密码
***************************************/

//忘记密码发送验证码，区分手机和Email
function send_sp_sms_click() {
    var mail = $("#txtFpEmail").val();
    if (null == mail || "" == mail) {
        ShowErrorMessage("请填写账号和验证码");
        return;
    }

    //发送验证码禁用状态，无需发送
    var fp_sendsms = $("#fp_sendsms");
    if (fp_sendsms.hasClass("sendsms_disable")) {
        return;
    }
    if (GetSendSmsCoundDownSecond() > 0) {//发送时间间隔太短
        return;
    }

    //校验验证码
    var validate = $("#validateFP").val();
    if ($("#validateParent").css("display") != 'none') {
        if (null == validate || "" == validate) {
            ShowErrorMessage("请输入图片中的验证码！");
            return;
        }
    }

    //根据用户输入的是Email还是手机发送验证码
    function show_msg(msg) {
        var type = null;
        if (msg.indexOf("成功") >= 0) {
            type = 1;

            //开始倒计时
            var date = new Date();
            setCookie("sendsms", date.toString(), null);
            fp_sendsms.removeClass("sendsms_enable");
            fp_sendsms.addClass("sendsms_disable");
            fp_sendsms.html(sendCodeTimeOutSecond.toString() + "秒");
            sendSmsCountDown(sendCodeTimeOutSecond);
        } else if (msg.indexOf("验证码不正确") >= 0) {
            $("#randomNoImgFP").click();
        }
        ShowErrorMessage(msg, type);
    }
    var data = $("#data").val();
    if (isEmail(mail)) {
        sendEmail(mail, validate, data, show_msg);
    } else if (isMobile(mail)) {
        sendSms(mail, false, validate, data, show_msg);
    } else {
        ShowErrorMessage("请正确填写邮箱或者手机号");
        return;
    }
}

//忘记密码下一步
function fp_nextbtn_clicked() {
    var mail = $("#txtFpEmail").val();
    var code = $("#txtFpCode").val();
    if (null == mail || "" == mail) {
        ShowErrorMessage("请填写邮箱或者手机号");
        return;
    }
    if (null == code || "" == code) {
        ShowErrorMessage("请输入验证码");
        return;
    }
    var checkcodeOk = true;
    for (var i = 0; i < code.length; ++i) {
        var c = code.charAt(i);
        if (c < '0' || c > '9') {
            checkcodeOk = false;
            break;
        }
    }
    if (6 != code.length || !checkcodeOk) {
        ShowErrorMessage("请输入正确的验证码");
        return;
    }

    //根据用户输入的是Email还是手机发送验证码
    var func = "";
    var keyname = "";
    if (isEmail(mail)) {
        func = "VerifyEmailCode";
        keyname = "mail";
    } else if (isMobile(mail)) {
        func = "VerifyMobileCode";
        keyname = "mobile";
    } else {
        ShowErrorMessage("请正确填写邮箱或者手机号");
        return;
    }

    //以下是调试代码
    //$("#fp_step1").hide();
    //$("#fp_step2").show();
    //return;

    //校验验证码
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Default.aspx/" + func,
        dataType: "json",
        cache: false,
        data: '{' + keyname + ':"' + escape(mail) + '", sendcode:"' + code + '"}',
        error: function () {
            ShowErrorMessage("校验验证码失败！");
        },
        success: function (data) {
            if (null != data && "" != data) {
                var msg = data.d;
                if ("ok" == data.d) {
                    $("#fp_step1").hide();
                    $("#fp_step2").show();
                } else {
                    ShowErrorMessage(data.d);
                }
            }
        }
    });
}

//返回按钮点击
function fp_backbtn_clicked() {
    var url = getReloadUrl();
    location.replace(url);
}

//保存新密码按钮点击
function fp_save_psw_clicked() {
    var psw = $("#txtFpPsw").val();
    var pswConfirm = $("#txtFpPswConfirm").val();
    if (null == psw || "" == psw || null == pswConfirm || "" == pswConfirm) {
        ShowErrorMessage("请输入新密码和确认密码");
        return;
    }
    if (psw != pswConfirm) {
        ShowErrorMessage("新密码和确认密码不一致");
        return;
    }

    //密码转义
    psw = escape(psw);
    while (psw.indexOf("+") >= 0) {
        psw = psw.replace("+", "%2B");
    }

    //密码确认转义
    pswConfirm = escape(pswConfirm);
    while (pswConfirm.indexOf("+") >= 0) {
        pswConfirm = pswConfirm.replace("+", "%2B");
    }

    var mail = $("#txtFpEmail").val();
    var code = $("#txtFpCode").val();
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Default.aspx/ModifyPsw",
        dataType: "json",
        cache: false,
        data: '{mail:"' + escape(mail) + '", sendcode:"' + code + '", psw:"' + psw + '", pswConfirm:"' + pswConfirm + '"}',
        error: function () {
            ShowErrorMessage("校验验证码失败！");
        },
        success: function (data) {
            if (null != data && "" != data) {
                var msg = data.d;
                if (data.d.indexOf("ok") >= 0) {
                    if (isApp) {
                        if ("undefined" != typeof ForgetPwdOK) {
                            var pswMD5 = data.d.replace("ok:", "");
                            ForgetPwdOK(mail, pswMD5);
                        } else {
                            RetrievePwdOK("修改密码成功！");
                        }
                    } else {
                        ShowErrorMessage("修改密码成功，请使用新密码登录软媒通行证！", 1);
                        var timer = setInterval(function () {
                            var url = getReloadUrl();
                            location.replace(url);
                            clearInterval(timer);
                        }, 2500, null);
                    }
                } else {
                    ShowErrorMessage(data.d);
                }
            }
        }
    });
}

//发送邮件
function sendEmail(mail, validate, data, finish) {
    $.ajax({
        type: "POST",
        contentType: "application/json; charset=utf-8",
        url: "Default.aspx/SendEmail",
        dataType: "json",
        cache: false,
        data: '{mail:"' + escape(mail) + '", validate:"' + escape(validate) + '", data:"' + escape(data) + '"}',
        success: function (data) {
            if (null != data && "" != data) {
                var msg = data.d;
                if ("ok" == data.d) {
                    msg = "发送邮件成功";
                }
                if (null != finish) {
                    finish(msg);
                }
            }
        }
    });
}

/***************************************
                错误信息
***************************************/

//显示错误信息，type：0=信息提示，1=成功，2=失败，默认为0
var errRegTimer = null;
function ShowErrorMessage(msg, type) {
    if (null == type || type > 2 || type < 0) {
        type = 0;
    }

    //图片
    var errimg = $(".error_img");
    if (null != errimg) {
        if (1 == type) {
            errimg.attr("src", "img/ok.png");
        } else {
            errimg.attr("src", "img/error.png");
        }
    }

    //文字
    var errtext = $(".error_text");
    if (null != errtext) {
        errtext.html(msg);
        errtext.removeClass("error_text_ok");
        errtext.removeClass("error_text_error");
        errtext.removeClass("error_text_info");
        switch (type) {
            case 0:
                errtext.addClass("error_text_info");
                break;
            case 1:
                errtext.addClass("error_text_ok");
                break;
            case 2:
                errtext.addClass("error_text_error");
                break;
        }
    }

    //显示
    var errmsg = $(".error_msg");
    errmsg.show();

    //自动消失
    errRegTimer = setInterval(function () {
        errmsg.hide();
        clearInterval(errRegTimer);
        errRegTimer = null;
    }, 2500, null);
}

//隐藏错误信息
function HideErrorMessage() {
    var errmsg = $(".error_msg");
    errmsg.hide();
    if (null != errRegTimer) {
        clearInterval(errRegTimer);
        errRegTimer = null;
    }
}


//点击空白区域隐藏错误信息  
$(function () {
    $(".error_mask").click(function () {
        HideErrorMessage();
    })
})

//显示未填写头像和Phone的提示
function ShowAvaterAndPhoneMessage() {
    $(".avater_Phone_msg").show();
}

//隐藏未填写头像和Phone的提示
function HideAvaterAndPhoneMessage() {
    $(".avater_Phone_msg").hide();
}

//继续保存未填写头像和Phone的提示
function ContinueAvaterAndPhoneMessage() {
    var userNick = $("#txtUserInfoNickName").val();
    var userPsw = $("#txtUserInfoPsw").val();
    var userPswConfirm = $("#txtUserInfoPswConfirm").val();
    var userPhone = $("#txtUserInfoPhone").val();
    HideAvaterAndPhoneMessage();
    RegisterUser(userNick, userPsw, userPswConfirm, userPhone);
}

/***************************************
                功能函数
***************************************/

//是否是安卓
function isAndroid() {
    if (navigator.userAgent.match(/(Android)/i)) {
        return true;
    }
    return false;
}

//获得当前浏览器
function getBrowser() {
    var userAgent = navigator.userAgent;
    var isOpera = userAgent.indexOf("Opera") > -1;
    if (isOpera) {
        return "Opera"
    }
    if (userAgent.indexOf("Firefox") > -1) {
        return "FF";
    }
    if (userAgent.indexOf("Chrome") > -1) {
        return "Chrome";
    }
    if (userAgent.indexOf("Safari") > -1) {
        return "Safari";
    }
    if (userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera) {
        return "IE";
    }
    return "";
}

$(function () {
    var browser = getBrowser();
    if ("IE" == browser) {
        jQuery.fn.placeholder = function () {
            var i = document.createElement('input'),
                placeholdersupport = 'placeholder' in i;
            if (!placeholdersupport) {
                var inputs = jQuery(this);
                inputs.each(function () {
                    var input = jQuery(this),
                        text = input.attr('placeholder'),
                        placeholder = jQuery('<div class="phTips">' + text + '</div>');
                    placeholder.css({
                        'left': 0,
                        'top': 0,
                        'margin-top': -19,
                        'margin-left': 3,
                        'height': 19,
                        'line-height': 19 + "px",
                        'position': 'relative',
                        'color': "#888",
                        'font-size': "14px"
                    });
                    placeholder.click(function () {
                        input.focus();
                    });
                    if (input.val() != "") {
                        placeholder.css({ display: 'none' });
                    } else {
                        placeholder.css({ display: 'block' });
                    }
                    placeholder.insertAfter(input);
                    input.keyup(function (e) {
                        if (jQuery(this).val() != "") {
                            placeholder.css({ display: 'none' });
                        } else {
                            placeholder.css({ display: 'inline' });
                        }
                    });
                });
            }
            return this;
        };

        jQuery('input[placeholder]').placeholder();
    }
})
