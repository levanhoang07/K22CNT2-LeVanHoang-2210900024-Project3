<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Thêm lớp học</title>
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

        /* Form styling */
        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: 0 auto;
        }

        label {
            display: block;
            font-weight: bold;
            margin: 10px 0 5px;
        }

        input[type="text"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #6666FF;
            color: white;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #5757E6;
        }

        /* Link styling */
        a {
            display: inline-block;
            text-align: center;
            background-color: #6c757d;
            color: white;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            width: fit-content;
            margin: 20px auto;
        }

        a:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>

    <h2>Thêm lớp học mới</h2>
    
    <form action="${pageContext.request.contextPath}/lophoc/save" method="post">
        <label>Tên Lớp:</label>
        <input type="text" name="lvhTenLop" required>

        <label>Môn Học:</label>
        <input type="text" name="lvhMonHoc" required>

        <label>Mã Gia Sư:</label>
        <input type="number" name="lvhMaGiaSu" required>

        <label>Mã Học Viên:</label>
        <input type="number" name="lvhMaHocVien" required>

        <label>Thời Gian Học:</label>
        <input type="text" name="lvhThoiGianHoc" required>

        <label>Địa Điểm Học:</label>
        <input type="text" name="lvhDiaDiemHoc" required>

        <input type="submit" value="Lưu">
    </form>

    <br>
    <a href="${pageContext.request.contextPath}/lophoc/lvh_lophoc_list">Quay lại danh sách</a>

</body>
</html>
