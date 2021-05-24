package controller;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import bean.Member;
import bean.Sliderbanner;
import dao.HomeDAO;
import dao.LoginDAO;
import db.DBConnection;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		RequestDispatcher rd = request.getRequestDispatcher("View/Login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = DBConnection.getInstance();
		String user = request.getParameter("usr");
		String pass = request.getParameter("pwd");
		Member mem = LoginDAO.getUser(conn, user);
		if( mem.getmID() == 0) {
			request.setAttribute("sms", "Tài khoản không tồn tại");
			RequestDispatcher rd = request.getRequestDispatcher("View/Login.jsp");
			rd.forward(request, response);
		}
		else {
			boolean isAuthen = authenticated(pass, mem.getmPass());
			if (!isAuthen) {
				request.setAttribute("sms", "Tài khoản hoặc mật khẩu không chính xác");
				RequestDispatcher rd = request.getRequestDispatcher("View/Login.jsp");
				rd.forward(request, response);
			} else if (mem.getCtlId() == 1) {
				HttpSession session = request.getSession(true);
				session.setAttribute("suser", mem.getmFullName());
				List<Sliderbanner> Slides = HomeDAO.getSliderBanner(conn);
				request.setAttribute("Slides", Slides); 
				RequestDispatcher rd = request.getRequestDispatcher("View/Home.jsp");
				rd.forward(request, response);
			} else {
				HttpSession session = request.getSession(true);
				session.setAttribute("sadmin", mem.getmFullName());
				RequestDispatcher rd = request.getRequestDispatcher("View/Admin/HomeAD.jsp");
				rd.forward(request, response);
			}
		}
	}
	
	private boolean authenticated(String passwordRaw, String password) {
		return BCrypt.checkpw(passwordRaw, password);
	}

}
