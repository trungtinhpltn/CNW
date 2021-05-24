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
import dao.BaihdtuvungDAO;


@WebServlet("/CTbaituvungForward")
public class CTbaituvungForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BaihdtuvungDAO tuvung;
    public CTbaituvungForward() {
        super();
        tuvung = new BaihdtuvungDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idv = request.getParameter("mabaitv");
		String pageId = request.getParameter("pageId");
		int pId = Integer.parseInt(pageId);
		int vId = Integer.parseInt(idv);
		List<Quiz> listQ = tuvung.getListQ(pId, 1, vId);
		int maxpageid = tuvung.QR(vId);
		request.setAttribute("maxpageid",maxpageid);
		request.setAttribute("listQ", listQ);
		request.setAttribute("numberpage", pId);
		request.setAttribute("vId", vId);
		RequestDispatcher rd = request.getRequestDispatcher("View/CTbaituvung.jsp");
		rd.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String k = request.getParameter("kq");
		int kq = Integer.parseInt(k);
		String n = request.getParameter("num");
		int num = Integer.parseInt(n);
		String m = request.getParameter("mabaitv");
		int mabai = Integer.parseInt(m);
		List<Quiz> listQ = tuvung.getListQ(num, 1, mabai);
		request.setAttribute("listQ", listQ);
		request.setAttribute("kq", kq);
		RequestDispatcher rd = request.getRequestDispatcher("View/Ketquahdtuvung.jsp");
		rd.forward(request, response);
	}
}
