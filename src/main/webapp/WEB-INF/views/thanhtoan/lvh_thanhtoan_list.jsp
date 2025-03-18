<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Thanh Toán</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            padding: 0;
        }

        /* Header styling */
        h2 {
            text-align: center;
            color: #6666FF; /* Blue color for the title */
            font-size: 24px;
            font-weight: bold;
        }

        /* Table container styling */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            border-radius: 8px;
            overflow: hidden;
        }

        /* Table header styling */
        th {
            background-color: #6666FF;
            color: white;
            padding: 12px;
            text-align: left;
        }

        /* Table cell styling */
        td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        /* Row striping for better readability */
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Hover effect on table rows */
        tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Link styling for actions */
        a {
            text-decoration: none;
            color: #6666FF;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        a:hover {
            background-color: #6666FF;
            color: white;
        }

        /* Container for "Back to Admin Menu" button */
        .btn-back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        .btn-back:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <h2>Danh sách Thanh Toán</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>ID Học Viên</th>
            <th>ID Gia Sư</th>
            <th>Số Tiền</th>
            <th>Ngày Thanh Toán</th>
            <th>Loại Thanh Toán</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="tt" items="${list}">
            <tr>
                <td>${tt.lvhMaThanhtoan}</td>
                <td>${tt.lvhMaHocVien}</td>
                <td>${tt.lvhMaGiaSu}</td>
                <td>${tt.lvhSoTien}</td>
                <td>${tt.lvhNgayThanhtoan}</td>
                <td>${tt.lvhLoaiThanhtoan}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/thanhtoan/add">Thêm mới</a> |
                    <a href="${pageContext.request.contextPath}/thanhtoan/edit/${tt.lvhMaThanhtoan}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/thanhtoan/delete/${tt.lvhMaThanhtoan}" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="/K22CNT2-LVH-2210900024-Project3/qladmin" class="btn-back">Trở về menu quản trị</a>
</body>
</html>
