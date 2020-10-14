package dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import beans.ContentBean;
import mapper.ContentMapper;

@Repository
public class ContentDao {
	@Autowired
	private ContentMapper contentMapper;
	
	public List<ContentBean> getContentList(int board_idx,RowBounds rowBounds){
		return contentMapper.getContentList(board_idx,rowBounds);
	}
}
