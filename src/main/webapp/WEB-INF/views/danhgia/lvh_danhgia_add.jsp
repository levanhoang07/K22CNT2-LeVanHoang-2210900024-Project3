<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Đánh giá</title>
</head>
<body>
    <h2>Thêm Đánh giá</h2>
    <form action="${pageContext.request.contextPath}/danhgia/save" method="post">
        <label>Họ Tên:</label>
        <input type="text" name="lvhHoTen" required><br>

        <label>Số Điện Thoại:</label>
        <input type="text" name="lvhSoDienThoai" required><br>

        <label>Bình Luận:</label>
        <textarea name="lvhBinhLuan" required></textarea><br>

        <button type="submit">Lưu</button>
    </form>
    <br>
    <a href="${pageContext.request.contextPath}/danhgia/list">Quay lại danh sách</a>
</body>
</html>
