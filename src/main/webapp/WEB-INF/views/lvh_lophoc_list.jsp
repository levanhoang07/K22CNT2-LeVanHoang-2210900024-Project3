<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách lớp học</title>
</head>
<body>
    <h1>Danh sách lớp học</h1>
    <a href="/lophoc/add">Thêm lớp học mới</a>
    <table border="1">
        <thead>
            <tr>
                <th>STT</th>
                <th>Tên lớp</th>
                <th>Môn học</th>
                <th>Giá sư</th>
                <th>Học viên</th>
                <th>Thời gian học</th>
                <th>Địa điểm học</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lopHoc" items="${list}">
                <tr>
                    <td>${lopHoc.lvhMaLop}</td>
                    <td>${lopHoc.lvhTenLop}</td>
                    <td>${lopHoc.lvhMonHoc}</td>
                    <td>${lopHoc.lvhMaGiaSu}</td>
                    <td>${lopHoc.lvhMaHocVien}</td>
                    <td>${lopHoc.lvhThoiGianHoc}</td>
                    <td>${lopHoc.lvhDiaDiemHoc}</td>
                    <td>
                        <a href="/lophoc/edit/${lopHoc.lvhMaLop}">Sửa</a> |
                        <a href="/lophoc/delete/${lopHoc.lvhMaLop}">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
