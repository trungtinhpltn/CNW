package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Quiz;
import bean.Vocabulary;
import db.DBConnection;

public class BaihdtuvungDAO implements BaseDAO<Vocabulary>{

	@Override
	public List<Vocabulary> getListCourse(int start, int count) {
		Connection conn = DBConnection.getInstance();
		List<Vocabulary> list = new ArrayList<Vocabulary>();
		String sql = "select * from vocabularyguideline limit "+(start-1)+", "+count+"";
		try
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
			ResultSet rs = ptmt.executeQuery();
			while (rs.next())
			{
				Vocabulary vo = new Vocabulary();
				int vid = rs.getInt(1);
				String vname = rs.getString(2);
				vo.setvID(vid);
				vo.setvName(vname);
				list.add(vo);
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
		String sql = "select count(*) from vocabularyguideline";
		try 
		{
			PreparedStatement ptmt = conn.prepareStatement(sql);
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
	public int QR(int cId) {
		int count = 0;
		Connection conn = DBConnection.getInstance();
		String sql = "select count(*) from vocabularyquestion where vocabularyguidelineid = ?";
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
		Connection conn = DBConnection.getInstance();
		List<Quiz> listQ = new ArrayList<Quiz>();
		String sql = "select * from vocabularyquestion where vocabularyguidelineid = ? limit "+(start-1)+", "+count+"";
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
