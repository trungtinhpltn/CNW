package controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Member;
import dao.RegisterDAO;
import db.DBConnection;


@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("View/Register.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.getInstance();
		if (request.getCharacterEncoding() == null)
			request.setCharacterEncoding("UTF-8");
		Member m = new Member();
		String full = request.getParameter("fullName");
		String user = request.getParameter("usr");
		String pass = request.getParameter("pwd");
		m.setmFullName(full);
		m.setmUser(user);
		m.setmPass(pass);
		boolean kt = RegisterDAO.insertAccout(conn, m);
		if( kt )
			request.setAttribute("sms", "Đăng ký thành công");
		else {
			request.setAttribute("sms", "Đăng ký không thành công");
		}
		RequestDispatcher rd = request.getRequestDispatcher("View/Register.jsp");
		rd.forward(request, response);
	}

}
