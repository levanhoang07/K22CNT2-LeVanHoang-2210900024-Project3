<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Đánh giá</title>
</head>
<body>
    <h2>Danh sách Đánh giá</h2>
    <a href="${pageContext.request.contextPath}/danhgia/add">Thêm mới đánh giá</a>
    <br><br>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Họ Tên</th>
            <th>Số Điện Thoại</th>
            <th>Bình Luận</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="danhgia" items="${list}">
            <tr>
                <td>${danhgia.lvhMaDanhGia}</td>
                <td>${danhgia.lvhHoTen}</td>
                <td>${danhgia.lvhSoDienThoai}</td>
                <td>${danhgia.lvhBinhLuan}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/danhgia/edit/${danhgia.lvhMaDanhGia}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/danhgia/delete/${danhgia.lvhMaDanhGia}" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
