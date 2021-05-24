package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Quiz;
import dao.BaihdnguphapDAO;


@WebServlet("/CTbainguphapForward")
public class CTbainguphapForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BaihdnguphapDAO nguphap;
    public CTbainguphapForward() {
        super();
        nguphap = new BaihdnguphapDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gid = request.getParameter("mabaihdnguphap");
		String pageId = request.getParameter("pageId");
		int pId = Integer.parseInt(pageId);
		int idg = Integer.parseInt(gid);
		List<Quiz> listQ = nguphap.getListQ(pId, 1, idg);
		int maxpageid = nguphap.QR(idg);
		request.setAttribute("maxpageid",maxpageid);
		request.setAttribute("listQ", listQ);
		request.setAttribute("numberpage", pId);
		request.setAttribute("gid", idg);
		RequestDispatcher rd = request.getRequestDispatcher("View/CTbainguphap.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k = request.getParameter("kq");
		int kq = Integer.parseInt(k);
		String n = request.getParameter("num");
		int num = Integer.parseInt(n);
		String m = request.getParameter("mabaihdnguphap");
		int mabai = Integer.parseInt(m);
		List<Quiz> listQ = nguphap.getListQ(num, 1, mabai);
		request.setAttribute("listQ", listQ);
		request.setAttribute("kq", kq);
		RequestDispatcher rd = request.getRequestDispatcher("View/Ketquahdnguphap.jsp");
		rd.forward(request, response);
	}

}
