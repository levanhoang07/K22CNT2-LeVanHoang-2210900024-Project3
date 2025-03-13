<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Form Quản Trị Viên</title>
</head>
<body>
    <h2>${quanTri.lvhMaQuanTri == null ? 'Thêm' : 'Sửa'} Quản Trị Viên</h2>
    <form:form modelAttribute="quanTri" action="${quanTri.lvhMaQuanTri == null ? '/quantri/save' : '/quantri/update'}" method="post">
        <form:hidden path="lvhMaQuanTri" />
        <label>Họ Tên: <form:input path="lvhHoTen" /></label><br/>
        <label>Tên Đăng Nhập: <form:input path="lvhTenDangNhap" /></label><br/>
        <label>Mật Khẩu: <form:password path="lvhMatKhau" /></label><br/>
        <label>Email: <form:input path="lvhEmail" /></label><br/>
        <label>Số Điện Thoại: <form:input path="lvhSoDienThoai" /></label><br/>
        <button type="submit">${quanTri.lvhMaQuanTri == null ? 'Thêm' : 'Cập nhật'}</button>
    </form:form>
</body>
</html>
