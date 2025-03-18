<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Đánh giá</title>
    <style>
        /* General body styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
            padding: 0;
        }

        /* Header styling */
        h2 {
            text-align: center;
            color: #6666FF;  /* Color for the title */
            font-size: 24px;
            font-weight: bold;
        }

        /* Form container styling */
        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 60%;
            margin: 20px auto;
        }

        /* Label and input styling */
        label {
            font-size: 16px;
            margin-bottom: 8px;
            display: inline-block;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        textarea {
            height: 120px;
        }

        /* Button styling */
        button[type="submit"] {
            background-color: #6666FF;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        button[type="submit"]:hover {
            background-color: #5757E6;
        }

        /* Back link styling */
        a {
            display: inline-block;
            background-color: #6c757d;
            color: white;
            padding: 8px 12px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            text-align: center;
        }

        a:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

    <h2>Thêm Đánh giá</h2>

    <form action="${pageContext.request.contextPath}/danhgia/save" method="post">
        <label>Họ Tên:</label>
        <input type="text" name="lvhHoTen" required><br>

        <label>Số Điện Thoại:</label>
        <input type="text" name="lvhSoDienThoai" required><br>

        <label>Bình Luận:</label>
        <textarea name="lvhBinhLuan" required></textarea><br>

        <button type="submit">Lưu</button>
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/danhgia/lvh_danhgia_list">Quay lại danh sách</a>

</body>
</html>
