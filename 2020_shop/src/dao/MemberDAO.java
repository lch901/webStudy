package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import vo.MemberVo;

public class MemberDAO {
	public static void insertMember(MemberVo vo){
		Connection con=null;
		PreparedStatement ps=null;
		
		try {
			con=DAO.getCon();
			ps=con.prepareStatement(" insert into t_member(i_member,mid,mpw,nm,sex)values((select nvl(max(i_member),0)+1 from t_member),?,?,?,?) ");
			ps.setString(1, vo.getMid());
			ps.setString(2, vo.getMpw());
			ps.setString(3, vo.getNm());
			ps.setInt(4, vo.getSex());
			ps.execute();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DAO.close(con, ps, null);
		}
	}
	
	public static int confirmPw(MemberVo vo) {
		int result=0;
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			con=DAO.getCon();
			ps=con.prepareStatement(" select * from t_member where mid=? ");
			ps.setNString(1, vo.getMid());
			rs=ps.executeQuery();
			while(rs.next()) {
				if(vo.getMid().equals(rs.getNString("mid"))) {
					result=1;
					if(!vo.getMpw().equals(rs.getString("mpw"))) {
						result=2;
					}
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DAO.close(con, ps, rs);
		}
		return result;
	}
	
	public static MemberVo getMember(String mid) {
		MemberVo vo=new MemberVo();
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		try {
			con=DAO.getCon();
			ps=con.prepareStatement(" select * from t_member where mid=? ");
			ps.setNString(1, mid);
			rs=ps.executeQuery();
			while(rs.next()) {
				vo.setMid(rs.getString("mid"));
				vo.setMpw(rs.getString("mpw"));
				vo.setNm(rs.getString("nm"));
				vo.setSex(rs.getInt("sex"));
				vo.setR_date(rs.getString("r_date"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DAO.close(con, ps, rs);
		}
		return vo;
	}
}
