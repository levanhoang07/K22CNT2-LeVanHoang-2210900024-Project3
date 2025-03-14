<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
    body {
        background-color: #f9f9f9;
        font-family: Arial, sans-serif;
    }
    form {
        background: white;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        margin: auto;
    }
    label {
        display: block;
        margin: 10px 0 5px;
    }
    input {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    button {
        background-color: #28a745;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    button:hover {
        background-color: #218838;
    }
</style>

<h2 style="text-align: center;">Sửa Quản Trị Viên</h2>
<form:form modelAttribute="quanTri" action="${pageContext.request.contextPath}/quanli/update" method="post">
    <form:hidden path="lvhMaQuanTri"/>
    
    <label>Họ Tên:</label>
    <form:input path="lvhHoTen" />
    
    <label>Tên Đăng Nhập:</label>
    <form:input path="lvhTenDangNhap" />
    
    <label>Mật Khẩu:</label>
    <form:password path="lvhMatKhau" />
    
    <label>Email:</label>
    <form:input path="lvhEmail" />
    
    <label>Số Điện Thoại:</label>
    <form:input path="lvhSoDienThoai" />
    
    <button type="submit">Cập nhật</button>
</form:form>
