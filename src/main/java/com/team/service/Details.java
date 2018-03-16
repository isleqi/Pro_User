package com.team.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.team.model.News;

@Service
public class Details {
	
	public String  get_details(String url) {
		String html=httpRequest(url);
		return htmlFiter(html);
	}
	public  String httpRequest(String requestUrl) {
		StringBuffer buffer=null;
		BufferedReader reader=null;
		InputStream in=null;
		InputStreamReader read=null;
		HttpURLConnection conection=null;
		URL url=null;
		
		try {
			url=new URL(requestUrl);
			conection=(HttpURLConnection)url.openConnection();
			conection.setDoInput(true);
			conection.setRequestMethod("GET");
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		try {
			
			//建立流
			if(conection.getResponseCode()==504) {
				conection=(HttpURLConnection)url.openConnection();
				conection.setDoInput(true);
				conection.setRequestMethod("GET");
			}
			in=conection.getInputStream();
			read=new InputStreamReader(in, "UTF-8");
			reader=new BufferedReader(read);
			
			//读取流
			buffer=new StringBuffer();
			String str=null;
			
			while((str=reader.readLine())!=null) {
				
				buffer.append(str);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			 int code;
				try {
					code = conection.getResponseCode();
					System.out.println(code);
					System.out.println("连接超时");
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}  
				
				
			//conection=(HttpURLConnection)url.openConnection();
			
		}finally {
			
			
			    
			if(reader!=null) {
				try {
					reader.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				if(read!=null) {
					try {
						read.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
					
					if(in!=null) {
						try {
							in.close();
						} catch (IOException e) {
							e.printStackTrace();
						}
						
					}
					
				}
			}
			
		}
		
		return buffer.toString();
	
	}
	
	public  String  htmlFiter(String html) {
		Document d=Jsoup.parse(html);
		Document dd=Jsoup.parse(d.select(".bw.wbg.pt30").select(".sw.clearfix").select(".col_l.irnpage_main.irndt").toString());
		String content="<dl class=\".mt3 irndt_cont\">"+dd.select(".mt3.irndt_cont").html()+"</dl>";
		String title="<h1 class=\"mt3\">"+d.select("h1").html()+"</h1>";
		String msg="<ul class=\"mt3 clearfix irndt_msg\">"+d.select(".mt3.clearfix.irndt_msg").select(".col_l.irndt_date").html()+"</ul>";
		String ans="<div class=\"bw wbg pt30\">\r\n" + 
				"        <div class=\"sw clearfix\">\r\n" + 
				"            <div class=\"col_l irnpage_main irndt\">"+title+msg+content+"</div></div></div>";
		return ans;
	}

}
