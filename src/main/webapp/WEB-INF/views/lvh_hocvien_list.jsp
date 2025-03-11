<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
    <tr>
        <th>Họ Tên</th>
        <th>Ngày Sinh</th>
        <th>Giới Tính</th>
        <th>Số Điện Thoại</th>
        <th>Email</th>
        <th>Địa Chỉ</th>
        <th>Lớp Muốn Học</th>
        <th>Trạng Thái</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="hocvien" items="${list}">
        <tr>
            <td>${hocvien.lvhHoTen}</td>
            <td>${hocvien.lvhNgaySinh}</td>
            <td>${hocvien.lvhGioiTinh}</td>
            <td>${hocvien.lvhSoDienThoai}</td>
            <td>${hocvien.lvhEmail}</td>
            <td>${hocvien.lvhDiaChi}</td>
            <td>${hocvien.lvhLopMuonHoc}</td>
            <td>${hocvien.lvhTrangThai ? 'Kích Hoạt' : 'Không Kích Hoạt'}</td>
            <td>
                <a href="${pageContext.request.contextPath}/hocvien/edit/${hocvien.lvhMaHocVien}">Edit</a>
                <a href="${pageContext.request.contextPath}/hocvien/delete/${hocvien.lvhMaHocVien}" onclick="return confirm('Are you sure?')">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/hocvien/add">Thêm Học Viên</a>

</body>
</html>