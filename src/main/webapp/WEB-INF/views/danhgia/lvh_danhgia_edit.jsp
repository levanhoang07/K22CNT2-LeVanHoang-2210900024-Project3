<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa Đánh giá</title>
</head>
<body>
    <h2>Chỉnh sửa Đánh giá</h2>
    <form action="${pageContext.request.contextPath}/danhgia/update" method="post">
        <input type="hidden" name="lvhMaDanhGia" value="${danhgia.lvhMaDanhGia}">

        <label>Họ Tên:</label>
        <input type="text" name="lvhHoTen" value="${danhgia.lvhHoTen}" required><br>

        <label>Số Điện Thoại:</label>
        <input type="text" name="lvhSoDienThoai" value="${danhgia.lvhSoDienThoai}" required><br>

        <label>Bình Luận:</label>
        <textarea name="lvhBinhLuan" required>${danhgia.lvhBinhLuan}</textarea><br>

        <button type="submit">Cập nhật</button>
    </form>
    <br>
    <a href="${pageContext.request.contextPath}/danhgia/list">Quay lại danh sách</a>
</body>
</html>
