<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="taskCode.TaskDAO"%>
<%@ page import="taskCode.Task"%>

<%
List<Task> tasks = TaskDAO.getTasks();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Task List</title>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,400;1,600&display=swap"
	rel="stylesheet" />
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	height: 100vh;
	font-family: "Poppins", sans-serif;
	background-image: linear-gradient(45deg, #7c9885, #b5b682);
}

.nav img {
	width: 60px;
	height: auto;
	margin-left: 20px;
}

.sitedata {
	display: flex;
	align-items: center;
	gap: 20px;
	margin-bottom: 20px;
}

.pagelink {
	height: 67%;
}

.nav {
	background-image: linear-gradient(45deg, #7c9885, #b5b682);
	position: fixed;
	left: 0;
	width: 400px;
	height: 100vh;
	padding: 30px 5px;
	background-color: white;
	box-shadow: 5px 0px 15px rgb(68, 68, 68);
}

.addbtn {
	background-color: green;
	font-size: 25px;
	border-radius: 20px;
	padding: 10px 40px;
}

.addbtn a {
	color: white;
}

.addbtn:hover {
	background-color: #0cc1fd7c;
}

a {
	display: block;
	text-decoration: none;
	color: black;
}

.link {
	width: 100%;
	padding: 16px 20px;
	border-radius: 4px;
	margin-bottom: 5px;
	display: flex;
	gap: 30px;
}

.link:hover {
	background-color: #dde6ed;
}

h1 {

	padding: 0px 50px;
	font-size: 60px;
	color: white;
}

.main {
	padding: 10px 20px;
}

.todolist {
	background-color: #dde6ed;
	margin-left: 400px;
	margin-right: 10px;
	width: 68%;
	margin-bottom: 10px;
	border-radius: 5px;
	padding: 10px 20px;
	display: flex;
	gap: 20px;
	height: fit-content;
}

.tododata {
	width: 660px;
	font-size: 18px;
}

.task, input {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 20px;
	border: none;
	background-color: transparent;
	color: white;
}

.modify {
	margin: 10px;
	background-color: lightgreen;
}

.modify:hover {
	background-color: rgba(144, 238, 144, 0.461);
}

.delete {
	margin: 10px;
	background-color: lightcoral;
}

.delete:hover {
	background-color: rgba(240, 128, 128, 0.489);
}

input[type="text"] {
	border: none;
	border-radius: 10px;
	padding: 10px;
	background-color: transparent;
	font-size: 18px;
	color: black;
}
</style>
</head>
<body>
	<div class="nav">
		<div class="sitedata">

			<h1>Todo</h1>
		</div>
		<div class="pagelink">
			<div class="link">
				<box-icon type="solid" name="user" class="icons"></box-icon>
				<a href="userId.jsp">Account</a>
			</div>
			<!-- <div class="link">
				<box-icon type="solid" name="caret-left-circle"></box-icon>
				<a href="/about">Left</a>
			</div> -->
			<div class="link">
				<box-icon type="solid" name="info-circle"></box-icon>
				<a href="aboutus.jsp">About</a>
			</div>
		</div>
		<div class="addbtn">
			<a href="addTask.jsp">+ New Task</a>
		</div>
	</div>
	<div class="main">
		<%
		for (Task task : tasks) {
		%>
		<div class="todolist">
			<div class="todo">

				<h2 class="todoheading"><%=task.getName()%></h2>
				<p class="tododata">
				<form action="modifyTask" method="post">
					<input type="text" value="<%=task.getDescription()%>"
						name="description" />
			</div>
			<div class="btn">
				<div class="modify task">
					<input type="hidden" value="<%=task.getId()%>" name="taskId" /> <input
						type="submit" value="Modify" />
					</form>
				</div>
				<div class="delete task">
					<form action="deleteTask" method="post">
						<input type="hidden" value="<%=task.getId()%>" name="taskId" /> <input
							type="submit" value="Delete" />
					</form>
				</div>
			</div>
		</div>
		<%
		}
		%>
	</div>
	<script src="https://unpkg.com/boxicons@2.1.4/dist/boxicons.js"></script>
</body>
</html>
