<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Thanh Toán</title>
</head>
<body>
<h2>Danh sách Thanh Toán</h2>
<a href="add">Thêm Thanh Toán Mới</a>
<table border="1">
    <thead>
        <tr>
            <th>Mã Thanh Toán</th>
            <th>Mã Học Viên</th>
            <th>Mã Giá Sư</th>
            <th>Số Tiền</th>
            <th>Ngày Thanh Toán</th>
            <th>Loại Thanh Toán</th>
            <th>Chức Năng</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${list}" var="thanhtoan">
            <tr>
                <td>${thanhtoan.LvhMaThanhtoan}</td>
                <td>${thanhtoan.LvhMaHocVien}</td>
                <td>${thanhtoan.LvhMaGiaSu}</td>
                <td>${thanhtoan.LvhSoTien}</td>
                <td>${thanhtoan.LvhNgayThanhtoan}</td>
                <td>${thanhtoan.LvhLoaiThanhtoan}</td>
                <td>
                    <a href="edit/${thanhtoan.LvhMaThanhtoan}">Sửa</a> | 
                    <a href="delete/${thanhtoan.LvhMaThanhtoan}">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>
