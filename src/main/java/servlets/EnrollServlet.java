package servlets;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class EnrollServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String course = request.getParameter("course");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO enroll (course, name, email, contact) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, course);
            ps.setString(2, name);
            ps.setString(3, email);
            ps.setString(4, contact);

            int result = ps.executeUpdate();

            if (result > 0) {
                out.println("<h3>Enrollment successful! ✅</h3>");
            } else {
                out.println("<h3>Enrollment failed ❌</h3>");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
