package mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import beans.UserBean;

public interface UserMapper {
	@Select("select user_idx,user_name from user_table where user_id=#{user_id} and user_pw=#{user_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);
	
	@Select("select user_name from user_table where user_id=#{user_id}")
	String chkeckUserIdExist(String user_id);
	
	@Insert("insert into user_table(user_idx,user_name,user_id,user_pw)values(USER_SEQ.nextval,#{user_name},#{user_id},#{user_pw})")
	void addUserInfo(UserBean joinUserBean);
}
