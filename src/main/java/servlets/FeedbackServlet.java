package servlets;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class FeedbackServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String rating = request.getParameter("rating");
        String message = request.getParameter("message");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO feedback (name, email, rating, message) VALUES (?, ?, ?, ?)";
            
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setInt(3, Integer.parseInt(rating));
            ps.setString(4, message);

            int result = ps.executeUpdate();

            if (result > 0) {
                out.println("<h3>Thank you for your feedback! ✅</h3>");
            } else {
                out.println("<h3>Failed to submit feedback ❌</h3>");
            }

            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
