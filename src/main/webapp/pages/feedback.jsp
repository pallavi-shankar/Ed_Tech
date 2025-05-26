<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback - ED TECH</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    
</head>
<body>
    <h2>Feedback Form</h2>

    <form action="/Ed-Tech/FeedbackServlet" method="post">
        Name: <input type="text" name="name" required><br><br>
        Email: <input type="email" name="email" required><br><br>
        Rating (1-5): <input type="number" name="rating" min="1" max="5" required><br><br>
        Message:<br>
        <textarea name="message" rows="5" cols="30" required></textarea><br><br>
        <input type="submit" value="Submit Feedback">
    </form>

    <br>
    <a href="login.jsp">Back to Login</a>
</body>
</html>
