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
public class Acquire extends Url_connect {
	
	public ArrayList get_info(String url) {
		System.out.println("!!!!!");
		
		String html=httpRequest(url);

		return htmlFiter(html);
		
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
			
			String news_url=dd.select(".i_txt").select("h2").select("a").attr("href");
			
			News item=new News(title,date,dec,img_url,news_url);
			
			items.add(item);
			
			//System.out.println(title+"  "+date+"  "+dec);
		}
		
		return items;
		
	}

}

















