package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import bean.BaiThi;
import bean.Quiz;
import db.DBConnection;


public class BaithithuDAO implements BaseDAO<BaiThi>{

	@Override
	public List<BaiThi> getListCourse(int start, int count) {
		Connection conn = DBConnection.getInstance();
		List<BaiThi> list = new ArrayList<BaiThi>();
		String sql = "select * from listexam limit "+(start-1)+", "+count+"";
		try
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next())
			{
				BaiThi b = new BaiThi();
				int tID = rs.getInt(1);
				String tName = rs.getString(2);
				b.settID(tID);
				b.settName(tName);
				list.add(b);
			}
			rs.close();
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int Countrow() {
		Connection conn = DBConnection.getInstance();
		String sql = "select count(*) from listexam";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if(rs.next())
				return rs.getInt(1);
			rs.close();
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public int QR(int cId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Quiz> getListQ(int start, int count, int cId) {
		return null;
	}
	public List<Quiz> getListQ(int cId) {
		Connection conn = DBConnection.getInstance();
		List<Quiz> listQ = new ArrayList<Quiz>();
		String sql = "select * from examquestion where examid = ?";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, cId);
			ResultSet rs = ptmt.executeQuery();
			int stt =1;
			while(rs.next()) {
				Quiz q = new Quiz();
				q.setQid(rs.getInt(1));
				q.setQ(rs.getString(2));
				q.setOp1(rs.getString(3));
				q.setOp2(rs.getString(4));
				q.setOp3(rs.getString(5));
				q.setOp4(rs.getString(6));
				q.setDa(rs.getInt(7));
				q.setqSTT(stt++);
				listQ.add(q);
			}
			rs.close();
			ptmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listQ;
	}
}
