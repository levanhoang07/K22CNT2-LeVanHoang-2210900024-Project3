<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Quản Lý</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        background: white;
    }
    .sidebar {
        width: 250px;
        background: linear-gradient(135deg, #4a90e2, #50e3c2);
        color: white;
        height: 100vh;
        padding-top: 20px;
        text-align: center;
    }
    .sidebar a {
        display: block;
        color: white;
        padding: 15px;
        text-decoration: none;
    }
    .sidebar a:hover {
        background: rgba(255, 255, 255, 0.2);
    }
    .content {
        flex: 1;
        padding: 20px;
    }
    .header {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .home-button {
        margin-left: 10px;
        color: white;
        text-decoration: none;
        font-size: 20px;
    }
</style>
<script>
    function loadContent(page) {
        document.getElementById("content-frame").src = page;
    }
</script>
</head>
<body>
    <div class="sidebar">
        <div class="header">
            <h2>Quản Lý</h2>
            <a href="index.jsp" class="home-button">↩</a>
        </div>
        <a href="LvhQuantri/quantrilist.jsp">Quản Trị</a>

        <a href="#" onclick="loadContent('table2.jsp')">Bảng 2</a>
        <a href="#" onclick="loadContent('table3.jsp')">Bảng 3</a>
        <a href="#" onclick="loadContent('table4.jsp')">Bảng 4</a>
        <a href="#" onclick="loadContent('table5.jsp')">Bảng 5</a>
        <a href="#" onclick="loadContent('table6.jsp')">Bảng 6</a>
    </div>
    <div class="content">
        <a href="#" style="display: block; text-align: center; font-size: 22px; margin: 15px 0; color: #007bff; text-decoration: none; font-weight: bold;">
    🌟 Xin chào, Admin kính mến! Chào mừng bạn đến với trang quản lý. Chúc bạn một ngày làm việc hiệu quả và thành công! 🚀
</a>
        
    </div>
</body>
</html>
