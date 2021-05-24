package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Grammar;
import dao.BaihdnguphapDAO;


@WebServlet("/ListHdBaiNguPhapForward")
public class ListHdBaiNguPhapForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BaihdnguphapDAO nguphap;
    public ListHdBaiNguPhapForward() {
        super();
        nguphap = new BaihdnguphapDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String strPageId = request.getParameter("pageId");
		int pageid = Integer.parseInt(strPageId);
		int count = 3;
		if (pageid == 1)
		{
			
		}
		else 
		{
			pageid = pageid -1;
			pageid = pageid * count +1;
		}
		List<Grammar> list = nguphap.getListCourse(pageid, count);
		int sumrow = nguphap.Countrow();
		int maxpageid= 0;
		int n = sumrow/count;
		int d = sumrow%count;
		if (d == 0)
		{
			maxpageid = n;
		}
		else
		{
			maxpageid = n+1;
		}
		request.setAttribute("maxpageid",maxpageid);
		request.setAttribute("listG",list);
		request.setAttribute("numberpage",Integer.parseInt(strPageId));
		RequestDispatcher rd = request.getRequestDispatcher("View/ListHdNguPhap.jsp");
		rd.forward(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
