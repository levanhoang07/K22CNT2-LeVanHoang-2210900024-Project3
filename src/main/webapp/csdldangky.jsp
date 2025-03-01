<%@ page import="java.sql.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Lấy dữ liệu từ form
    String LvhHoTen = request.getParameter("LvhHoTen");
    String LvhEmail = request.getParameter("LvhEmail");
    String LvhSoDienThoai = request.getParameter("LvhSoDienThoai");
    String LvhMatKhau = request.getParameter("LvhMatKhau");
    String role = request.getParameter("role"); // Lấy giá trị học viên hoặc gia sư

    // Kết nối MySQL
    String jdbcURL = "jdbc:mysql://localhost:3306/K22CNT3_LeVanHoang_2210900024_Project3";
    String dbUser = "root";  // Thay bằng tài khoản MySQL của bạn
    String dbPass = "Hoang@123";      // Nếu có mật khẩu thì thay vào đây

    Connection conn = null;
    PreparedStatement stmt = null;

    try {
        // Load MySQL JDBC Driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Kết nối DB
        conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);

        // Xác định bảng lưu trữ
        String tableName = (role.equals("LvhHocVien")) ? "LvhHocVien" : "LvhGiaSu";

        // Kiểm tra nếu sdt đăng nhập đã tồn tại
        String checkQuery = "SELECT * FROM " + tableName + " WHERE LvhSoDienThoai = ?";
        PreparedStatement checkStmt = conn.prepareStatement(checkQuery);
        checkStmt.setString(1, LvhSoDienThoai);
        ResultSet rs = checkStmt.executeQuery();

        if (rs.next()) {
            out.println("<script>alert('Tên đăng nhập đã tồn tại!'); window.location.href='dangky.jsp';</script>");
        } else {
            // Thêm vào database
            String sql = "INSERT INTO " + tableName + " (LvhHoTenLvhHoTen, LvhEmailLvhEmail, LvhSoDienThoai, LvhMatKhauLvhMatKhau) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, LvhHoTen);
            stmt.setString(2, LvhEmail);
            stmt.setString(3, LvhSoDienThoai);
            stmt.setString(4, LvhMatKhau); // Lưu ý: Nên mã hóa mật khẩu trước khi lưu

            int rowsInserted = stmt.executeUpdate();
            if (rowsInserted > 0) {
                out.println("<script>alert('Đăng ký thành công!'); window.location.href='dangnhap.jsp';</script>");
            } else {
                out.println("<script>alert('Lỗi đăng ký, vui lòng thử lại!'); window.location.href='dangky.jsp';</script>");
            }
        }
    } catch (Exception e) {
        out.println("<script>alert('Lỗi kết nối: " + e.getMessage() + "'); window.location.href='dangky.jsp';</script>");
    } finally {
        try { if (stmt != null) stmt.close(); } catch (SQLException e) {}
        try { if (conn != null) conn.close(); } catch (SQLException e) {}
    }
%>
