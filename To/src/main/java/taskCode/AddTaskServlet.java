package taskCode;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addTask")
public class AddTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
     String description = request.getParameter("description");
     String name = request.getParameter("name");
     TaskDAO.addTask(name,description);
     response.sendRedirect(request.getContextPath() + "/hometasklist.jsp");
 }
}
