
//判断是否是Email
function isEmail(email) {
    var regexp = /^[a-zA-Z0-9]+([_\.\-]\w+)*@\w+([_\.]\w+)*\.\w+([_\.]\w+)*$/;
    return regexp.test(email);
}

//判断是否是手机号
function isMobile(mobile) {
    var regexp = /^(((13[0-9]{1})|(14[0-9]{1})|(15[0-9]{1})|(16[0-9]{1})|(17[0-9]{1})|(18[0-9]{1})|(19[8-9]{1}))+\d{8})$/;
    return regexp.test(mobile);
}

//查询传递参数
function GetQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
    var r = window.location.search.substr(1).match(reg);
    if (r != null)
        return unescape(r[2]);
    return null;
}

//设置cookie
function setCookie(c_name, value, expiredays) {
    var exdate = new Date()
    exdate.setDate(exdate.getDate() + expiredays)
    document.cookie = c_name + "=" + escape(value) +
    ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString())
}

//获取cookie
function getCookie(c_name) {
    if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=")
        if (c_start != -1) {
            c_start = c_start + c_name.length + 1
            c_end = document.cookie.indexOf(";", c_start)
            if (c_end == -1) c_end = document.cookie.length
            return unescape(document.cookie.substring(c_start, c_end))
        }
    }
    return ""
}

//是否是移动端
function isWapPage() {
    if (navigator.userAgent.match(/(Windows Phone|WPDesktop|iPhone|iPod|iPad|Android)/i)) {
        return true;
    }
    return false;
}

//是否是移动端（不包含Pad）
function isWapPageNoPad() {
    if (navigator.userAgent.match(/(Windows Phone|WPDesktop|iPhone|iPod|Android)/i)) {
        return true;
    }
    return false;
}

//url编码
function URLencode(sStr) {
    return sStr.replace(/\+/g, '%2B');
}