<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Form Đánh Giá</title>
</head>
<body>
<h2>${danhgia.LvhMaDanhGia == null ? 'Thêm' : 'Sửa'} Đánh Giá</h2>
<form:form modelAttribute="danhgia" method="POST" action="${danhgia.LvhMaDanhGia == null ? '/danhgia/save' : '/danhgia/update'}">
    <form:hidden path="LvhMaDanhGia" />

    <label for="LvhHoTen">Họ Tên:</label>
    <form:input path="LvhHoTen" id="LvhHoTen" />

    <label for="LvhSoDienThoai">Số Điện Thoại:</label>
    <form:input path="LvhSoDienThoai" id="LvhSoDienThoai" />

    <label for="LvhBinhLuan">Bình Luận:</label>
    <form:textarea path="LvhBinhLuan" id="LvhBinhLuan"></form:textarea>

    <button type="submit">${danhgia.LvhMaDanhGia == null ? 'Thêm' : 'Cập nhật'}</button>
</form:form>
</body>
</html>
