<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Form Thanh Toán</title>
</head>
<body>
<h2>${thanhToan.LvhMaThanhtoan == null ? 'Thêm' : 'Sửa'} Thanh Toán</h2>
<form:form modelAttribute="thanhtoan" method="POST" action="${thanhToan.LvhMaThanhtoan == null ? '/thanhtoan/save' : '/thanhtoan/update'}">
    <form:hidden path="LvhMaThanhtoan" />

    <label for="LvhMaHocVien">Mã Học Viên:</label>
    <form:input path="LvhMaHocVien" id="LvhMaHocVien" />

    <label for="LvhMaGiaSu">Mã Giá Sư:</label>
    <form:input path="LvhMaGiaSu" id="LvhMaGiaSu" />

    <label for="LvhSoTien">Số Tiền:</label>
    <form:input path="LvhSoTien" id="LvhSoTien" />

    <label for="LvhNgayThanhtoan">Ngày Thanh Toán:</label>
    <form:input path="LvhNgayThanhtoan" id="LvhNgayThanhtoan" />

    <label for="LvhLoaiThanhtoan">Loại Thanh Toán:</label>
    <form:select path="LvhLoaiThanhtoan" id="LvhLoaiThanhtoan">
        <form:option value="Học phí">Học phí</form:option>
        <form:option value="Lương">Lương</form:option>
    </form:select>

    <button type="submit">${thanhToan.LvhMaThanhtoan == null ? 'Thêm' : 'Cập nhật'}</button>
</form:form>
</body>
</html>
