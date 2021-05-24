package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mindrot.jbcrypt.BCrypt;

import bean.Member;

public class RegisterDAO {
	public static boolean insertAccout(Connection conn, Member mem) {
		String sql = "insert into member(name,membername,memberpass,categorymemberid) values (?,?,?,?)";
		try {
			PreparedStatement preSta = conn.prepareStatement(sql);
			preSta.setString(1, mem.getmFullName());
			preSta.setString(2, mem.getmUser());
			preSta.setString(3, BCrypt.hashpw(mem.getmPass(), BCrypt.gensalt(10)));
			preSta.setInt(4, 1);
			int x = preSta.executeUpdate();
			if( x != 0 )
				return true;
			preSta.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
