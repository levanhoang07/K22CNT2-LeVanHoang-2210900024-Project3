<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Học Viên</title>
</head>
<body>
    <h2>Thêm Học Viên</h2>
    <form action="${pageContext.request.contextPath}/hocvien/save" method="post">
        <label>Họ Tên:</label>
        <input type="text" name="lvhHoTen" required><br>

        <label>Ngày Sinh:</label>
        <input type="date" name="lvhNgaySinh" required><br>

        <label>Giới Tính:</label>
        <select name="lvhGioiTinh">
            <option value="Nam">Nam</option>
            <option value="Nữ">Nữ</option>
        </select><br>

        <label>Số Điện Thoại:</label>
        <input type="text" name="lvhSoDienThoai" required><br>

        <label>Email:</label>
        <input type="email" name="lvhEmail" required><br>

        <label>Địa Chỉ:</label>
        <input type="text" name="lvhDiaChi" required><br>

        <label>Lớp Muốn Học:</label>
        <input type="text" name="lvhLopMuonHoc" required><br>

        <label>Mật Khẩu:</label>
        <input type="password" name="lvhMatKhau" required><br>

        <label>Trạng Thái:</label>
        <select name="lvhTrangThai">
            <option value="true">Hoạt động</option>
            <option value="false">Ngừng hoạt động</option>
        </select><br>

        <button type="submit">Lưu</button>
        <a href="${pageContext.request.contextPath}/hocvien/list">Hủy</a>
    </form>
</body>
</html>
