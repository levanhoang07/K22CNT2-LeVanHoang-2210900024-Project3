<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/hocvien/save" method="post">
    <input type="hidden" name="lvhMaHocVien" value="${hocvien.lvhMaHocVien}"/>
    <label>Họ Tên:</label>
    <input type="text" name="lvhHoTen" value="${hocvien.lvhHoTen}" required/>
    <label>Ngày Sinh:</label>
    <input type="date" name="lvhNgaySinh" value="${hocvien.lvhNgaySinh}" required/>
    <label>Giới Tính:</label>
    <select name="lvhGioiTinh">
        <option value="Nam" ${hocvien.lvhGioiTinh == 'Nam' ? 'selected' : ''}>Nam</option>
        <option value="Nữ" ${hocvien.lvhGioiTinh == 'Nữ' ? 'selected' : ''}>Nữ</option>
    </select>
    <label>Số Điện Thoại:</label>
    <input type="text" name="lvhSoDienThoai" value="${hocvien.lvhSoDienThoai}" required/>
    <label>Email:</label>
    <input type="email" name="lvhEmail" value="${hocvien.lvhEmail}" required/>
    <label>Địa Chỉ:</label>
    <input type="text" name="lvhDiaChi" value="${hocvien.lvhDiaChi}" required/>
    <label>Lớp Muốn Học:</label>
    <input type="text" name="lvhLopMuonHoc" value="${hocvien.lvhLopMuonHoc}" required/>
    <label>Mật Khẩu:</label>
    <input type="password" name="lvhMatKhau" value="${hocvien.lvhMatKhau}" required/>
    <label>Trạng Thái:</label>
    <select name="lvhTrangThai">
        <option value="true" ${hocvien.lvhTrangThai == true ? 'selected' : ''}>Kích Hoạt</option>
        <option value="false" ${hocvien.lvhTrangThai == false ? 'selected' : ''}>Không Kích Hoạt</option>
    </select>
    <button type="submit">Lưu</button>
</form>


</body>
</html>