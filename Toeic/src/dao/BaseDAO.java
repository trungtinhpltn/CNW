package dao;

import java.util.List;

import bean.Quiz;

public interface BaseDAO<T> {
	public List<T> getListCourse(int start, int count);
	public int Countrow();
	public int QR(int cId);
	public List<Quiz> getListQ(int start,int count, int cId);
}
