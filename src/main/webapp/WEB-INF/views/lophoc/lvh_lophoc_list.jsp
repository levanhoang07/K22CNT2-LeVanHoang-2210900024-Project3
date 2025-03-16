<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh sách lớp học</title>
</head>
<body>
    <h2>Danh sách lớp học</h2>
    
    <a href="${pageContext.request.contextPath}/lophoc/add">Thêm mới lớp học</a>
    <br><br>
    
    <table border="1">
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
                    <a href="${pageContext.request.contextPath}/lophoc/edit/${lop.lvhMaLop}">Sửa</a> | 
                    <a href="${pageContext.request.contextPath}/lophoc/delete/${lop.lvhMaLop}" onclick="return confirm('Bạn có chắc muốn xóa lớp học này?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
