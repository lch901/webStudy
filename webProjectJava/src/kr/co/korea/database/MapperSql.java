package kr.co.korea.database;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MapperSql {
	//어노테이션
	@Insert("")
	void insert_data();
	@Select("")
	void select_data();
	@Update("")
	void update_data();
	@Delete("")
	void delete_data();
}
