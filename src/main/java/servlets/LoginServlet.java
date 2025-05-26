package servlets;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("uemail");
        String password = request.getParameter("upwd");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "SELECT * FROM user WHERE uemail=? AND upwd=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                HttpSession session = request.getSession();
                session.setAttribute("username", rs.getString("uname"));

                response.sendRedirect("pages/dashboard.jsp");
            } else {
                out.println("<h2>Invalid email or password ❌</h2>");
                out.println("<a href='pages/login.jsp'>Try Again</a>");
            }

            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
