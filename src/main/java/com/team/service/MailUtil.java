package com.team.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;



@Service                     //发送邮件
public class MailUtil {
	private String email;
	private String code;
	
//	public MailUtil(String email, String code) {
//        this.email = email;
//        this.code = code;
//    }
	
	public void send(String email,int code) throws AddressException, MessagingException {
		String from="isleqi@163.com";
		String host="smtp.163.com";
		Properties properties = System.getProperties();// 获取系统属性

        properties.setProperty("mail.smtp.host", host);// 设置邮件服务器
        properties.setProperty("mail.smtp.auth", "true");// 打开认证
        
     // 1.获取默认session对象
        Session session = Session.getDefaultInstance(properties, new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from,"isleqi1"); // 发件人邮箱账号、授权码
            }
        });
        
     // 2.创建邮件对象
        Message message = new MimeMessage(session);
        // 2.1设置发件人
       
			message.setFrom(new InternetAddress(from));
			 message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
		        // 2.3设置邮件主题
		        message.setSubject("账号激活");
		        String content = "你的邮箱验证码是"+code;
	            message.setContent(content, "text/html;charset=UTF-8");
	            // 3.发送邮件
	            Transport.send(message);
	            System.out.println("邮件成功发送!");

       



	}
	

}
