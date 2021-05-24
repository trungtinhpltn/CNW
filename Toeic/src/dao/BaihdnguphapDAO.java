package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Grammar;
import bean.Quiz;
import db.DBConnection;

public class BaihdnguphapDAO implements BaseDAO<Grammar> {
	@Override
	public List<Grammar> getListCourse(int start, int count) {
		Connection conn = DBConnection.getInstance();
		List<Grammar> list = new ArrayList<Grammar>();
		String sql = "select * from grammarguideline limit "+(start-1)+", "+count+"";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next())
			{
				Grammar gm = new Grammar();
				int gId = rs.getInt(1);
				String gName = rs.getString(2);
				gm.setgId(gId);
				gm.setgName(gName);
				list.add(gm);
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
		int count = 0;
		Connection conn = DBConnection.getInstance();
		String sql = "select count(*) from grammarguideline";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			if(rs.next())
				count = rs.getInt(1);
			rs.close();
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int QR(int cId) {
		int count = 0;
		Connection conn = DBConnection.getInstance();
		String sql = "select count(*) from grammarquestion where grammarguidelineid = ?";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, cId);
			ResultSet rs = ptmt.executeQuery();
			rs.next();
			count = rs.getInt(1);
			rs.close();
			ptmt.close();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public List<Quiz> getListQ(int start, int count, int cId) {
		List<Quiz> listQ = new ArrayList<Quiz>();
		Connection conn = DBConnection.getInstance();
		String sql = "select * from grammarquestion where grammarguidelineid = ? limit "+(start-1)+", "+count+"";
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ptmt.setInt(1, cId);
			ResultSet rs = ptmt.executeQuery();
			while(rs.next()) {
				Quiz q = new Quiz();
				q.setQid(rs.getInt(1));
				q.setQ(rs.getString(2));
				q.setOp1(rs.getString(3));
				q.setOp2(rs.getString(4));
				q.setOp3(rs.getString(5));
				q.setOp4(rs.getString(6));
				q.setDa(rs.getInt(7));
				q.setqSTT(start);
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
