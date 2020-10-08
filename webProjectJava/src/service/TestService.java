package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.TestBean;
import dao.TestDao;

@Service
public class TestService {
	@Autowired
	private TestDao testDao;
	
	public void insert(TestBean testBean) {
		testDao.insert(testBean);
	}
	
	public void delete(TestBean testBean) {
		testDao.delete(testBean);
	}
}
