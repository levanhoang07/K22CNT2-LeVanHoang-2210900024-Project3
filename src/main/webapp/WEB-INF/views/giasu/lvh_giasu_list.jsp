<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h2>Danh Sách Gia Sư</h2>
<a href="${pageContext.request.contextPath}/giasu/add">Thêm Gia Sư</a>
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
            <th>Trình Độ</th>
            <th>Ảnh</th>
            <th>Mức Lương</th>
            <th>Trạng Thái</th>
            <th>Thao Tác</th>
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
                <td>${giasu.lvhTrinhDo}</td>
                <td>${giasu.lvhAnh}</td>
                <td>${giasu.lvhMucLuong}</td>
                <td>${giasu.lvhTrangThai}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/giasu/edit/${giasu.lvhMaGiaSu}">Sửa</a> |
                    <a href="${pageContext.request.contextPath}/giasu/delete/${giasu.lvhMaGiaSu}" onclick="return confirm('Bạn chắc chắn muốn xóa?')">Xóa</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
