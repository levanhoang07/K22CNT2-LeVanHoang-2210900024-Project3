<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Gia Sư</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
    <h1>Danh Sách Gia Sư</h1>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ Tên</th>
                <th>Ngày Sinh</th>
                <th>Giới Tính</th>
                <th>Số Điện Thoại</th>
                <th>Email</th>
                <th>Địa Chỉ</th>
                <th>Mức Lương</th>
                <th>Trạng Thái</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="giasu" items="${list}">
                <tr>
                    <td>${giasu.lvhMaGiaSu}</td>
                    <td>${giasu.lvhHoTen}</td>
                    <td>${giasu.lvhNgaySinh}</td>
                    <td>${giasu.lvhGioiTinh}</td>
                    <td>${giasu.lvhSoDienThoai}</td>
                    <td>${giasu.lvhEmail}</td>
                    <td>${giasu.lvhDiaChi}</td>
                    <td>${giasu.lvhMucLuong}</td>
                    <td>${giasu.lvhTrangThai ? 'Hoạt động' : 'Ngừng hoạt động'}</td>
                    <td>
                        <a href="<c:url value='/giasu/edit/${giasu.lvhMaGiaSu}'/>">Sửa</a>
                        <a href="<c:url value='/giasu/delete/${giasu.lvhMaGiaSu}'/>" onclick="return confirm('Bạn có chắc chắn muốn xóa?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="<c:url value='/giasu/add'/>">Thêm Gia Sư</a>
</body>
</html>
