package org.ankang.tianmao.controller.login;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.ankang.tianmao.dao.UserInfoMapperDao;
import org.ankang.tianmao.entity.UserInfo;

@Controller
@RequestMapping("/login")
public class CheckLoginController {
	@Resource
	private UserInfoMapperDao dao;
	public void setDao(UserInfoMapperDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/login")
	public String login(
		UserInfo user,Model model,
		HttpSession session){
		//检查验证码
		String scode = (String) 
			session.getAttribute("scode");
		System.out.println("用户输入:"+user.getCode());
		System.out.println("Session:"+scode);
		//不区分大小写
		if(!user.getCode().toUpperCase().equals(scode.toUpperCase())){
			//验证码错误
			model.addAttribute("code_error", "验证码错误");
			return "login";
		}
		//检查账号和密码
		UserInfo info = 
			dao.findByUsernameAndPwd(user);
		if(info != null){//有记录直接在数据库中查询
			session.setAttribute(
				"user", info.getUser_name());
			return "index";//进入index.jsp
		}else{//无记录,错误
			model.addAttribute(
				"error", "用户名或密码不正确");
			return "login";//进入login.jsp
		}
	}
}


