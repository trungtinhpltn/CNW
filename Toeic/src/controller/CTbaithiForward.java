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
import dao.BaithithuDAO;

/**
 * Servlet implementation class CTbaithiForward
 */
@WebServlet("/CTbaithiForward")
public class CTbaithiForward extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private BaithithuDAO baithi;
    public CTbaithiForward() {
        super();
        baithi = new BaithithuDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String td = request.getParameter("mabaithi");
		int tId = Integer.parseInt(td);
		List<Quiz> listQ = baithi.getListQ(tId);
		request.setAttribute("tId", tId);
		request.setAttribute("listQ", listQ);
		request.setAttribute("lsize", listQ.size());
		RequestDispatcher rd = request.getRequestDispatcher("View/CTbaithi.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String td = request.getParameter("mabaithi");
		int tId = Integer.parseInt(td);
		List<Quiz> listQ = baithi.getListQ(tId);
		for(Quiz q: listQ) {
			String ua = request.getParameter("q"+q.getqSTT()+"");
			if(ua != null) {
				int as = Integer.parseInt(ua);
				q.setAs(as);
			}
		}
		request.setAttribute("tId", tId);
		request.setAttribute("listQ", listQ);
		RequestDispatcher rd = request.getRequestDispatcher("View/Ketquabaithi.jsp");
		rd.forward(request, response);
	}
}
