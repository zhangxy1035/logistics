package org.ankang.tianmao.controller.user;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.UserInfoMapperDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserInfoDeleteController {
	@Resource
	private UserInfoMapperDao dao;

	public void setDao(UserInfoMapperDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/user_delete")
	public String delete(@RequestParam(value="user_id",required=false)Integer id){
		if(id!=null){
			//µ÷ÓÃmapperdao.delete
			dao.deleteUser(id);
		}
		return "redirect:/user/user_list.from";
	}

}
