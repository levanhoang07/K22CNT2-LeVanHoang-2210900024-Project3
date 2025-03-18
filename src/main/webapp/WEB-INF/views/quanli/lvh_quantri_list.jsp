<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
   /* Định dạng tổng thể */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 20px;
    padding: 0;
}

/* Tiêu đề */
h2 {
    text-align: center;
    color: #333;
}

/* Container của nút thêm */
.btn-container {
    text-align: right;
    margin-bottom: 15px;
}

/* Bảng hiển thị */
table {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    overflow: hidden;
}

/* Tiêu đề bảng */
thead {
    background-color: #6666FF;
    color: white;
}

th, td {
    padding: 12px;
    text-align: left;
    border: 1px solid #ddd; /* Added border between table cells */
}

/* Dòng chẵn có màu nền nhạt */
tbody tr:nth-child(even) {
    background-color: #f9f9f9;
}

/* Hiệu ứng hover */
tbody tr:hover {
    background-color: #f1f1f1;
}

/* Định dạng ô mật khẩu */
.password-container {
    display: flex;
    align-items: center;
}

.password-field {
    border: none;
    background: none;
    font-size: 14px;
    width: 120px;
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}

/* Nút ẩn/hiện mật khẩu */
.an-hien-password {
    border: none;
    background: none;
    cursor: pointer;
    font-size: 16px;
    margin-left: 5px;
}

/* Nút chung */
.btn {
    display: inline-block;
    padding: 8px 12px;
    text-decoration: none;
    border-radius: 5px;
    transition: all 0.3s;
}

/* Nút Thêm */
.btn-primary {
    background-color: #6666FF;
    color: white;
}

.btn-primary:hover {
    background-color: #5757E6;
}

/* Nút Chỉnh sửa */
.edit-btn {
    background-color: #ffc107;
    color: white;
}

.edit-btn:hover {
    background-color: #e0a800;
}

/* Nút Xóa */
.delete-btn {
    background-color: #dc3545;
    color: white;
    margin-left: 5px;
}

.delete-btn:hover {
    background-color: #c82333;
}

/* Nút Quay lại */
.btn-back {
    display: block;
    width: fit-content;
    margin: 20px auto;
    background-color: #6c757d;
    color: white;
    padding: 10px 15px;
}

.btn-back:hover {
    background-color: #5a6268;
}
</style>

<meta charset="UTF-8">
<h2>Danh Sách Quản Trị Viên</h2>

<div class="btn-container">
   
</div>

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
                <td>
                    <div class="password-container">
                        <input type="password" class="password-field" value="${quanTri.lvhMatKhau}" readonly>
                        <button class="an-hien-password">🙈</button>
                    </div>
                </td>
                <td>${quanTri.lvhEmail}</td>
                <td>${quanTri.lvhSoDienThoai}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/quanli/add" class="btn btn-primary">Thêm</a>|
                    <a href="${pageContext.request.contextPath}/quanli/edit/${quanTri.lvhMaQuanTri}" class="btn edit-btn">Sửa</a>|
                    <a href="${pageContext.request.contextPath}/quanli/delete/${quanTri.lvhMaQuanTri}" class="btn delete-btn" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a href="/K22CNT2-LVH-2210900024-Project3/qladmin" class="btn btn-back">Trở về menu quản trị</a>

<script>
    document.querySelectorAll('.an-hien-password').forEach(button => {
        button.addEventListener('click', function () {
            let input = this.previousElementSibling;
            if (input.type === "password") {
                input.type = "text";
                this.textContent = "🙉";
            } else {
                input.type = "password";
                this.textContent = "🙈";
            }
        });
    });
</script>
