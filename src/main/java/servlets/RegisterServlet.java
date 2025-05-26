package servlets;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String umobile = request.getParameter("umobile");
        String upwd = request.getParameter("upwd");

        try {
            Connection conn = DBConnection.getConnection();
            String sql = "INSERT INTO user (uname, upwd, uemail, umobile) VALUES (?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, uname);
            ps.setString(2, upwd);
            ps.setString(3, uemail);
            ps.setString(4, umobile);

            int i = ps.executeUpdate();

            if (i > 0) {
//                response.sendRedirect("pages/login.jsp");
            	response.sendRedirect("pages/login.jsp?status=registered");

            } else {
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                out.println("<html><body><h3>Error during registration.</h3></body></html>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
