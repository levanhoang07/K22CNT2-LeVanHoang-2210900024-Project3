<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sửa Học Viên</title>
    <style>
        /* General Page Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }

        label {
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
            display: block;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin: 8px 0 16px 0;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        input[type="text"], input[type="email"], input[type="date"], select {
            background-color: #fafafa;
        }

        input[type="submit"], button {
            background-color: #6666FF;
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        input[type="submit"]:hover, button:hover {
            background-color: #5757E6;
        }

        a {
            color: #6666FF;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            color: #5757E6;
        }

        /* Additional Styling for the Cancel link */
        .cancel-link {
            display: inline-block;
            margin-top: 10px;
            text-align: center;
            width: 100%;
            font-size: 14px;
            color: #6666FF;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            form {
                padding: 15px;
                width: 90%;
            }
        }
    </style>
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

        <label>Mật Khẩu:</label>
        <input name="lvhMatKhau" value="${hocvien.lvhMatKhau}" required><br>

        <label>Email:</label>
        <input type="email" name="lvhEmail" value="${hocvien.lvhEmail}" required><br>

        <label>Địa Chỉ:</label>
        <input type="text" name="lvhDiaChi" value="${hocvien.lvhDiaChi}" required><br>

        <label>Lớp Muốn Học:</label>
        <input type="text" name="lvhLopMuonHoc" value="${hocvien.lvhLopMuonHoc}" required><br>

        <label>Trạng Thái:</label>
        <select name="lvhTrangThai">
            <option value="true" ${hocvien.lvhTrangThai ? 'selected' : ''}>Hoạt động</option>
            <option value="false" ${!hocvien.lvhTrangThai ? 'selected' : ''}>Ngừng hoạt động</option>
        </select><br>

        <button type="submit">Cập Nhật</button>
        <div class="cancel-link">
            <a href="${pageContext.request.contextPath}/hocvien/lvh_hocvien_list">Hủy</a>
        </div>
    </form>
    
</body>
</html>
