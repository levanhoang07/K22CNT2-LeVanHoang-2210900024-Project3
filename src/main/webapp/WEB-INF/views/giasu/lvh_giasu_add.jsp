<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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

        /* Form container */
        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin: 0 auto;
        }

        /* Table layout for form fields */
        table {
            width: 100%;
            margin: 0 auto;
            border-spacing: 10px;
        }

        td {
            padding: 10px;
            vertical-align: middle;
        }

        /* Input fields */
        input, select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-top: 5px;
            box-sizing: border-box;
        }

        /* Button styling */
        input[type="submit"] {
            background-color: #6666FF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #5757E6;
        }

        /* Form labels */
        label {
            font-weight: bold;
            color: #333;
        }

        /* Select dropdowns */
        select {
            font-size: 14px;
        }

        /* File input */
        input[type="file"] {
            padding: 5px;
            font-size: 14px;
        }
    </style>
</head>

<h2>Thêm Gia Sư</h2>

<form:form action="${pageContext.request.contextPath}/giasu/save" method="post" enctype="multipart/form-data" modelAttribute="giasu">
    <table>
        <tr>
            <td>Họ Tên:</td>
            <td><form:input path="lvhHoTen" /></td>
        </tr>
        <tr>
            <td>Ngày Sinh:</td>
            <td><form:input path="lvhNgaySinh" type="date" /></td>
        </tr>
        <tr>
            <td>Giới Tính:</td>
            <td>
                <form:select path="lvhGioiTinh">
                    <form:option value="Nam">Nam</form:option>
                    <form:option value="Nữ">Nữ</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>Số Điện Thoại:</td>
            <td><form:input path="lvhSoDienThoai" /></td>
        </tr>
        <tr>
            <td>Mật Khẩu:</td>
            <td><form:input path="lvhMatKhau" /></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="lvhEmail" /></td>
        </tr>
        <tr>
            <td>Địa Chỉ:</td>
            <td><form:input path="lvhDiaChi" /></td>
        </tr>
        <tr>
            <td>Trình Độ:</td>
            <td><form:input path="lvhTrinhDo" /></td>
        </tr>
        <tr>
            <td>Ảnh:</td>
            <td><form:input path="lvhAnh" type="file" /></td>
        </tr>
        <tr>
            <td>Mức Lương:</td>
            <td><form:input path="lvhMucLuong" type="number" step="0.01" /></td>
        </tr>
        <tr>
            <td>Trạng Thái:</td>
            <td>
                <form:select path="lvhTrangThai">
                    <form:option value="true">Active</form:option>
                    <form:option value="false">Inactive</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Thêm Gia Sư" /></td>
            
        </tr>
    </table><a href="${pageContext.request.contextPath}/giasu/lvh_giasu_list">Hủy</a>
</form:form>
