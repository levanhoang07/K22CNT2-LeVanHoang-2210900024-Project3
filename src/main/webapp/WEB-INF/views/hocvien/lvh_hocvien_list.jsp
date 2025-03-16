<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách học viên</title>
</head>
<body>
    <h2>Danh sách Học viên</h2>
    <a href="${pageContext.request.contextPath}/hocvien/add">Thêm học viên</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Họ Tên</th>
            <th>Ngày Sinh</th>
            <th>Giới Tính</th>
            <th>Số Điện Thoại</th>
            <th>Email</th>
            <th>Địa Chỉ</th>
            <th>Lớp Muốn Học</th>
            <th>Trạng Thái</th>
            <th>Hành động</th>
        </tr>
        <c:forEach var="hocvien" items="${list}">
            <tr>
                <td>${hocvien.lvhMaHocVien}</td>
                <td>${hocvien.lvhHoTen}</td>
                <td>${hocvien.lvhNgaySinh}</td>
                <td>${hocvien.lvhGioiTinh}</td>
                <td>${hocvien.lvhSoDienThoai}</td>
                <td>${hocvien.lvhEmail}</td>
                <td>${hocvien.lvhDiaChi}</td>
                <td>${hocvien.lvhLopMuonHoc}</td>
                <td>${hocvien.lvhTrangThai ? "Hoạt động" : "Ngừng hoạt động"}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/hocvien/edit/${hocvien.lvhMaHocVien}">Sửa</a> | 
                    <a href="${pageContext.request.contextPath}/hocvien/delete/${hocvien.lvhMaHocVien}" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
