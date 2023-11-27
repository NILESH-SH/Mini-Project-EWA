<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>account</title>
    <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,400;1,600&display=swap"
    rel="stylesheet"
  />
    <style>
      body{
        font-family: "Poppins", sans-serif;
      }
      * {
        margin: 0;
        padding: 0;
        font-family: "Franklin Gothic Medium", "Arial Narrow", Arial, sans-serif;
        box-sizing: border-box;
      }
      .container {
        background-image: linear-gradient(45deg, #7c9885, #b5b682);
        height: 100vh;
        width: 100vw;
        display: flex;
        justify-content: center;
        align-items: center;
        gap: 100px;
      }
      .main {
        display: flex;
        gap: 80px;
        align-items: center;
        background-color: white;
        border-radius: 10px;
        box-shadow: 10px 10px 5px rgb(68, 68, 68);
        padding: 10px 30px 30px 30px;
      }
      .signheading {
        color: #505050;
        width: 200px;
        text-align: center;
        margin-bottom: 30px;
      }
      label {
        font-size: 13px;
        color: #858484;
      }
      input {
        display: block;
        border: none;
        padding: 10px 15px;
        border-bottom: 1px solid black;
        margin-bottom: 14px;
      }
      button {
        display: block;
        width: 100%;
        margin-bottom: 10px;
        padding: 5px 0px;
        border-radius: 8px;
        border: none;
        color: white;
        font-weight: 500;
      }
      .login:hover {
        cursor: pointer;
        opacity: 0.4;
      }
      .login {
        background-color: #0cc1fd;
        padding: 10px 0;
        width: 100%;
        font-size: 20px;
        margin: 20px 0;
        color: white;
        border-radius: 10px;
      }
      input[type='checkbox']{
        display: inline;
        margin-right: 8px;
      }
      img{
        height: 300px;
        width: auto;
      }
      .line{
        height: 100%;
        margin-top: 20px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="main">
        <img src="https://picsum.photos/id/1011/800/450" alt="" />
        <div class="line">
          <form action="newUser" method="post">
            <h2 class="signheading">New User account details</h2>
            <label for="username">Username</label>
            <input type="text" name="username" id="username" required/>
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required/>
            <input type="checkbox" required><span>Terms and Conditions</span> 
            <input type="submit" class="login" value="Get Start"></input>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>
