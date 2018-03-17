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
public class Details extends Url_connect{
	
	public String  get_details(String url) {
		String html=httpRequest(url);
		return htmlFiter(html);
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
