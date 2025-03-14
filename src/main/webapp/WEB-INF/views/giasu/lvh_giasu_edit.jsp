<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2>Chỉnh Sửa Gia Sư</h2>

<form:form action="${pageContext.request.contextPath}/giasu/update" method="post" enctype="multipart/form-data" modelAttribute="giasu">
    <table>
        <tr>
            <td>Họ Tên:</td>
            <td><form:input path="lvhHoTen" value="${giasu.lvhHoTen}" /></td>
        </tr>
        <tr>
            <td>Ngày Sinh:</td>
            <td><form:input path="lvhNgaySinh" type="date" value="${giasu.lvhNgaySinh}" /></td>
        </tr>
        <tr>
            <td>Giới Tính:</td>
            <td>
                <form:select path="lvhGioiTinh" value="${giasu.lvhGioiTinh}">
                    <form:option value="Nam">Nam</form:option>
                    <form:option value="Nữ">Nữ</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td>Số Điện Thoại:</td>
            <td><form:input path="lvhSoDienThoai" value="${giasu.lvhSoDienThoai}" /></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td><form:input path="lvhEmail" value="${giasu.lvhEmail}" /></td>
        </tr>
        <tr>
            <td>Địa Chỉ:</td>
            <td><form:input path="lvhDiaChi" value="${giasu.lvhDiaChi}" /></td>
        </tr>
        <tr>
            <td>Trình Độ:</td>
            <td><form:input path="lvhTrinhDo" value="${giasu.lvhTrinhDo}" /></td>
        </tr>
        <tr>
            <td>Ảnh:</td>
            <td><form:input path="lvhAnh" type="file" /></td> <!-- Removed value="${giasu.lvhAnh}" because file input won't work with value -->
        </tr>
        <tr>
            <td>Mức Lương:</td>
            <td><form:input path="lvhMucLuong" type="number" step="0.01" value="${giasu.lvhMucLuong}" /></td>
        </tr>
        <tr>
            <td>Trạng Thái:</td>
            <td>
                <form:select path="lvhTrangThai" value="${giasu.lvhTrangThai}">
                    <form:option value="true">Active</form:option>
                    <form:option value="false">Inactive</form:option>
                </form:select>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Cập Nhật Gia Sư" /></td>
        </tr>
    </table>
</form:form>
