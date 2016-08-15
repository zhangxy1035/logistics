package org.ankang.tianmao.controller.user;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.UserInfoMapperDao;
import org.ankang.tianmao.entity.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserInfoAddController {
	@Resource
	private UserInfoMapperDao dao;
	public void setDao(UserInfoMapperDao dao) {
		this.dao = dao;
	}

	//对应/user/toAdd.from请求
	@RequestMapping("/toAdd")
	public String toAdd(){
		return "user/user_add";//进入user/user_add.jsp
	}
	//对应/user/add.from,将表单对象封装成UserInfo对象传入，jsp表单中name属性要和UserInfo属性一致
	@RequestMapping("/addUser")
	public String addUser(UserInfo user){
		dao.saveUser(user);
		return "redirect:/user/user_list.from";
		
	}

}
