package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Sliderbanner;

public class HomeDAO {
	public static List<Sliderbanner> getSliderBanner(Connection conn){
		List<Sliderbanner> list = new ArrayList<Sliderbanner>();
		String sql = "Select * from slidebanner";
		try {
			Statement sta = conn.createStatement();
			ResultSet result = sta.executeQuery(sql);
			while(result.next()) {
				Sliderbanner sl = new Sliderbanner();
				sl.setSliderId(result.getInt(1));
				sl.setSliderName(result.getString(2));
				sl.setSliderContent(result.getString(3));
				sl.setSliderImage(result.getString(4));
				list.add(sl);
			}
			result.close();
			sta.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
