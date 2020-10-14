package kr.co.korea.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.korea.beans.ContentBean;
import kr.co.korea.dao.BoardDao;

@Service
public class MainService {

	@Autowired
	private BoardDao boardDao;
	
	public List<ContentBean> getMainList(int board_info_idx){
		RowBounds rowBounds = new RowBounds(0, 5);//main화면에서 보이는 게시판의 글내용를 5개(Content리스트 인덱스[0],[1],[2],[3],[4])로 제한하기
		return boardDao.getContentList(board_info_idx, rowBounds);//content_idx,content_subject,content_writer_name(user_name),content_date
		
	}
}











