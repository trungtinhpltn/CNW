package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.BaiThi;
import dao.BaithithuDAO;

/**
 * Servlet implementation class ListbaithiForward
 */
@WebServlet("/ListbaithiForward")
public class ListbaithiForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BaithithuDAO baithi;
    public ListbaithiForward() {
        super();
        baithi = new BaithithuDAO();
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
		List<BaiThi> list = baithi.getListCourse(pageid, count);
		int sumrow = baithi.Countrow();
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
		request.setAttribute("listBaiThi",list);
		request.setAttribute("numberpage",Integer.parseInt(strPageId));
		RequestDispatcher rd = request.getRequestDispatcher("View/Listbaithithu.jsp");
		rd.forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
