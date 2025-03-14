<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
        margin: 0;
        padding: 0;
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
        font-size: 18px;
    }
    .sidebar a:hover {
        background: rgba(255, 255, 255, 0.2);
    }
    .content {
        flex: 1;
        padding: 20px;
        background-color: #f7f7f7;
    }
    .header {
        display: flex;
        justify-content: center;
        align-items: center;
        margin-bottom: 20px;
    }
    .home-button {
        margin-right: 10px;
        color: white;
        text-decoration: none;
        font-size: 20px;
    }
    .main-message {
        display: block;
        text-align: center;
        font-size: 30px;
        margin: 15px 0;
        color: #007bff;
        text-decoration: none;
        font-weight: bold;
    }
</style>
</head>
<body>
    <div class="sidebar">
        <div class="header">
            <a href="index.jsp" class="home-button">↩</a><h2>Quản Lý</h2>
        </div>
        <a href="${pageContext.request.contextPath}/quanli/lvh_quantri_list">Quản Trị</a>
        <a href="${pageContext.request.contextPath}/giasu/lvh_giasu_list">Gia sư</a>
        <a href="${pageContext.request.contextPath}/lvh_hocvien_list">Học viên</a>
        <a href="${pageContext.request.contextPath}/lvh_lophoc_list">Lớp học</a>
        <a href="${pageContext.request.contextPath}/lvh_thanhtoan_list">Thanh toán</a>
        <a href="${pageContext.request.contextPath}/lvh_danhgia_list">Đánh giá</a>
    </div>
    <div class="content">
        <a href="#" class="main-message">
            🌟 Chào mừng bạn đến với trang quản lý. Chúc bạn một ngày làm việc hiệu quả và thành công! 🚀
        </a>
    </div>
</body>
</html>
