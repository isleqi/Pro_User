package com.team.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public abstract class Url_connect {                                  //获取url连接
	
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

}
