<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả tìm kiếm - Trung tâm Gia sư Doremi</title>
</head>
<body>
    <header>
        <h1>Kết quả tìm kiếm</h1>
        <nav>
            <a href="index.jsp">Trang chủ</a>
            <a href="login.jsp">Đăng nhập</a>
            <a href="register.jsp">Đăng ký</a>
        </nav>
    </header>
    
    <section>
        <h2>Kết quả tìm kiếm</h2>
        <%
            String keyword = request.getParameter("search");
            if (keyword != null && !keyword.trim().isEmpty()) {
                out.println("<p>Kết quả tìm kiếm cho từ khóa: <strong>" + keyword + "</strong></p>");
                
                // Kết nối cơ sở dữ liệu
                String url = "jdbc:mysql://localhost:3306/tutor_db";
                String user = "root";
                String password = "Hoang@123";
                Connection conn = null;
                PreparedStatement pstmt = null;
                ResultSet rs = null;
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    conn = DriverManager.getConnection(url, user, password);
                    String sql = "SELECT name, subject FROM tutors WHERE name LIKE ? OR subject LIKE ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, "%" + keyword + "%");
                    pstmt.setString(2, "%" + keyword + "%");
                    rs = pstmt.executeQuery();
                    
                    out.println("<ul>");
                    boolean hasResults = false;
                    while (rs.next()) {
                        hasResults = true;
                        out.println("<li>" + rs.getString("name") + " - Môn " + rs.getString("subject") + "</li>");
                    }
                    out.println("</ul>");
                    
                    if (!hasResults) {
                        out.println("<p>Không tìm thấy kết quả phù hợp.</p>");
                    }
                } catch (Exception e) {
                    out.println("<p>Lỗi truy vấn cơ sở dữ liệu: " + e.getMessage() + "</p>");
                } finally {
                    try { if (rs != null) rs.close(); } catch (SQLException e) {}
                    try { if (pstmt != null) pstmt.close(); } catch (SQLException e) {}
                    try { if (conn != null) conn.close(); } catch (SQLException e) {}
                }
            } else {
                out.println("<p>Vui lòng nhập từ khóa để tìm kiếm.</p>");
            }
        %>
    </section>
    
    <footer>
        <p>© 2025 Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
    </footer>
</body>
</html>