<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Chỉnh sửa Thanh Toán</title>
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
            color: #6666FF; /* Blue color for the title */
            font-size: 24px;
            font-weight: bold;
        }

        /* Form container styling */
        form {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: 0 auto;
        }

        /* Label styling */
        label {
            font-weight: bold;
            margin-top: 10px;
            display: inline-block;
            width: 150px;
        }

        /* Input and select field styling */
        input[type="number"],
        input[type="text"],
        input[type="date"],
        select {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        /* Submit button styling */
        input[type="submit"] {
            background-color: #6666FF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #5555cc;
        }

        /* Back link styling */
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 16px;
            color: #6666FF;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
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

    <a href="${pageContext.request.contextPath}/thanhtoan/lvh_thanhtoan_list">Quay lại</a>
</body>
</html>
