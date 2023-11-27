package taskCode;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/newUser")
public class accountCookie extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			String s = request.getParameter("username");
			String p = request.getParameter("password");
			Cookie cn = new Cookie("uname", s);
			Cookie cp = new Cookie("pswd",p);
			response.addCookie(cn);
			response.addCookie(cp);
			response.sendRedirect(request.getContextPath() + "/hometasklist.jsp");
			out.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}