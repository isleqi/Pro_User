
function close(){
	//alert('cnm');
	$("#maskTop").css("display","none");
}

function up_clicked(){
	alert("cnm");
	$("#FileInput").click();
}


var avatarData = null;
var photo_select=false;
$(function () {
    $("#FileInput").change(function () {
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
 	   form.append('file',$("#FileInput")[0].files[0]);
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
 	            $("#tx_src").val(data);
 	             
 	             
 	          },
 	          error:function(XMLHttpRequest, textStatus, errorThrown) {  
 	              alert(XMLHttpRequest.status);  
 	              alert(XMLHttpRequest.readyState);  
 	              alert(textStatus);  
 	          }
 	      });      
     
}); 
});

function change(){
	alert("cnm");
	var tx_src=$("#tx_src").val();

	var name=$("#txtUserInfoNickName").val();
	var account=$('#user_account').val();
	var introduction=$("#user_introduction").val();
	var userPhone=$("#txtUserInfoPhone").val();
	var industry=$("#industry").val();

	 if (null == name|| "" == name) {
		       alert("昵称不能为空");
		        return;
		    }
	 if (null == userPhone || "" == userPhone) {
	        //ShowAvaterAndPhoneMessage();
		 alert("电话号码不能为空");
	        return;
	    } else {
	        var regexp = /^[1-9][0-9]{4,14}$/;
	        if (!regexp.test(userPhone)) {
	            //ShowErrorMessage("请输入正确的Phone号码")
	        	alert("请输入正确的电话号码");
	            return;
	        }
	    }
	 
	 var json={'account':account,'name':name,'industry':industry,'tx_src':tx_src,'introduction':introduction,'phone':userPhone};
	 $.ajax({
		    type: "POST",
	        url: "changeInfo",
	        dataType: "text",
	        data: json,
		 success:function(data){
			 alert(data);
			 parent.document.location.href="zone";
			 },
		 error:function(){
			 alert("cnm");
		 }
		 
		 
	 });
	
	
}


