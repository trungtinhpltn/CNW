package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.Member;

public class LoginDAO {
	public static Member getUser(Connection conn, String user) {
		Member mem = new Member();
		String sql = "Select * from member where membername= ?";
		try {
			PreparedStatement preSta = conn.prepareStatement(sql);
			preSta.setString(1, user);
			ResultSet result = preSta.executeQuery();
			if(result.next()) {
				mem.setmID(result.getInt("memberid"));
				mem.setmFullName(result.getString("name"));
				mem.setmUser(user);
				mem.setmPass(result.getString("memberpass"));
				mem.setCtlId(result.getInt("categorymemberid"));
			}
			result.close();
			preSta.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mem;
	}
}
