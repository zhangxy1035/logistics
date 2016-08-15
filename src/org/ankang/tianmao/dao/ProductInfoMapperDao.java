package org.ankang.tianmao.dao;

import java.util.List;

import org.ankang.tianmao.entity.ProductInfo;
import org.ankang.tianmao.util.MyBatisDao;

@MyBatisDao
public interface ProductInfoMapperDao {
	public List<ProductInfo> findAll();

}
