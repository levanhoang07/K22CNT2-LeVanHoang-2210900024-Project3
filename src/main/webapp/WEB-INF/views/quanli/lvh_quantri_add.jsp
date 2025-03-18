<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<head>
   <meta charset="UTF-8">
   <style>
       /* Định dạng tổng thể */
       body {
           font-family: Arial, sans-serif;
           background-color: #f4f4f4;
           margin: 0;
           padding: 20px;
       }

       /* Tiêu đề */
       h2 {
           text-align: center;
           color: #333;
       }

       /* Form Container */
       .form-container {
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
       .input-field {
           width: 100%;
           padding: 10px;
           margin: 10px 0 15px 0;
           border: 1px solid #ccc;
           border-radius: 5px;
       }

       /* Nút Thêm */
       .submit-btn {
           background-color: #6666FF;
           color: white;
           border: none;
           padding: 10px 15px;
           border-radius: 5px;
           cursor: pointer;
           font-size: 16px;
           transition: background-color 0.3s ease;
           width: 100%;
       }

       .submit-btn:hover {
           background-color: #5757E6;
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
    <a href="${pageContext.request.contextPath}/quanli/lvh_quantri_list">Hủy</a>
</form:form>
