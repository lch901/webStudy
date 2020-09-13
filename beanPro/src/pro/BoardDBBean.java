package pro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

	public class BoardDBBean {
	private static BoardDBBean instance=new BoardDBBean();//BoardDBBean
	public static BoardDBBean getInstance(){
		return instance;
	}
	
	public Connection getConnection()throws Exception{
		Context ctx=new InitialContext();//톰캣의 server.xml의 Context클래스를 가져오기
		DataSource ds=(DataSource)ctx.lookup("java:comp/env/jdbc/myoracle");//context태그에서 jdbc.myoracle을 찾기
		Connection con=ds.getConnection();
//		System.out.println("DB");
		return con;
	}
	
	//글쓰기 write
	public void insertBoard(BoardBean board)throws Exception{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		String sql=null;
		
		con=getConnection();
		sql=" ";
		rs=ps.executeQuery();
		
		//8. b_hit는 'defalut 0'으로 자동생성됨.
		int b_ip=rs.getInt(9);
		int b_ref=rs.getInt(10);
		int b_step=rs.getInt(11);
		int b_level=rs.getInt(12);
		int num=0;
		
		board.setB_ip(b_ip);
		board.setB_ref(b_ref);
		board.setB_step(b_step);
		board.setB_level(b_level);
		
		con=getConnection();
		sql=" select max(b_id) from board ";
		rs=ps.executeQuery();
		
		if(rs.next()){
			num=rs.getInt(1)+1;
		}else{
			num=1;
		}
		if(b_id!=0){
			sql=" update board set b_step=b_step+1 where b_ref=? and b_step > ? ";
			ps=con.prepareStatement(sql);
			ps.setInt(1, b_ref);
			ps.setInt(1, b_step);
			ps.executeUpdate();
			
			b_step++;
			b_level++;
		}else{
			b_ref=num;
			b_step=0;
			b_level=0;
		}
		sql="insert into board(b_id,b_name,b_email,b_title,b_content,b_pwd,"
				+ "b_date,b_ip,b_ref,b_step,b_level)values(?,?,?,?,?,?,?,?,?,?,?) ";
		ps=con.prepareStatement(sql);
		ps.setInt(1,num);
		ps.setString(2, board.getB_name());
		ps.setString(3, board.getB_email());
		ps.setString(4, board.getB_title());
		ps.setString(5, board.getB_content());
		ps.setString(6, board.getB_pwd());
		ps.setTimestamp(7, board.getB_date());
		//b_hit는 자동생성
		ps.setInt(8, );
		ps.setInt(9, );
		ps.setInt(10,);
		ps.setInt(11, );

		
		con.close();
		ps.close();
		
	}
	
	public void selectBoard(String pageNumber)throws Exception{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		ResultSet pageset=null;
		String sql="select count(b_id) from board";
		int absolute_page=1;
		int dbcount=0;//db의 글개수
		
		
		con=getConnection();
		ps=con.prepareStatement(sql);
		pageset=ps.executeQuery();
		rs=ps.executeQuery();
		if(pageset.next()){//행이 있다면
			dbcount=pageset.getInt(1);//총개수
			ps.close();
			pageset.close();
		}
		
		//생략
		String strsql="select * from board order by b_ref desc b_step asc";
		ps=con.prepareStatement(strsql);
		rs=ps.executeQuery();
		if(rs.next()){
			rs.absolute(absolute_page);
			int count=0;
			
		}
	
	}
	
	//board update
	public void updateBoard(BoardBean board)throws Exception{
		Connection con=null;
		PreparedStatement ps=null;
		String sql="";
		
		con=getConnection();
		ps=con.prepareStatement(sql);
		
		ps.execute();
		
		con.close();
		ps.close();
	}
	
	//board delete
	public int deleteBoard(int b_id,String b_pwd)throws Exception{
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		int re=-1;
		
		String sqlsel="select b_pwd from board where b_id";
		String sqldel="delete from board where b_id";
		
		con=getConnection();
		ps=con.prepareStatement(sqlsel);
		ps.setInt(1, b_id);
		rs=ps.executeQuery();
		if(rs.next()){//행이 존재하지않으면 실행하지 않게
			String pwd=rs.getString(1);
			if(!pwd.equals(b_pwd)){
				re=0;
			}else{
				ps=con.prepareStatement(sqldel);
				ps.setInt(1, b_id);
				re=ps.executeUpdate();
			}
		}
		
		con.close();
		ps.close();
		rs.close();
		
		return re;
	}
}