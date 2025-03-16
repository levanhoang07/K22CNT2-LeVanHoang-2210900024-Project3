<html>
<head>
    <title>Thêm Thanh Toán</title>
</head>
<body>
    <h2>Thêm Thanh Toán</h2>
    <form action="${pageContext.request.contextPath}/thanhtoan/save" method="post">
        <label>ID Học Viên:</label>
        <input type="number" name="lvhMaHocVien" required>
        <br>
        
        <label>ID Gia Sư:</label>
        <input type="number" name="lvhMaGiaSu" required>
        <br>
        
        <label>Số Tiền:</label>
        <input type="number" step="0.01" name="lvhSoTien" required>
        <br>

        <label>Ngày Thanh Toán:</label>
        <input type="date" name="lvhNgayThanhtoan" required>
        <br>

        <label>Loại Thanh Toán:</label>
        <select name="lvhLoaiThanhtoan">
            <option value="Chuyển khoản">Chuyển khoản</option>
            <option value="Tiền mặt">Tiền mặt</option>
        </select>
        <br>

        <input type="submit" value="Lưu">
    </form>
    <a href="${pageContext.request.contextPath}/thanhtoan/list">Quay lại</a>
</body>
</html>
