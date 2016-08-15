package org.ankang.tianmao.controller.user;

import java.util.List;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.UserInfoMapperDao;
import org.ankang.tianmao.entity.UserInfo;
import org.ankang.tianmao.entity.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserInfoListController {
	
	@Resource
	private UserInfoMapperDao dao;
	public void setDao(UserInfoMapperDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/user_list")
	public String execute(Model model,Page page){
		List<UserInfo> list = dao.findPage(page);
		//计算总页数，最大页数
		int totalRows = dao.findRows();
		int totalPage=1;
		if(totalRows%page.getPageSize()==0){
			totalPage=totalRows/page.getPageSize();
		}else{
			totalPage = totalRows/page.getPageSize()+1;
		}
		page.setTotalPage(totalPage);
		model.addAttribute("page", page);
		model.addAttribute("users", list);
		return "user/user_list";//进入user/user_list.jsp
	}

}
