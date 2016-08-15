package org.ankang.tianmao.test;

import java.util.List;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestCustomerInfoDao {
	public static void main(String[] args) {
		String conf = 
		"org/ankang/tianmao/config/applicationContext.xml";
		ApplicationContext ac = 
			new ClassPathXmlApplicationContext(conf);
		//利用MapperDao接口名首字母小写,获取Dao实例
		CustomerInfoMapperDao dao = 
			ac.getBean("customerInfoMapperDao",
					CustomerInfoMapperDao.class);
		List<CustomerInfo> list = dao.findAll();
		for(CustomerInfo cu : list){
			System.out.println(cu.getCustomer_id()+"+"+cu.getCustomer_name());
		}

	}

}
