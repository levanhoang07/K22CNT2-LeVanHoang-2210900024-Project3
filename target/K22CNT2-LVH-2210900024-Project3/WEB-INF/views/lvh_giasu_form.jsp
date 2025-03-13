<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Form Gia Sư</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>" />
</head>
<body>
    <h1>${giasu.lvhMaGiaSu == null ? 'Thêm Gia Sư' : 'Chỉnh Sửa Gia Sư'}</h1>
    
    <form:form method="post" action="${giasu.lvhMaGiaSu == null ? '/giasu/save' : '/giasu/update'}" modelAttribute="giasu">
        <div>
            <label for="lvhHoTen">Họ Tên:</label>
            <form:input path="lvhHoTen" id="lvhHoTen" />
        </div>

        <div>
            <label for="lvhNgaySinh">Ngày Sinh:</label>
            <form:input path="lvhNgaySinh" id="lvhNgaySinh" type="date" />
        </div>

        <div>
            <label for="lvhGioiTinh">Giới Tính:</label>
            <form:select path="lvhGioiTinh">
                <form:option value="Nam">Nam</form:option>
                <form:option value="Nữ">Nữ</form:option>
            </form:select>
        </div>

        <div>
            <label for="lvhSoDienThoai">Số Điện Thoại:</label>
            <form:input path="lvhSoDienThoai" id="lvhSoDienThoai" />
        </div>

        <div>
            <label for="lvhEmail">Email:</label>
            <form:input path="lvhEmail" id="lvhEmail" />
        </div>

        <div>
            <label for="lvhDiaChi">Địa Chỉ:</label>
            <form:input path="lvhDiaChi" id="lvhDiaChi" />
        </div>

        <div>
            <label for="lvhTrinhDo">Trình Độ:</label>
            <form:input path="lvhTrinhDo" id="lvhTrinhDo" />
        </div>

        <div>
            <label for="lvhAnh">Ảnh:</label>
            <form:input path="lvhAnh" id="lvhAnh" />
        </div>

        <div>
            <label for="lvhMucLuong">Mức Lương:</label>
            <form:input path="lvhMucLuong" id="lvhMucLuong" type="number" step="0.01" />
        </div>

        <div>
            <label for="lvhMatKhau">Mật Khẩu:</label>
            <form:input path="lvhMatKhau" id="lvhMatKhau" type="password" />
        </div>

        <div>
            <label for="lvhTrangThai">Trạng Thái:</label>
            <form:select path="lvhTrangThai">
                <form:option value="true">Hoạt động</form:option>
                <form:option value="false">Ngừng hoạt động</form:option>
            </form:select>
        </div>

        <div>
            <button type="submit">Lưu</button>
        </div>
    </form:form>

    <a href="<c:url value='/giasu/list'/>">Quay lại danh sách</a>
</body>
</html>
