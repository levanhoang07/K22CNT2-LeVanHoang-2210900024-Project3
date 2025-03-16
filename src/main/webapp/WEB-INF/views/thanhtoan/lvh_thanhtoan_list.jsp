<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách thanh toán</title>
</head>
<body>
    <h2>Danh sách Thanh Toán</h2>
    <a href="${pageContext.request.contextPath}/thanhtoan/add">Thêm mới</a>
    <table border="1">
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
                    <a href="${pageContext.request.contextPath}/thanhtoan/edit/${tt.lvhMaThanhtoan}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/thanhtoan/delete/${tt.lvhMaThanhtoan}" onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
