<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Course Enrollment - ED TECH</title>
    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <style>
      body {
        font-family: 'Segoe UI', sans-serif;
        background: url('../images/ed789.jpg') no-repeat center center fixed;
        background-size: cover;
        padding: 40px;
        text-align: center;
      }
      form {
        background: rgba(255,255,255,0.9);
        padding: 30px;
        border-radius: 10px;
        display: inline-block;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
      }
      input, select {
        padding: 10px;
        margin: 10px 0;
        width: 250px;
        border-radius: 5px;
        border: 1px solid #ccc;
      }
      input[type="submit"] {
        background-color: #2c3e50;
        color: white;
        font-weight: bold;
        border: none;
        cursor: pointer;
      }
      input[type="submit"]:hover {
        background-color: #1a252f;
      }
      .links {
        margin-top: 20px;
        font-size: 1rem;
      }
      .links a {
        margin: 0 10px;
        color: #2c3e50;
        text-decoration: none;
        font-weight: bold;
      }
      .links a:hover {
        text-decoration: underline;
      }
    </style>
    <script>
      function enrollSuccess(event) {
        event.preventDefault();            // Prevent normal form submit
        alert('Enrollment Successful!');   // Show confirmation popup
        event.target.reset();              // Clear all form fields
        return false;
      }
    </script>
</head>
<body>

    <h2>Course Enrollment Form</h2>

    <form action="/Ed-Tech/EnrollServlet" method="post" onsubmit="return enrollSuccess(event)">
        <label for="course">Select a Course:</label><br>
        <select name="course" id="course" required>
            <option value="" disabled selected>-- Choose a Course --</option>
            <option value="Java Fundamentals">Java Fundamentals</option>
            <option value="Web Development">Web Development</option>
            <option value="Python for Data Science">Python for Data Science</option>
            <option value="C Programming">C Programming</option>
            <option value="C++ Programming">C++ Programming</option>
            <option value="Android Development">Android Development</option>
            <option value="Data Structures and Algorithms">Data Structures and Algorithms</option>
            <option value="Machine Learning Basics">Machine Learning Basics</option>
            <option value="Database Management Systems">Database Management Systems</option>
            <option value="Operating Systems">Operating Systems</option>
        </select><br>

        <label for="name">Your Name:</label><br>
        <input type="text" name="name" id="name" required><br>

        <label for="email">Email:</label><br>
        <input type="email" name="email" id="email" required><br>

        <label for="contact">Contact:</label><br>
        <input type="text" name="contact" id="contact" required><br>

        <input type="submit" value="Enroll">
    </form>

 <div class="links">
 
  <a href="dashboard.jsp">Continue Using ED TECH →</a>
</div>


</body>
</html>
