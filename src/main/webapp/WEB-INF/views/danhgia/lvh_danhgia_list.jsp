<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách Đánh giá</title>
    
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
            color: #6666FF;  /* Color for the title */
            font-size: 24px;
            font-weight: bold;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            margin-top: 20px;
        }

        /* Table headers */
        th {
            background-color: #6666FF;
            color: white;
            padding: 12px;
            text-align: left;
        }

        /* Table rows */
        td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        /* Zebra striping for rows */
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Hover effect for table rows */
        tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Button styling */
        a {
            display: inline-block;
            background-color: #6666FF;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
            margin-right: 8px;
            text-align: center;
        }

        a:hover {
            background-color: #5757E6;
        }

        /* Back button */
        .btn-back {
            display: block;
            width: fit-content;
            margin: 20px auto;
            background-color: #6c757d;
            color: white;
            padding: 10px 15px;
            text-align: center;
            border-radius: 5px;
        }

        .btn-back:hover {
            background-color: #5a6268;
        }
    </style>
</head><meta charset="UTF-8">
<body>

    <h2>Danh sách Đánh giá</h2>

    <table>
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
                    <a href="${pageContext.request.contextPath}/danhgia/add">Thêm</a>|
                    <a href="${pageContext.request.contextPath}/danhgia/edit/${danhgia.lvhMaDanhGia}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/danhgia/delete/${danhgia.lvhMaDanhGia}" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a href="/K22CNT2-LVH-2210900024-Project3/qladmin" class="btn-back">Trở về menu quản trị</a>

</body>
</html>
