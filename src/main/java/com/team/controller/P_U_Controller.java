package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class P_U_Controller {
	
	@RequestMapping(value="/industry_news")
	public String industry_news () {
		return "acquire";
	}

}
