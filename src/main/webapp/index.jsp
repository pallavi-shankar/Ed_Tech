<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>ED TECH Landing</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      height: 100vh;
      background: url('images/Ed-Tech.png') no-repeat center center fixed;
      background-size: cover;
      display: flex;
      justify-content: flex-end;
      align-items: center;
      flex-direction: column;
      font-family: 'Segoe UI', sans-serif;
    }

    .button-group {
      margin-bottom: 60px;
      display: flex;
      gap: 40px;
    }

    .button-group a {
      text-decoration: none;
      padding: 20px 60px;
      border-radius: 12px;
      font-size: 22px;
      font-weight: bold;
      color: white;
      background-color: #2c3e50;
      transition: background-color 0.3s ease, transform 0.2s;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
    }

    .button-group a:hover {
      background-color: #1a242f;
      transform: scale(1.05);
    }
  </style>
</head>
<body>

  <div class="button-group">
    <a href="pages/login.jsp">Login</a>
    <a href="pages/register.jsp">Register</a>
  </div>

</body>
</html>
