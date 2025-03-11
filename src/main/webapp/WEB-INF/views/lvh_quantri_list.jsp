<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Danh Sách Quản Trị Viên</title>
</head>
<body>
    <h2>Danh Sách Quản Trị Viên</h2>
    <a href="${pageContext.request.contextPath}/quantri/add">Thêm Quản Trị Viên</a>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Họ Tên</th>
                <th>Tên Đăng Nhập</th>
                <th>Email</th>
                <th>Số Điện Thoại</th>
                <th>Thao Tác</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="quanTri" items="${list}">
                <tr>
                    <td>${quanTri.lvhMaQuanTri}</td>
                    <td>${quanTri.lvhHoTen}</td>
                    <td>${quanTri.lvhTenDangNhap}</td>
                    <td>${quanTri.lvhEmail}</td>
                    <td>${quanTri.lvhSoDienThoai}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/quantri/edit/${quanTri.lvhMaQuanTri}">Sửa</a> |
                        <a href="${pageContext.request.contextPath}/quantri/delete/${quanTri.lvhMaQuanTri}" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
