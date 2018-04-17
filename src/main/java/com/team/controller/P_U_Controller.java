package com.team.controller;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.team.mapping.DemandMap;
import com.team.mapping.OrganizationMap;
import com.team.mapping.ProfessorMap;
import com.team.mapping.StudentMap;
import com.team.mapping.UsersMap;
import com.team.model.Article;
import com.team.model.Demand;
import com.team.model.News;
import com.team.model.Organization;
import com.team.model.Post;
import com.team.model.Post_comment;
import com.team.model.Professor;
import com.team.model.Reply;
import com.team.model.Student;
import com.team.model.Users;
import com.team.service.*;
@Controller
@SessionAttributes({"tx_src","account","name","identity","phone","introduction","industry"})
public class P_U_Controller {
	//服务层注入
	@Autowired
	Acquire acquire;      //获取信息
	@Autowired
	Details details;    //获取详细信息
	@Autowired
	Search search;          //搜索信息
	@Autowired
	MailUtil mailuitl;      //发送邮件
	@Autowired
	Demand_list demand_list;   //获取需求
	@Autowired
	Publish_demand publish_demand;     //发布需求
	@Autowired
	Publish_post publish_post;       //发布帖子
	@Autowired
	Post_list post_list;            //获取帖子
	@Autowired
	Comment_reply comment_reply;   //帖子评论回复相关
	@Autowired
	Article_list article_list;       //获取专家观点
	
	
	
	
	//数据库层注入
	@Autowired
	UsersMap usersmap;              //用户表Dao
	@Autowired
	StudentMap studentmap;          //学员表Dao
	@Autowired
	DemandMap demandmap;             //需求表Dao
	@Autowired
	ProfessorMap professormap;       //专家表Dao
	@Autowired
	OrganizationMap organizationmap;  //机构表Dao
	
	
	@RequestMapping(value="/industry_news")                                    //跳转资讯页面
	public String industry_news (HttpServletRequest request,Model model) {
		String type="行业资讯";
		model.addAttribute("type", type);
		model.addAttribute("url", "http://www.chinairn.com/hyzx/moref8fff1.html");
		return "acquire";
	}
	
	//获取资讯
	@RequestMapping(value="/get_news",method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<News> get_news(String url){
		
		ArrayList<News> ans=acquire.get_info(url);
		/*for (News news : ans) {
			System.out.println(news.getTitle());
		}*/
		return ans;
	}
	
	//得到文章详细页面
	
	@RequestMapping(value="/get_news_details",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String  get_news_details(String url) {

		String  ans=details.get_details(url);
		//System.out.println(ans);
		return ans;
	}
	
	
	//跳转详情页面
	@RequestMapping(value="/details")
	public String to_details(HttpServletRequest request,Model model) {
		String url=request.getParameter("url");
		url="http://www.chinairn.com"+url;
		model.addAttribute("url",url);
		return "details";
	}
	
	
	//跳转数据页面
	@RequestMapping(value="/industry_data")
	public String industry_data (HttpServletRequest request,Model model) {
		String type="行业数据";
		model.addAttribute("type", type);
		model.addAttribute("url", "http://www.chinairn.com/data/moref21fff1.html");
		return "acquire";
	}
	
	
	///跳转搜索页面
	@RequestMapping(value="/search")
	public String search(HttpServletRequest request,Model model) {
		String dec=request.getParameter("dec");
		model.addAttribute("dec", dec);
		return "search";
	} 
	
	
	//得到搜索结构
	
	@RequestMapping(value="/get_result",method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<News> get_result(String dec,String id) throws IOException{
		//System.out.println(dec);
		ArrayList<News> a=search.get_result(dec,id);
		for (News news : a) {
			System.out.println(news.getTitle()+"  "+news.getDate()+"  "+news.getDec()+"  "+news.getImg_url()+"  "+news.getNews_url());
		}
		return a;
	}
	
	
	//发送邮件
	
	@RequestMapping(value="/SendSmsReg",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> SendSmsReg(String email) {
		
		
		//判断该邮箱是否已经注册
		if(usersmap.get_account(email)!=null) {
			Map<String,Object> json=new HashMap<>();
			json.put("code", 0);
           json.put("msg","该邮箱已存在，请重新输入");
           return json;
		}
		
		Map<String,Object> json=new HashMap<>();
		int code=(int) ((Math.random()*9+1)*100000);
		json.put("code",code);
		System.out.println(email);
     try {
		mailuitl.send(email,code);
		System.out.println(code);
		json.put("msg", "发送成功");
		return json;
     }catch (Exception e) {
    	json.put("msg", "发送失败");
 		return json;
		// TODO: handle exception
	}
	}
	
	
	//登录，加入session
	@RequestMapping(value="/LoginUser",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String loginuser(String account,String password,String rememberme,HttpSession session) {
		Users user=usersmap.get_account(account);
		if(user==null)
			return "该邮箱不存在";
		if(!user.getPassword().equals(password))
			return "密码错误";
		session.setAttribute("account", account);
		session.setAttribute("tx_src", user.getTx_src());
		session.setAttribute("name", user.getName());
		session.setAttribute("identity", user.getType());
		session.setAttribute("phone", user.getPhone());
		session.setAttribute("industry", user.getIndustry());
		System.out.println(session.getAttribute("name"));
		System.out.println(session.getAttribute("identity"));
		if(user.getType().equals("0")) {
			String introduction=studentmap.getStudent(account).getIntroduction();
			session.setAttribute("introduction", introduction);
		}
		else if(user.getType().equals("1")){
			String introduction=professormap.getProfessor(account).getIntroduction();
			session.setAttribute("introduction", introduction);
		}
		else {
			
		}

		
		return "登录成功";
	}
	
	
	//注册账号信息，并登录加入session
	@RequestMapping(value="/register",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String register(String email,String name,String password,String phone,String tx_src,String industry,String type,ModelMap map) {
	
			//System.out.println("cnm");
		Users user=new Users(email,password,name,phone,tx_src,industry,type);
		usersmap.insert_account(user);
		if(type.equals("0")) {
			Student student=new Student(email);
			studentmap.insertStudent(student);
			
		}
		else if(type.equals("1")) {
			Professor professor=new Professor(email);
			 professormap.insertProfessor(professor);

		}
		else
		{
			Organization organization=new Organization(email);
			organizationmap.insertOrganization(organization);
		}
		
		
		System.out.println(tx_src);
		
		map.addAttribute("account", email);
		map.addAttribute("tx_src", tx_src);
		map.addAttribute("name", name);
		map.addAttribute("identity", type);
		map.addAttribute("phone",phone);
		map.addAttribute("industry", industry);

		return "注册成功";
	}
	
	//上传头像
	@RequestMapping(value="/Up_tx",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String Up_tx(HttpServletRequest request) throws IllegalStateException, IOException {
		
		System.out.println("wcao");
		MultipartHttpServletRequest Mrequest=(MultipartHttpServletRequest)request;
		MultipartFile file=(MultipartFile) Mrequest.getFile("file");
		String uuid = UUID.randomUUID().toString().replaceAll("-",""); 
		String root="F:/Pro_User/";
		String filepath="touxiang/"+uuid+".jpg";
		System.out.println(root+filepath);
		File f1=new File(root+filepath);
        file.transferTo(f1);
        System.out.println(filepath);
       
		
		System.out.println("cnm");
            
		
	
		return filepath;
	}
	
	//退出登录
	@RequestMapping(value="/out",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String out_denglu(HttpSession session) {
		session.invalidate();
		return "退出成功";
	}
	
	//跳转论坛界面
	@RequestMapping(value="/forum")
	public String forum(HttpServletRequest request,Model model) {
		String type="论坛";
		model.addAttribute("type", type);
		return "forum";
	}
	
	
	//发布信息界面
	@RequestMapping(value="/publish")
	public String publish() {
		return "publish";
	}
	
	
	
	//跳转到需求或者观点页面
	@RequestMapping(value="/demand_view")                                    
	public String demand_view(HttpServletRequest request,Model model) {
		String kind=request.getParameter("kind");
		String type;
		if(kind.equals("demand"))
		type="需求";
		else
			type="专家观点";
		model.addAttribute("type", type);
		model.addAttribute("kind",kind);
		return "demand_view";
	}
	
	@RequestMapping(value="/get_demand")
	@ResponseBody
	public ArrayList<Demand> get_demand(){
		ArrayList<Demand> ans=demand_list.get_demand();
		System.out.println(ans.get(0).getUser().getTx_src());
		return ans;
		
	}
	
	@RequestMapping(value="/get_demand_account",method=RequestMethod.POST)
	@ResponseBody	
	public ArrayList<Demand> get_demand_account(String account) {
		return demand_list.get_demand_account(account);
	}
	
	@RequestMapping(value="/demand_details")
	public String demand_details(HttpServletRequest request,Model model) {
		String id=request.getParameter("id");
	
		model.addAttribute("demand_id", id);
		
		return "Demand_details";
	}
	
	@RequestMapping(value="/article_details")
	public String article_details(HttpServletRequest request,Model model) {
		String id=request.getParameter("id");
		
		model.addAttribute("article_id", id);
		
		return "article_details";
	}
	
	@RequestMapping(value="/get_article_details",method=RequestMethod.POST)
	@ResponseBody
	public Article get_article_detials(String article_id) {
		return article_list.get_article(Integer.parseInt(article_id));
	}
	
	@RequestMapping(value="/get_demand_details",method=RequestMethod.POST)
	@ResponseBody
	public Demand get_demand_details(String demand_id) {
		return demand_list.get_demand_id(Integer.parseInt(demand_id));
	}
	
	//得到专家观点
	@RequestMapping(value="/get_view")
	@ResponseBody
	public ArrayList get_view() {
		return article_list.get_articles();
		
	}
	
	@RequestMapping(value="/demand_industry")                       //按照行业得到需求
	@ResponseBody
	public ArrayList<Demand> demand_industry(String industry){
		return demand_list.demand_industry(industry);
	}
	
	//发布需求
	@RequestMapping(value="/publish_demand",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})                               //发布需求
	@ResponseBody
	public String publish_demand(String account,String content,String title,String industry) {
		Demand demand=new Demand(account,title,content,industry);
	   publish_demand.insert_demand(demand);
		return "发布成功";
	}
	
	//跳转发贴页面
	@RequestMapping(value="/publish_post")
	public String publish_post() {
		
		return "publish_post";
	}
	
	//发布观点
	@RequestMapping(value="/publish_view",method=RequestMethod.POST)
	@ResponseBody
	public String publish_view(String account,String content,String title,String industry) {
		Article article=new Article(account,title,content,industry);
		article_list.insert_article(article);
		return "发布成功";
	}
	
	//发布帖子
	@RequestMapping(value="/p_post",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String p_post(String account,String title,String content) {
		Post post=new Post(account,title,content);
		publish_post.insert_post(post);
		return "发布成功";
	}
	
	@RequestMapping(value="/get_posts")
	@ResponseBody
	public ArrayList<Post> get_posts(){
		return post_list.get_posts();
	}
	
	@RequestMapping(value="/get_post_account",method=RequestMethod.POST)
	@ResponseBody
	public ArrayList<Post> get_post_acount(String account ){
		return post_list.get_posts(account);
	}
	
	@RequestMapping(value="/post_details")
	public String post_details(HttpServletRequest request,Model model) {
		int id=Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		Post post=post_list.get_post(id);
		model.addAttribute("post", post);
		return "post_details";
	}
	
	@RequestMapping(value="/publish_comment",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String publish_comment (String from_account,String post_id,String content) {
		System.out.println("!!!!!!");
		Post_comment comment=new Post_comment(Integer.parseInt(post_id),from_account,content);
	    comment_reply.insert_comment(comment);
	    
		return "成功";
	}
	
	@RequestMapping(value="/publish_reply",method=RequestMethod.POST,produces={"text/html;charset=UTF-8;","application/json;"})
	@ResponseBody
	public String publish_reply (String from_account,String to_account,String comment_id,String post_id,String content) {
		System.out.println("!!!!!!");
		
	    Reply reply=new Reply(from_account, to_account, content, Integer.parseInt(post_id), Integer.parseInt(comment_id));
	    
	    comment_reply.insert_reply(reply);
		return "成功";
	}
	
	@RequestMapping(value="/get_comment_reply")
	@ResponseBody
	public ArrayList get_comment_reply(int post_id) {
		ArrayList<Post_comment> comments=new ArrayList<>();
		comments=comment_reply.get_comments(post_id);
		
		for (Post_comment comment : comments) {
			comment.replys=comment_reply.get_replys(comment.getId());
			System.out.println(comment.getId());
			System.out.println(comment.replys.size());
		}
		
		return comments;
	}
	
	
	@RequestMapping(value="/zone")         //个人空间
	public String zone() {
		return "zone";
	}
	
	
	@RequestMapping(value="/professor_list")
	public String professor_list() {
		return "professor_list";
	}
	
	@RequestMapping(value="/get_professors")
	@ResponseBody
	public ArrayList<Professor> getprofessors(){
		return professormap.getProfessors();
	}
	
	@RequestMapping(value="/deletePost",method=RequestMethod.POST)
	@ResponseBody
	public String  deletePost(String post_id) {
		int id=Integer.parseInt(post_id);
		post_list.delete_post(id);
		return "删除成功";
	}
	
	@RequestMapping(value="/changeInfo",method=RequestMethod.POST)
	@ResponseBody
	public String changeInfo(String account,String name,String industry,String tx_src,String introduction,String phone,HttpSession session,ModelMap map) {
		
		String identity=(String) session.getAttribute("identity");
		System.out.println(account+name+industry+tx_src+introduction+phone);
		if(identity.equals("0")) {
			Student student=new Student(account);
			student.setIntroduction(introduction);
			studentmap.updateStudent(student);

		}
		else if(identity.equals("1")) {
			Professor professor=new Professor(account);
			professor.setIntroduction(introduction);
			professormap.updateProfessor(professor);
		}
		else {
			Organization organization=new Organization(account);
			organization.setIntroduction(introduction);
			organizationmap.updateOrganization(organization);
		}
		Users user=new Users(account,name,phone,tx_src,industry);
		usersmap.update_account(user);
		map.put("tx_src",tx_src);
		map.put("name", name);
		map.put("phone",phone);
		map.put("industry",industry);
		map.put("introduction", introduction);
		/*session.setAttribute("tx_src",tx_src);
		session.setAttribute("name", name);
		session.setAttribute("phone",phone);
		session.setAttribute("industry",industry);
		session.setAttribute("introduction", introduction);*/
		System.out.println(session.getAttribute("introduction"));
		System.out.println(session.getAttribute("industry"));
		System.out.println(session.getAttribute("tx_src"));

		return "成功";
	}
	
	@RequestMapping(value="/zone2")
	public String zone2(HttpServletRequest request,Model model) {
		String account=request.getParameter("account");
		model.addAttribute("account", account);
		return "zone2";
	}
	
	@RequestMapping(value="/get_zone2")
	@ResponseBody
	public Map get_zone2(String account) {
		Map<String,String> result=new HashMap<String,String>();
		Users user=usersmap.get_account(account);
		Professor professor=professormap.getProfessor(account);
		result.put("name", user.getName());
		result.put("tx_src", user.getTx_src());
		result.put("phone",user.getPhone());
		result.put("account", user.getAccount());
		result.put("jianjie", professor.getIntroduction());
		result.put("hangye",user.getIndustry());
		return result;
	}
	
	@RequestMapping(value="/organization_list")
	public String organization_list() {
		return "organization_list";
	}
	
	@RequestMapping(value="/get_organizations")
	@ResponseBody
	public ArrayList<Organization> getorganizations(){
		return organizationmap.getOrganizations();
	}
	
}
	
















