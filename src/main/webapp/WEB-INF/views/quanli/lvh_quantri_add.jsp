<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 380px;
            transition: transform 0.3s ease-in-out;
        }

        .form-container:hover {
            transform: translateY(-3px);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 15px;
            font-weight: bold;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: 600;
            color: #444;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            border: 2px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease, background 0.3s ease;
        }

        .input-field:focus {
            border-color: #007bff;
            background: white;
            outline: none;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s ease;
        }

        .submit-btn:hover {
            background: #0056b3;
            transform: scale(1.02);
        }

        .submit-btn:active {
            transform: scale(0.98);
        }
    </style>
</head>

<h2>Thêm Quản Trị Viên</h2>
<form:form modelAttribute="quanTri" action="${pageContext.request.contextPath}/quanli/save" method="post" class="form-container">
    <label>Họ Tên: <form:input path="lvhHoTen" class="input-field" /></label>
    <label>Tên Đăng Nhập: <form:input path="lvhTenDangNhap" class="input-field" /></label>
    <label>Mật Khẩu: <form:password path="lvhMatKhau" class="input-field" /></label>
    <label>Email: <form:input path="lvhEmail" class="input-field" /></label>
    <label>Số Điện Thoại: <form:input path="lvhSoDienThoai" class="input-field" /></label>
    <button type="submit" class="submit-btn">Thêm</button>
</form:form>
