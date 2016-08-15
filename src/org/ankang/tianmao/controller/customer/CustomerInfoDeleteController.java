package org.ankang.tianmao.controller.customer;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customer")
public class CustomerInfoDeleteController {
	@Resource
	private CustomerInfoMapperDao dao;

	public void setDao(CustomerInfoMapperDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/customer_delete")
	public String delete(@RequestParam(value="customer_id",required=false)Integer id){
		if(id!=null){
			//µ÷ÓÃmapperdao.delete
			dao.deleteCustomer(id);
		}
		return "redirect:/customer/customer_list.from";
	}

}
