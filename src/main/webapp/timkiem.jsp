<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kết quả tìm kiếm</title>
</head>
<body>
    <h2>🔎 Kết quả tìm kiếm</h2>
    <%
        String query = request.getParameter("query");
        if (query != null && !query.trim().isEmpty()) {
            out.println("<p>Bạn đã tìm kiếm: <strong>" + query + "</strong></p>");
            
            // Kết nối cơ sở dữ liệu
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                java.sql.Connection conn = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/K22CNT3_LeVanHoang_2210900024_Project3", "root", "Hoang@123");
                
                String sql = "SELECT * FROM GiaSu WHERE HoTen LIKE ? OR TrinhDo LIKE ? OR DiaChi LIKE ?";
                java.sql.PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, "%" + query + "%");
                stmt.setString(2, "%" + query + "%");
                stmt.setString(3, "%" + query + "%");
                java.sql.ResultSet rs = stmt.executeQuery();
                
                out.println("<ul>");
                while (rs.next()) {
                    String anh = (rs.getString("Anh") != null) ? "Content/" + rs.getString("Anh") : "default.jpg";
                    out.println("<li><img src='" + anh + "' width='50' height='50'> " +
                                rs.getString("HoTen") + " - " + rs.getString("TrinhDo") + " - " + rs.getString("DiaChi") + " - " + rs.getString("SoDienThoai") + "</li>");
                }
                out.println("</ul>");
                
                rs.close();
                stmt.close();
                conn.close();
            } catch (Exception e) {
                out.println("<p>Lỗi khi tìm kiếm dữ liệu: " + e.getMessage() + "</p>");
            }
        } else {
            out.println("<p>Vui lòng nhập từ khóa tìm kiếm.</p>");
        }
    %>
    <a href="index.jsp">⬅ Quay lại Trang chủ</a>
</body>
</html>
