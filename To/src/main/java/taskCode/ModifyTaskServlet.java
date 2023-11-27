package taskCode;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/modifyTask")
public class ModifyTaskServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int taskId = Integer.parseInt(request.getParameter("taskId"));
		String description = request.getParameter("description");
		System.out.println(description);
		TaskDAO.updateTask(taskId,description);
		response.sendRedirect(request.getContextPath() + "/hometasklist.jsp");
	}

}
