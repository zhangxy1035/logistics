package org.ankang.tianmao.test;

import java.util.List;

import org.ankang.tianmao.dao.CustomerInfoMapperDao;
import org.ankang.tianmao.dao.UserInfoMapperDao;
import org.ankang.tianmao.entity.CustomerInfo;
import org.ankang.tianmao.entity.UserInfo;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class TestUserInfoDao {
	public static void main(String[] args) {
		String conf = 
		"org/ankang/tianmao/config/applicationContext.xml";
		ApplicationContext ac = 
			new ClassPathXmlApplicationContext(conf);
		//利用MapperDao接口名首字母小写,获取Dao实例
		UserInfoMapperDao dao = 
			ac.getBean("userInfoMapperDao",
					UserInfoMapperDao.class);
		UserInfo user = new UserInfo();
		UserInfo info = dao.findByUsernameAndPwd(user);
		System.out.println(info.getPassword()+info.getUser_name());
		

	}

}
