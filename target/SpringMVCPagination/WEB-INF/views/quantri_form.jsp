<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<form action="quantri" method="post">
    <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
    <label>Họ Tên: <input type="text" name="LvhHoTen"></label>
    <label>Tên Đăng Nhập: <input type="text" name="LvhTenDangNhap"></label>
    <label>Mật Khẩu: <input type="password" name="LvhMatKhau"></label>
    <label>Email: <input type="email" name="LvhEmail"></label>
    <label>Số Điện Thoại: <input type="text" name="LvhSoDienThoai"></label>
    <button type="submit" name="action" value="<%= (request.getParameter("id") == null) ? "add" : "edit" %>">
        <%= (request.getParameter("id") == null) ? "Thêm" : "Cập nhật" %>
    </button>
</form>

</head>
<body>

</body>
</html>