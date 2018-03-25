package com.team.service;

import java.util.ArrayList;
import java.util.Map;
import java.util.TreeMap;

import javax.json.Json;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.stereotype.Service;

import com.team.model.News;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.*;
@Service                                       //搜索资讯或者数据
public class Search extends Url_connect{
	public ArrayList<News> get_result(String dec,String id) throws IOException  {
		String d=URLEncoder.encode(dec, "utf-8");
		System.out.println(d);
		String url="http://www.chinairn.com/searchnew.aspx?PageId="+id+"&Keyword="+d;
        String html=httpRequest(url);
		//System.out.println(html);
		return htmlFiter(html);
	}

	
	public  ArrayList htmlFiter(String html) {
	ArrayList<News> items=new ArrayList<>();
	
	Document d=Jsoup.parse(html);
	Elements e=d.select(".news_list.relative.left.clearfloat");
	
	System.out.println(e.size());
	for(int i=0;i<e.size();i++) {
		Document dd=Jsoup.parse(e.get(i).toString());
		String img_url=dd.select(".news_main_info.left.clearfloat").select(".news_img").select("a").select("img").attr("src");
		img_url="http://www.chinairn.com"+img_url;
		
		String title=dd.select(".h1").text();
		
		String date=dd.select(".news_main_info.left.clearfloat").select(".main_info.right").select(".pubtime.left").text();
		
		String dec=dd.select(".news_main_info.left.clearfloat").select(".main_info.right").select(".main_txt").select(".main_txt-p").text();
		
		String news_url=dd.select(".h1").select("a").attr("href");
		
		News item=new News(title,date,dec,img_url,news_url);
		
		items.add(item);
		
		//System.out.println(title+"  "+date+"  "+dec);
	}
	
	return items;
	
   }

}
