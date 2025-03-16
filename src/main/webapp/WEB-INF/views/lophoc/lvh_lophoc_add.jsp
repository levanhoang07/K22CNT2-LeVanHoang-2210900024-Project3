<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm lớp học</title>
</head>
<body>
    <h2>Thêm lớp học mới</h2>
    
    <form action="${pageContext.request.contextPath}/lophoc/save" method="post">
        <label>Tên Lớp:</label>
        <input type="text" name="lvhTenLop" required><br>

        <label>Môn Học:</label>
        <input type="text" name="lvhMonHoc" required><br>

        <label>Mã Gia Sư:</label>
        <input type="number" name="lvhMaGiaSu" required><br>

        <label>Mã Học Viên:</label>
        <input type="number" name="lvhMaHocVien" required><br>

        <label>Thời Gian Học:</label>
        <input type="text" name="lvhThoiGianHoc" required><br>

        <label>Địa Điểm Học:</label>
        <input type="text" name="lvhDiaDiemHoc" required><br>

        <input type="submit" value="Lưu">
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/lophoc/lvh_lophoc_list">Quay lại danh sách</a>
</body>
</html>
