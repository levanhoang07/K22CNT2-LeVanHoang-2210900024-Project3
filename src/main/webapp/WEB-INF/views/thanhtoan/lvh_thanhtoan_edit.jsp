<html>
<head>
    <title>Chỉnh sửa Thanh Toán</title>
</head>
<body>
    <h2>Chỉnh sửa Thanh Toán</h2>
    <form action="${pageContext.request.contextPath}/thanhtoan/update" method="post">
        <input type="hidden" name="lvhMaThanhtoan" value="${thanhtoan.lvhMaThanhtoan}">

        <label>ID Học Viên:</label>
        <input type="number" name="lvhMaHocVien" value="${thanhtoan.lvhMaHocVien}" required>
        <br>

        <label>ID Gia Sư:</label>
        <input type="number" name="lvhMaGiaSu" value="${thanhtoan.lvhMaGiaSu}" required>
        <br>

        <label>Số Tiền:</label>
        <input type="number" step="0.01" name="lvhSoTien" value="${thanhtoan.lvhSoTien}" required>
        <br>

        <label>Ngày Thanh Toán:</label>
        <input type="date" name="lvhNgayThanhtoan" value="${thanhtoan.lvhNgayThanhtoan}" required>
        <br>

        <label>Loại Thanh Toán:</label>
        <select name="lvhLoaiThanhtoan">
            <option value="Chuyển khoản" ${thanhtoan.lvhLoaiThanhtoan == 'Chuyển khoản' ? 'selected' : ''}>Chuyển khoản</option>
            <option value="Tiền mặt" ${thanhtoan.lvhLoaiThanhtoan == 'Tiền mặt' ? 'selected' : ''}>Tiền mặt</option>
        </select>
        <br>

        <input type="submit" value="Cập nhật">
    </form>
    <a href="${pageContext.request.contextPath}/thanhtoan/list">Quay lại</a>
</body>
</html>
