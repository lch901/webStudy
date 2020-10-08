package mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import beans.TestBean;

public interface TestMapper {
	@Insert("insert into member1(code,name,id,pwd,age) values(#{code},#{name},#{id},#{pwd},#{age})")
	void insert(TestBean testBean);
    
    
    @Delete("delete from member1 where id=#{id} and pwd=#{pwd}")
	void delete(TestBean testBean);
}
