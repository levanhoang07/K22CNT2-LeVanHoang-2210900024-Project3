<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa Học Viên</title>
</head>
<body>
    <h2>Sửa Học Viên</h2>
    <form action="${pageContext.request.contextPath}/hocvien/update" method="post">
        <input type="hidden" name="lvhMaHocVien" value="${hocvien.lvhMaHocVien}">

        <label>Họ Tên:</label>
        <input type="text" name="lvhHoTen" value="${hocvien.lvhHoTen}" required><br>

        <label>Ngày Sinh:</label>
        <input type="date" name="lvhNgaySinh" value="${hocvien.lvhNgaySinh}" required><br>

        <label>Giới Tính:</label>
        <select name="lvhGioiTinh">
            <option value="Nam" ${hocvien.lvhGioiTinh == 'Nam' ? 'selected' : ''}>Nam</option>
            <option value="Nữ" ${hocvien.lvhGioiTinh == 'Nữ' ? 'selected' : ''}>Nữ</option>
        </select><br>

        <label>Số Điện Thoại:</label>
        <input type="text" name="lvhSoDienThoai" value="${hocvien.lvhSoDienThoai}" required><br>

        <label>Email:</label>
        <input type="email" name="lvhEmail" value="${hocvien.lvhEmail}" required><br>

        <label>Địa Chỉ:</label>
        <input type="text" name="lvhDiaChi" value="${hocvien.lvhDiaChi}" required><br>

        <label>Lớp Muốn Học:</label>
        <input type="text" name="lvhLopMuonHoc" value="${hocvien.lvhLopMuonHoc}" required><br>

        <label>Mật Khẩu:</label>
        <input type="password" name="lvhMatKhau" value="${hocvien.lvhMatKhau}" required><br>

        <label>Trạng Thái:</label>
        <select name="lvhTrangThai">
            <option value="true" ${hocvien.lvhTrangThai ? 'selected' : ''}>Hoạt động</option>
            <option value="false" ${!hocvien.lvhTrangThai ? 'selected' : ''}>Ngừng hoạt động</option>
        </select><br>

        <button type="submit">Cập Nhật</button>
        <a href="${pageContext.request.contextPath}/hocvien/list">Hủy</a>
    </form>
</body>
</html>
