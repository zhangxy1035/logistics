package org.ankang.tianmao.dao;

import java.util.List;

import org.ankang.tianmao.entity.CustomerInfo;
import org.ankang.tianmao.entity.Page;
import org.ankang.tianmao.util.MyBatisDao;

//xml文件中的方法，然后在Controller中调用该方法
@MyBatisDao
public interface CustomerInfoMapperDao {
	public List<CustomerInfo> findAll();
	public void deleteCustomer(int id);
	public void saveCustomer(CustomerInfo customer);
	public CustomerInfo findByCustomerName(String customer_name);
	public CustomerInfo findByCustomerId(int id);
	public List<CustomerInfo> findByCuId(int id);//根据cuid查询客户的订单信息
	public void updateCustomerInfo(CustomerInfo customer);
	//分页操作
	public  List<CustomerInfo> findPage(Page page);
	public int findRows();

}
