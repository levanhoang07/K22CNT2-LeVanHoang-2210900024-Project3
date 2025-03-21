<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
    // Lấy dữ liệu từ form
    String hoTen = request.getParameter("LvhHoTen");
    String email = request.getParameter("LvhEmail");
    String soDienThoai = request.getParameter("LvhSoDienThoai");
    String matKhau = request.getParameter("LvhMatKhau");
    String role = request.getParameter("role");

    // Kết nối database
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/K22CNT3_LeVanHoang_2210900024_Project3", "root", "Hoang@123");
        PreparedStatement stmt;

        if ("hocvien".equals(role)) {
            stmt = conn.prepareStatement("INSERT INTO LvhHocVien (HoTen, Email, SoDienThoai, MatKhau) VALUES (?, ?, ?, ?)");
        } else {
            stmt = conn.prepareStatement("INSERT INTO LvhGiaSu (HoTen, Email, SoDienThoai, MatKhau) VALUES (?, ?, ?, ?)");
        }

        stmt.setString(1, hoTen);
        stmt.setString(2, email);
        stmt.setString(3, soDienThoai);
        stmt.setString(4, matKhau);

        int rowsInserted = stmt.executeUpdate();
        stmt.close();
        conn.close();

        if (rowsInserted > 0) {
            if ("hocvien".equals(role)) {
                response.sendRedirect("Lvh_hocvien_list.jsp");
            } else {
                response.sendRedirect("Lvh_giasu_list.jsp");
            }
        } else {
            out.println("<p>Đăng ký không thành công. Vui lòng thử lại!</p>");
        }
    } catch (Exception e) {
        out.println("<p>Lỗi: " + e.getMessage() + "</p>");
    }
%>
