<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.*,jakarta.servlet.*" %>
<%
if (session == null || session.getAttribute("username") == null) {
  response.sendRedirect("login.jsp");
  return;
}
%>

<!DOCTYPE html>

<html>
<head>
  <meta charset="UTF-8">
  <title>ED TECH Dashboard</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      scroll-behavior: smooth;
    }

    body {
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f4f4;
    }

    header {
      background-color: #2c3e50;
      color: white;
      padding: 20px 0;
      text-align: center;
      font-size: 1.6rem;
    }

    nav {
      background-color: #34495e;
      position: sticky;
      top: 0;
      z-index: 1000;
    }

    .nav-container {
      display: flex;
      justify-content: space-between; /* logo left, menu right */
      align-items: center;
      max-width: 1200px;
      margin: auto;
      padding: 0 30px;
      height: 60px;
    }

    .logo {
      color: white;
      font-size: 1.7rem;
      font-weight: bold;
    }

    .menu-links {
      display: flex;
      gap: 10px;
    }

    .menu-links a {
      color: white;
      padding: 16px 20px;
      text-decoration: none;
      font-weight: bold;
      font-size: 1.05rem;
    }

    .menu-links a:hover {
      background-color: #1a252f;
    }

    section {
      height: auto;
      padding: 60px 40px;
      text-align: center;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      section:first-of-type {

 
}
      
    }

    section h2 {
      font-size: 2.8rem;
      margin-bottom: 30px;
      color: #2c3e50;
    }

    section p, ul.faq li {
      font-size: 1.2rem;
      max-width: 1000px;
      line-height: 1.8;
    }

    #brand {
      font-size: 3.2rem;
      font-weight: bold;
      color: #2c3e50;
      text-align: center;
      margin: 40px 0 20px;
    }

    .course-box {
    position: relative;
    padding: 20px;
    background: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    transition: transform 0.2s;
  }

  .course-box:hover {
    transform: scale(1.02);
  }

  .course-box::after {
    content: "Interested? Please Enroll";
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
    background-color: #333;
    color: #fff;
    padding: 6px 12px;
    border-radius: 5px;
    font-size: 0.9rem;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease;
    white-space: nowrap;
  }

  .course-box:hover::after {
    opacity: 1;
  }

    .btn-enroll {
      display: inline-block;
      padding: 16px 30px;
      background-color: #2c3e50;
      color: white;
      border-radius: 12px;
      text-decoration: none;
      font-weight: bold;
      margin-top: 30px;
      font-size: 1.1rem;
      transition: background-color 0.3s ease;
    }

    .btn-enroll:hover {
      background-color: #1a242f;
    }

    ul.faq {
      list-style: none;
      padding: 0;
      max-width: 1000px;
    }

    ul.faq li {
      margin-bottom: 25px;
      text-align: left;
    }

    ul.faq li strong {
      color: #2c3e50;
      font-size: 1.3rem;
    }

    footer {
      text-align: center;
      padding: 25px;
      background-color: #eee;
      font-size: 1rem;
      color: #555;
    }

    a {
      color: #2c3e50;
    }
    
    
  </style>
</head>
<body>

  <header>
    Welcome, <%= session.getAttribute("username") %> 👋
  </header>

  <nav>
    <div class="nav-container">
      <div class="logo">ED TECH</div>
      <div class="menu-links">
        <a href="#about">About</a>
        <a href="#courses">Courses</a>
        <a href="#skills">Skill Set</a>
        <a href="#faq">FAQ</a>
        <a href="#contact">Contact</a>
        <a href="/Ed-Tech/LogoutServlet">Logout</a>
      </div>
    </div>
  </nav>

<section id="about" style="max-width: 1200px; margin: auto; padding: 0 20px; margin-top: 48px;">
  <h2>About Us</h2>
  
  <p style="text-align: justify; max-width: 1200px; margin: auto; margin-bottom: 20px;">
    ED-TECH is a modern e-learning platform designed to support individuals aiming to build successful careers in the tech industry. 
    We help learners become skilled IT professionals through expert-led guidance, structured course pathways, and a rich library of reference materials, including high-quality videos. 
    Our platform ensures a practical, industry-aligned learning experience with tools like skill mapping to track progress and develop real-world competencies.

    We believe that education should be accessible, engaging, and tailored to each learner’s needs. Whether you are starting from scratch or looking to enhance your existing skills, ED-TECH offers personalized course recommendations and real-time progress tracking to help you achieve your goals efficiently.
  </p>

<p style="text-align: justify; font-family: inherit; font-size: 1.5rem; line-height: 2.0; margin-bottom: 10px;">
  What ED-TECH provides:
</p>
<ul style="list-style: none; padding-left: 1.2em; text-align: justify; font-family: inherit; font-size: 1rem; line-height: 1.6; margin-top: 0;">
  <li style="margin-bottom: 10px;">🎓 <strong>Comprehensive Courses:</strong> Carefully curated programs to build your skills step-by-step.</li>
  <li style="margin-bottom: 10px;">📊 <strong>Skill Mapping & Videos:</strong> Track your progress with interactive skill maps and high-quality video tutorials.</li>
  <li style="margin-bottom: 10px;">❓ <strong>FAQ Section:</strong> Quick answers to common questions to keep your learning smooth.</li>
  <li style="margin-bottom: 10px;">📞 <strong>Contact Support:</strong> Easy ways to connect with our team whenever you have doubts or need help.</li>
  <li style="margin-bottom: 10px;">🤝 <strong>Community Support:</strong> Join thousands of learners transforming their careers with us.</li>
</ul>
  </p>
</section>





<section id="courses" style="padding: 60px 20px; background-color: #f9f9f9;">
  <h2 style="text-align: center; font-size: 2.5rem; margin-bottom: 40px;">Our Courses</h2>

  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; max-width: 1200px; margin: auto;">

    <div class="course-box">
      <h3>Java Fundamentals</h3>
      <p>Master Java programming with real-world examples and exercises.</p>
    </div>

    <div class="course-box">
      <h3>Web Development</h3>
      <p>Learn HTML, CSS, JavaScript and backend integration to build full websites.</p>
    </div>

    <div class="course-box">
      <h3>Python for Data Science</h3>
      <p>Explore Python, Pandas, NumPy, and build ML-ready datasets.</p>
    </div>

    <div class="course-box">
      <h3>Cloud Computing Basics</h3>
      <p>Understand cloud infrastructure, services, and deployment models.</p>
    </div>

    <div class="course-box">
      <h3>Cybersecurity Essentials</h3>
      <p>Learn the fundamentals of network security, encryption, and threat prevention.</p>
    </div>

    <div class="course-box">
      <h3>Mobile App Development</h3>
      <p>Build Android and iOS apps using modern frameworks and best practices.</p>
    </div>

    <div class="course-box">
      <h3>Artificial Intelligence & Machine Learning</h3>
      <p>Introduction to AI concepts, algorithms, and hands-on ML model building.</p>
    </div>

    <div class="course-box">
      <h3>DevOps and CI/CD</h3>
      <p>Learn automation, continuous integration, and deployment pipelines.</p>
    </div>

    <div class="course-box">
      <h3>Blockchain Technology</h3>
      <p>Explore blockchain basics, smart contracts, and decentralized apps.</p>
    </div>

    <div class="course-box">
      <h3>Big Data Analytics</h3>
      <p>Handle large datasets using Hadoop, Spark, and data visualization tools.</p>
    </div>

  </div>
  
  <a href="enroll.jsp" class="btn-enroll">Enroll in a Course</a>
</section>

<section id="skills" style="padding: 60px 20px; background-color: #f9f9f9;">
  <h2 style="text-align: center; font-size: 2.5rem; margin-bottom: 40px;">Skill Set – Learn & Grow</h2>
  <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 20px; max-width: 1200px; margin: auto;">
    
    <div>
      <a href="https://www.youtube.com/watch?v=GoXwIVyNvX0" target="_blank">
        <img src="https://img.youtube.com/vi/GoXwIVyNvX0/0.jpg" alt="Java Course" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Java Full Course – freeCodeCamp</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=3JluqTojuME" target="_blank">
        <img src="https://img.youtube.com/vi/3JluqTojuME/0.jpg" alt="Web Dev" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Web Dev – Programming with Mosh</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=LHBE6Q9XlzI" target="_blank">
        <img src="https://img.youtube.com/vi/LHBE6Q9XlzI/0.jpg" alt="Python DS" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Python for Data Science – Krish Naik</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=2LaAJq1lB1Q" target="_blank">
        <img src="https://img.youtube.com/vi/2LaAJq1lB1Q/0.jpg" alt="Cloud Computing" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Cloud Computing Basics – Simplilearn</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=inWWhr5tnEA" target="_blank">
        <img src="https://img.youtube.com/vi/inWWhr5tnEA/0.jpg" alt="Cybersecurity" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Cybersecurity Essentials – Simplilearn</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=fis26HvvDII" target="_blank">
        <img src="https://img.youtube.com/vi/fis26HvvDII/0.jpg" alt="Mobile Dev" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Mobile App Development – freeCodeCamp</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=JMUxmLyrhSk" target="_blank">
        <img src="https://img.youtube.com/vi/JMUxmLyrhSk/0.jpg" alt="AI ML" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ AI & ML – Great Learning</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=0yWAtQ6pG6g" target="_blank">
        <img src="https://img.youtube.com/vi/0yWAtQ6pG6g/0.jpg" alt="DevOps" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ DevOps & CI/CD – Simplilearn</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=SSo_EIwHSd4" target="_blank">
        <img src="https://img.youtube.com/vi/SSo_EIwHSd4/0.jpg" alt="Blockchain" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Blockchain Technology – Simplilearn</p>
      </a>
    </div>

    <div>
      <a href="https://www.youtube.com/watch?v=9kH3m3xYddQ" target="_blank">
        <img src="https://img.youtube.com/vi/9kH3m3xYddQ/0.jpg" alt="Big Data" style="width: 100%; border-radius: 12px;">
        <p style="margin-top: 10px; font-weight: bold;">▶ Big Data & Hadoop – Edureka</p>
      </a>
    </div>


  </div>
</section>


<section id="faq">
  <h2>FAQ</h2>
  <ul class="faq">
    <li>
      <strong>Q: Are the courses free?</strong><br>
      A: Yes! All base content is free.
    </li>
    <li>
      <strong>Q: Do I need to register to access courses?</strong><br>
      A: Yes—registration lets you track your progress and unlock all features.
    </li>
    <li>
      <strong>Q: Are there any certification options?</strong><br>
      A: Yes, we provide certificates upon successful course completion.
    </li>
    <li>
      <strong>Q: Can I access the platform on mobile?</strong><br>
      A: Absolutely—ED‑TECH is fully mobile‑responsive for learning on the go.
    </li>
    <li>
      <strong>Q: How often is new content added?</strong><br>
      A: We update our library monthly to keep courses current.
    </li>
    <li>
      <strong>Q: Who can I contact for help?</strong><br>
      A: Reach out via support@edtech.com or use the in‑app support chat.
    </li>
  </ul>
</section>



<footer style="background-color: #2c3e50; color: white; padding: 40px 20px; text-align: center;">
  <div id="contact" style="margin-bottom: 20px;">
    <h2 style="font-size: 1.8rem; margin-bottom: 10px;">Contact Us</h2>
    <p style="font-size: 1rem; margin: 5px 0;">Email: <a href="mailto:support@edtech.com" style="color: #f4f4f4; text-decoration: underline;">support@edtech.com</a></p>
   
  </div>
  <div style="font-size: 0.9rem;">
    &copy; 2025 ED TECH. All rights reserved.
  </div>
</footer>


</body>
</html>
