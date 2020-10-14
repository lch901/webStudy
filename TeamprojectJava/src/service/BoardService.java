package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.BoardBean;
import dao.BoardDao;

@Service
public class BoardService {
	@Autowired
	private BoardDao boardDao;
	
	public List<BoardBean> getTopMenuList(){
		return boardDao.getTopMenuList();
	}
}
