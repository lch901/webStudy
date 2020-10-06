package kr.co.korea.dao;

import org.springframework.beans.factory.annotation.Autowired;

import kr.co.korea.beans.UserBean;
import kr.co.korea.database.UserMapper;

public class UserDao {
	@Autowired
	private UserMapper userMapper;

	public UserBean getLoginUserInfo(UserBean tempLoginUserBean) {
		return userMapper.getLoginUserInfo(tempLoginUserBean);
	}
}
