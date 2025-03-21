<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng Ký</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 10px;
            margin-top: 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Đăng Ký</h2>
    <form action="dangky_xuly.jsp" method="POST">
        <label for="LvhHoTen">Họ và tên:</label>
        <input type="text" id="LvhHoTen" name="LvhHoTen" placeholder="Nhập họ và tên của bạn" required>
        
        <label for="LvhEmail">Email:</label>
        <input type="email" id="LvhEmail" name="LvhEmail" placeholder="Nhập địa chỉ email" required>
        
        <label for="LvhSoDienThoai">Số điện thoại:</label>
        <input type="text" id="LvhSoDienThoai" name="LvhSoDienThoai" placeholder="Nhập số điện thoại" required>
        
        <label for="LvhMatKhau">Mật khẩu:</label>
        <input type="password" id="LvhMatKhau" name="LvhMatKhau" placeholder="Nhập mật khẩu" required>
        
        <label for="role">Bạn muốn đăng ký làm:</label>
        <select id="role" name="role" required>
            <option value="" disabled selected>Chọn vai trò</option>
            <option value="hocvien">Học viên</option>
            <option value="giasu">Gia sư</option>
        </select>
        
        <button type="submit">Đăng ký</button>
    </form>
</div>

</body>
</html>
