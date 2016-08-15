package org.ankang.tianmao.controller.customer;

import java.util.List;

import javax.annotation.Resource;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.ankang.tianmao.entity.OrderInfo;
import org.ankang.tianmao.entity.Page;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customer")
public class CustomerInfoFindByCuIdController{
	@Resource
	private CustomerInfoMapperDao dao;
	public void setDao(CustomerInfoMapperDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/toFindOrderInfo")
	public String toUpdate(@RequestParam(value="customer_id",required=false) Integer id,Model model,Model model2){
		List<CustomerInfo> list = dao.findByCuId(id);
		String ls = "";
		List<OrderInfo> cu = null;
		for(CustomerInfo cus:list){
			cu=cus.getOrderInfos();
		}
//		System.out.println("list"+list);
//		System.out.println("cus.getOrderInfos()"+cu);
		model.addAttribute("customers", list);
		model2.addAttribute("order",cu);
		return "customer/cuandor_list";
	}

}
