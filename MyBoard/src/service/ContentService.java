package service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import beans.ContentBean;
import dao.ContentDao;

@Service
public class ContentService {
	@Autowired
	private ContentDao contentDao;
	
	public List<ContentBean> getMainList(int board_idx){
		RowBounds rowBounds=new RowBounds(0,5);
		return contentDao.getContentList(board_idx,rowBounds);
	}
}
