package kr.co.korea.database;

import org.apache.ibatis.annotations.Select;

import kr.co.korea.beans.UserBean;

public interface UserMapper {
	@Select("select user_idx, user_name from user_table where user_id=#{user_id} and user_pw=#{user_pw}")
	UserBean getLoginUserInfo(UserBean tempLoginUserBean);

}
