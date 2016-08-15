package org.ankang.tianmao.controller.customer;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customer")
public class CustomerInfoUpdateController{
	@Resource
	private CustomerInfoMapperDao dao;
	public void setDao(CustomerInfoMapperDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/toUpdate")
	public String toUpdate(@RequestParam(value="customer_id",required=false) Integer id,Model model){
		//利用customer_id查询到该对象
		
		CustomerInfo customer = dao.findByCustomerId(id);
		model.addAttribute("customer", customer);//放入模型中，方便页面访问key
		return "customer/customer_modi";
	}
	@RequestMapping("/updateCustomer")
	public String updateCustomerInfo(CustomerInfo customer){
		//获取更新记录
		dao.updateCustomerInfo(customer);
		return "redirect:/customer/customer_list.from";
		
	}

}
