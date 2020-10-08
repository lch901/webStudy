package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.TestBean;
import mapper.TestMapper;

@Repository
public class TestDao {
	@Autowired
	private TestMapper testMapper;
	
	public void insert(TestBean testBean) {
		testMapper.insert(testBean);
	}
    
	public void delete(TestBean testBean) {
		testMapper.delete(testBean);
	}
}
