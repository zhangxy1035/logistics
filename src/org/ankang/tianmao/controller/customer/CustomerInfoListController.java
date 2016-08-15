package org.ankang.tianmao.controller.customer;

import java.util.List;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.ankang.tianmao.entity.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerInfoListController {
	
	@Resource
	private CustomerInfoMapperDao dao;
	public void setDao(CustomerInfoMapperDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/customer_list")
	public String execute(Model model,Page page){
		List<CustomerInfo> list = dao.findPage(page);
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
		model.addAttribute("customers", list);
		return "customer/customer_list";//进入customer/customer_list.jsp
	}

}
