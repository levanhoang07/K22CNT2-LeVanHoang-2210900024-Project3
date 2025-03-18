<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách lớp học</title>
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
        }

        /* Table header styling */
        thead th {
            background-color: #6666FF; /* Set background color for table headers */
            color: white;  /* Set text color to white */
            padding: 12px;
            text-align: left;
        }

        /* Table body styling */
        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid #ddd;
        }

        /* Alternate row color */
        tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        /* Row hover effect */
        tbody tr:hover {
            background-color: #f1f1f1;
        }

        /* Link styling */
        a {
            color: #6666FF;
            text-decoration: none;
            margin-right: 10px;
            font-weight: bold;
        }

        /* Link hover effect */
        a:hover {
            color: #5757E6;
        }

        /* Return button styling */
        .btn-back {
            display: block;
            width: fit-content;
            margin: 20px auto;
            background-color: #6c757d;
            color: white;
            padding: 10px 15px;
            text-align: center;
        }

        .btn-back:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <h2>Danh sách lớp học</h2>
    
    <br><br>
    
    <table>
        <thead>
            <tr>
                <th>Mã Lớp</th>
                <th>Tên Lớp</th>
                <th>Môn Học</th>
                <th>Mã Gia Sư</th>
                <th>Mã Học Viên</th>
                <th>Thời Gian Học</th>
                <th>Địa Điểm Học</th>
                <th>Hành động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lop" items="${list}">
                <tr>
                    <td>${lop.lvhMaLop}</td>
                    <td>${lop.lvhTenLop}</td>
                    <td>${lop.lvhMonHoc}</td>
                    <td>${lop.lvhMaGiaSu}</td>
                    <td>${lop.lvhMaHocVien}</td>
                    <td>${lop.lvhThoiGianHoc}</td>
                    <td>${lop.lvhDiaDiemHoc}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/lophoc/add">Thêm mới lớp học</a>|
                        <a href="${pageContext.request.contextPath}/lophoc/edit/${lop.lvhMaLop}">Sửa</a> | 
                        <a href="${pageContext.request.contextPath}/lophoc/delete/${lop.lvhMaLop}" onclick="return confirm('Bạn có chắc muốn xóa lớp học này?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/K22CNT2-LVH-2210900024-Project3/qladmin" class="btn-back">Trở về menu quản trị</a>

</body>
</html>
