package taskCode;

//TaskDAO.java
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TaskDAO {
	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/tododb";
	private static final String JDBC_USER = "root";
	private static final String JDBC_PASSWORD = "sql123";

	private static final String INSERT_TASK_SQL = "INSERT INTO tasksdata (taskname,description) VALUES (?,?)";
	private static final String UPDATE_TASK_SQL = "UPDATE tasksdata SET description = ? WHERE taskid = ?";
	private static final String DELETE_TASK_SQL = "DELETE FROM tasksdata WHERE taskid = ?";
	private static final String SELECT_ALL_TASKS_SQL = "SELECT * FROM tasksdata";

	public static void addTask(String name, String description) {
//	 System.out.println("sal");
		try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_TASK_SQL)) {
			preparedStatement.setString(1, name);
			preparedStatement.setString(2, description);
			preparedStatement.executeUpdate();
//       
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void updateTask(int taskId, String newDescription) {
		try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_TASK_SQL)) {
			preparedStatement.setInt(2, taskId);
			preparedStatement.setString(1, newDescription);
			preparedStatement.executeUpdate();
			System.out.println(newDescription);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void deleteTask(int taskId) {
		try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				PreparedStatement preparedStatement = connection.prepareStatement(DELETE_TASK_SQL)) {
			preparedStatement.setInt(1, taskId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static List<Task> getTasks() {
		List<Task> tasks = new ArrayList<>();
		try (Connection connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_TASKS_SQL);
				ResultSet resultSet = preparedStatement.executeQuery()) {
			while (resultSet.next()) {
				int id = resultSet.getInt("taskid");
				String name = resultSet.getString("taskname");
				String description = resultSet.getString("description");
//             boolean status = resultSet.getBoolean("status");
//             System.out.println(name+description);
				tasks.add(new Task(id, name,description));
//             System.out.println(tasks);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tasks;
	}
}
