package kr.co.korea.database;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.korea.beans.DataBean;

public interface MapperSql {
	//어노테이션
	@Insert("insert into memtable(id,name,pw) values(#{id},#{name},#{pw})")
	void insert_data(DataBean dataBean);
	@Select("")
	void select_data();
	@Update("")
	void update_data();
	@Delete("")
	void delete_data();
}
