package org.ankang.tianmao.controller.customer;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerInfoAddController {
	@Resource
	private CustomerInfoMapperDao dao;
	public void setDao(CustomerInfoMapperDao dao) {
		this.dao = dao;
	}

	//对应/customer/toAdd.from请求
	@RequestMapping("/toAdd")
	public String toAdd(){
		return "customer/customer_add";//进入customer/customer_add.jsp
	}
	//对应/customer/add.from,将表单对象封装成CustomerInfo对象传入，jsp表单中name属性要和CustomerInfo属性一致
	@RequestMapping("/addCustomer")
	public String addCustomer(CustomerInfo customer){
		dao.saveCustomer(customer);
		return "redirect:/customer/customer_list.from";
		
	}

}
