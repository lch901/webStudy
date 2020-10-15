package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import beans.BoardBean;

public interface BoardMapper {
	@Select("select * from BOARD_INFO_TABLE")
	public List<BoardBean> getTopMenuList();
}
