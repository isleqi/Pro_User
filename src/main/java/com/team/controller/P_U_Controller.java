package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.model.News;
import com.team.service.*;
@Controller
public class P_U_Controller {
	@Autowired
	Acquire acquire;
	
	@RequestMapping(value="/industry_news")
	public String industry_news (HttpServletRequest request,Model model) {
		String type="行业资讯";
		model.addAttribute("type", type);
		model.addAttribute("url", "http://www.chinairn.com/hyzx/moref8fff1.html");
		return "acquire";
	}
	
	@RequestMapping(value="/get_news",method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<News> get_news(String url){
		
		ArrayList<News> ans=acquire.get_info(url);
		/*for (News news : ans) {
			System.out.println(news.getTitle());
		}*/
		return ans;
	}
	
	@RequestMapping(value="/industry_data")
	public String industry_data (HttpServletRequest request,Model model) {
		String type="行业数据";
		model.addAttribute("type", type);
		model.addAttribute("url", "http://www.chinairn.com/data/moref21fff1.html");
		return "acquire";
	}

}
