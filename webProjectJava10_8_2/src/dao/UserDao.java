package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.UserBean;
import mapper.UserMapper;

@Repository
public class UserDao {
	
	@Autowired//의존성 주입
	private UserMapper userMapper; 
	
	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return userMapper.getLoginUserInfo(tempLoginUserBean);
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userMapper.addUserInfo(joinUserBean);
	}
	public String checkUserIdExist(String user_id) {
		return userMapper.chkeckUserIdExist(user_id);
	}
}
