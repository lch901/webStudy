package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.UserBean;
import dao.UserDao;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
	
	public void getLoginUserInfo(UserBean tempLoginUserBean) {
		UserBean tempLoginUserBean2=userDao.getLoginUserInfo(tempLoginUserBean);
		if(tempLoginUserBean2 != null) {
			tempLoginUserBean.setUser_idx(tempLoginUserBean2.getUser_idx());
			tempLoginUserBean.setUser_name(tempLoginUserBean2.getUser_name());
			tempLoginUserBean.setUserLogin(true);//true시 로그인 성공
		}
	}
	
	public boolean checkuserIdExist(String user_id) {
		String user_name=userDao.checkUserIdExist(user_id);
		if(user_name == null) {
			return true;
		}else {
			return false;
		}
	}
	
	public void addUserInfo(UserBean joinUserBean) {
		userDao.addUserInfo(joinUserBean);
	}
}
