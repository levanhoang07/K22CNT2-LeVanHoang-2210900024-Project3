<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<meta charset="UTF-8">

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

    /* Form */
    form {
        background-color: white;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        max-width: 600px;
        margin: 0 auto;
    }

    /* Label */
    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    /* Input fields */
    .form input {
        width: 100%;
        padding: 10px;
        margin: 10px 0 15px 0;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    /* Nút Cập nhật */
    button {
        background-color: #6666FF;
        color: white;
        border: none;
        padding: 10px 15px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #5757E6;
    }

</style>

<h2>Sửa Quản Trị Viên</h2>
<form:form modelAttribute="quanTri" action="${pageContext.request.contextPath}/quanli/update" method="post">
    <form:hidden path="lvhMaQuanTri"/>
    
    <label>Họ Tên:</label>
    <form:input path="lvhHoTen" />
    
    <label>Tên Đăng Nhập:</label>
    <form:input path="lvhTenDangNhap" />
    
    <label>Mật Khẩu:</label>
    <input name="lvhMatKhau" value="${quanTri.lvhMatKhau}" />

    <label>Email:</label>
    <form:input path="lvhEmail" />
    
    <label>Số Điện Thoại:</label>
    <form:input path="lvhSoDienThoai" />
    
    <button type="submit">Cập nhật</button>
    <a href="${pageContext.request.contextPath}/quanli/lvh_quantri_list">Hủy</a>
</form:form>
