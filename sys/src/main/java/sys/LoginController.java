package sys;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uname = request.getParameter("loginName");
		String pass = request.getParameter("loginPass");

		try {
			Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres",
					"password");
			PreparedStatement stmt = con.prepareStatement("select password from products2 where username=?");
			stmt.setString(1, uname);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				if (pass.equals(rs.getString(1))) {
	//				session.setAttribute("user", uname);
					response.sendRedirect("index.html");
				}
			} else {
				System.out.println("Username does not exist");
			}
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
