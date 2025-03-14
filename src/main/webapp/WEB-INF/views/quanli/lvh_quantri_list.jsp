<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    body {
        background-color: #f9f9f9;
        font-family: Arial, sans-serif;
        text-align: center;
    }
    h2 {
        color: #333;
    }
    a {
        display: inline-block;
        padding: 10px 15px;
        margin-bottom: 10px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 4px;
    }
    a:hover {
        background-color: #0056b3;
    }
    table {
        width: 80%;
        margin: auto;
        border-collapse: collapse;
        background: white;
        border-radius: 5px;
        overflow: hidden;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background-color: #007bff;
        color: white;
    }
    td a {
        padding: 5px 10px;
        margin: 0 5px;
        border-radius: 3px;
    }
    .edit-btn {
        background-color: #28a745;
    }
    .delete-btn {
        background-color: #dc3545;
    }
    .edit-btn:hover {
        background-color: #218838;
    }
    .delete-btn:hover {
        background-color: #c82333;
    }
</style>

<h2>Danh Sách Quản Trị Viên</h2>
<a href="${pageContext.request.contextPath}/quanli/add">Thêm Quản Trị Viên</a>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Họ Tên</th>
            <th>Tên Đăng Nhập</th>
            <th>Mật khẩu</th>
            <th>Email</th>
            <th>Số Điện Thoại</th>
            <th>Thao Tác</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="quanTri" items="${list}">
            <tr>
                <td>${quanTri.lvhMaQuanTri}</td>
                <td>${quanTri.lvhHoTen}</td>
                <td>${quanTri.lvhTenDangNhap}</td>
                <td>${quanTri.lvhMatKhau}</td>
                <td>${quanTri.lvhEmail}</td>
                <td>${quanTri.lvhSoDienThoai}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/quanli/edit/${quanTri.lvhMaQuanTri}" class="edit-btn">Sửa</a>
                    <a href="${pageContext.request.contextPath}/quanli/delete/${quanTri.lvhMaQuanTri}" class="delete-btn" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
