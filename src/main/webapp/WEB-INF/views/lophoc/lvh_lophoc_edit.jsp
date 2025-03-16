<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Chỉnh sửa lớp học</title>
</head>
<body>
    <h2>Chỉnh sửa lớp học</h2>
    
    <form action="${pageContext.request.contextPath}/lophoc/update" method="post">
        <input type="hidden" name="lvhMaLop" value="${lopHoc.lvhMaLop}">

        <label>Tên Lớp:</label>
        <input type="text" name="lvhTenLop" value="${lopHoc.lvhTenLop}" required><br>

        <label>Môn Học:</label>
        <input type="text" name="lvhMonHoc" value="${lopHoc.lvhMonHoc}" required><br>

        <label>Mã Gia Sư:</label>
        <input type="number" name="lvhMaGiaSu" value="${lopHoc.lvhMaGiaSu}" required><br>

        <label>Mã Học Viên:</label>
        <input type="number" name="lvhMaHocVien" value="${lopHoc.lvhMaHocVien}" required><br>

        <label>Thời Gian Học:</label>
        <input type="text" name="lvhThoiGianHoc" value="${lopHoc.lvhThoiGianHoc}" required><br>

        <label>Địa Điểm Học:</label>
        <input type="text" name="lvhDiaDiemHoc" value="${lopHoc.lvhDiaDiemHoc}" required><br>

        <input type="submit" value="Cập nhật">
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/lophoc/lvh_lophoc_list">Quay lại danh sách</a>
</body>
</html>
