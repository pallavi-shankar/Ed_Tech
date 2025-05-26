<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ED TECH - Register</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      background: url('../images/ed789.jpg') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Segoe UI', sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
     
      height: 100vh;
    }

    .form-container {
      background-color: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      padding: 40px;
      border-radius: 15px;
      box-shadow: 0 8px 30px rgba(0,0,0,0.2);
      text-align: center;
      width: 350px;
    }

    .form-container h2 {
      color: white;
      margin-bottom: 25px;
    }

    .form-container input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 6px;
    }

    .form-container input[type="submit"] {
      background-color: #2c3e50;
      color: white;
      font-weight: bold;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .form-container input[type="submit"]:hover {
      background-color: #1a242f;
    }

    .form-container a {
      color: white;
      text-decoration: none;
      font-size: 14px;
    }
  </style>
</head>
<body>

  <div class="form-container">
    <h2>Register for ED TECH</h2>
    <form action="/Ed-Tech/RegisterServlet" method="post">
      <input type="text" name="uname" placeholder="Name" required>
      <input type="email" name="uemail" placeholder="Email" required>
      <input type="text" name="umobile" placeholder="Mobile" required>
      <input type="password" name="upwd" placeholder="Password" required>
      <input type="submit" value="Register">
    </form>
    <br>
    <a href="login.jsp">Already Registered? Login here</a>
  </div>

</body>
</html>
