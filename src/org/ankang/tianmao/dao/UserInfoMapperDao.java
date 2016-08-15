package org.ankang.tianmao.dao;

import java.util.List;

import org.ankang.tianmao.entity.Page;
import org.ankang.tianmao.entity.UserInfo;
import org.ankang.tianmao.util.MyBatisDao;

@MyBatisDao
public interface UserInfoMapperDao {
	public UserInfo findByUsernameAndPwd(UserInfo user);//找用户和用户所对应的方法
	public List<UserInfo> findAll();//查找所以用户
	public void deleteUser(int id);//删除用户
	public void saveUser(UserInfo user);//新建用户并保存用户
	public UserInfo findByUserName(String user_name);//查找用户名
	public UserInfo findByUserId(Integer id);//查找用户id
	public void updateUserInfo(UserInfo user);//更新用户信息
	//分页操作
	public  List<UserInfo> findPage(Page page);//分页操作
	public int findRows();
 
}
