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
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.team.model.News;

@Service
public class Acquire {
	
	public ArrayList get_info(String url) {
		System.out.println("!!!!!");
		
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
	
	public  ArrayList htmlFiter(String html) {
		ArrayList<News> items=new ArrayList<>();
		
		Document d=Jsoup.parse(html);
		Elements e=d.select(".clearfix.item");
		System.out.println(e.size());
		for(int i=0;i<e.size();i++) {
			Document dd=Jsoup.parse(e.get(i).toString());
			String img_url=dd.select("p").select("a").select("img").attr("src");
			img_url="http://www.chinairn.com"+img_url;
			
			String title=dd.select(".i_txt").select("h2").text();
			
			String date=dd.select(".date").select("em").text();
			
			String dec=dd.select(".dec").text();
			
			News item=new News(title,date,dec,img_url);
			
			items.add(item);
			
			//System.out.println(title+"  "+date+"  "+dec);
		}
		
		return items;
		
	}

}

















