<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Đánh Giá</title>
</head>
<body>
<h2>Danh sách Đánh Giá</h2>
<a href="add">Thêm Đánh Giá Mới</a>
<table border="1">
    <thead>
        <tr>
            <th>Mã Đánh Giá</th>
            <th>Họ Tên</th>
            <th>Số Điện Thoại</th>
            <th>Bình Luận</th>
            <th>Chức Năng</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="danhgia">
            <tr>
                <td>${danhgia.LvhMaDanhGia}</td>
                <td>${danhgia.LvhHoTen}</td>
                <td>${danhgia.LvhSoDienThoai}</td>
                <td>${danhgia.LvhBinhLuan}</td>
                <td>
                    <a href="edit/${danhgia.LvhMaDanhGia}">Sửa</a> | 
                    <a href="delete/${danhgia.LvhMaDanhGia}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
