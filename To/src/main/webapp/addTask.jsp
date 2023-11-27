<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Task</title>
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,400;1,600&display=swap"
      rel="stylesheet"
    />
    <style>
      * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
      }
      body {
        background-image: linear-gradient(45deg, #7c9885, #b5b682);
        /* background-color: #caf0f8; */
        height: 100vh;
        width: 100vw;
        font-family: "Poppins", sans-serif;
        display: flex;
        padding: 20px 10px;
        justify-content: center;
      }
      h2 {
        margin-bottom: 20px;
      }
      .main {
        background-color: white;
        border-radius: 4px;
        padding: 10px 8px;
        display: flex;
        height: fit-content;
        align-items: center;
        flex-wrap: wrap;
        gap: 20px;
      }
      input,
      textarea {
        display: block;
        font-size: 20px;
        width: 100%;
        padding: 7px;
        margin-bottom: 10px;
      }
      input[type="submit"] {
        border-radius: 30px;
        border: none;
        padding: 10px;
        color: white;
        background-color: #0cc1fd;
      }
      input[type="submit"]:hover {
        cursor: pointer;
        background-color: rgba(255, 255, 0, 0.454);
      }
      img{
        width: 400px;
      }
    </style>
  </head>
  <body>
    <div class="main">
      <div class="imgbox">
        <img src="addtask.jpg" alt="" />
      </div>
      <div class="con">
        <h2>Task:</h2>
        <form action="addTask" method="post">
          <input type="text" name="name" placeholder="Task's Name : " />
          <textarea
            name="description"
            placeholder="Task Descriptions"
            cols="30"
            rows="10"
          ></textarea>
          <input type="submit" value="Add Task" />
        </form>
      </div>
    </div>
  </body>
</html>
