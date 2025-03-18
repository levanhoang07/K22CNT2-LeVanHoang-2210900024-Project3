<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trung tâm Gia sư Doremi - Kiến tạo tương lai</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
            color: #333;
        }

        header {
            background: linear-gradient(135deg, #4a90e2, #50e3c2);
            color: white;
            padding: 20px 40px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        header h1 {
            margin: 0;
            font-size: 2.5em;
            letter-spacing: 1px;
        }

        nav {
            margin-top: 15px;
        }

        nav a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
            transition: color 0.3s;
        }

        nav a:hover {
            color: #ffeb3b;
        }

        .search-section {
            padding: 40px;
            text-align: center;
            background-color: #fff;
            margin: 20px auto;
            max-width: 800px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }

        .search-section input[type="text"] {
            padding: 12px;
            width: 60%;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
        }

        .search-section button {
            padding: 12px 25px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s;
        }

        .search-section button:hover {
            background-color: #357abd;
        }

        .intro-section {
            padding: 40px;
            max-width: 1000px;
            margin: 0 auto;
            text-align: justify;
        }

        .tutor-section {
            background-color: #fff;
            padding: 40px;
            margin: 40px auto;
            max-width: 1000px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            text-align: center;
        }

        .tutor-section h2 {
            color: #4a90e2;
            font-size: 2em;
            margin-bottom: 30px;
        }

        .tutor-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            gap: 20px;
        }

        .tutor-card {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            width: 220px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .tutor-card img {
            width: 100%;
            height: auto;
            border-radius: 50%;
            border: 3px solid #ddd;
        }

        .tutor-card h3 {
            margin-top: 15px;
            color: #333;
            font-size: 1.2em;
        }

        .tutor-card p {
            color: #666;
            font-size: 1em;
            margin-top: 10px;
        }

        .tutor-card .tutor-link {
            color: #50e3c2;
            font-weight: bold;
            text-decoration: none;
            margin-top: 10px;
            display: inline-block;
        }

        .tutor-card .tutor-link:hover {
            text-decoration: underline;
        }

        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            position: relative;
            bottom: 0;
            width: 100%;
        }

        footer p {
            margin: 0;
            font-size: 0.9em;
        }

        footer a {
            color: #50e3c2;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }

    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Trung tâm Gia sư Doremi</h1>
        <p style="font-size: 1.2em; margin: 10px 0;">Nơi kiến tạo tương lai - Đồng hành cùng thành công</p>
        <nav>
            <a href="index.jsp">Trang chủ</a>
            <a href="dangnhap.jsp">Đăng nhập</a>
            <a href="dangky.jsp">Đăng ký</a>
            <a href="qladmin">QLAdmin</a>
        </nav>
    </header>

    <!-- Search Section -->
    <section class="search-section">
        <h2>Tìm kiếm gia sư phù hợp cho bạn</h2>
        <form action="timkiem.jsp" method="GET">
            <input type="text" name="query" placeholder="Nhập môn học, lớp học hoặc khu vực...">
            <button type="submit">Tìm kiếm ngay</button>
        </form>
        <p style="margin-top: 15px; color: #666;">Hàng trăm gia sư chất lượng đang chờ đón bạn!</p>
    </section>

    <!-- Introduction Section -->
    <section class="intro-section">
        <h2>Giới thiệu về Trung tâm Gia sư Doremi</h2>
        <p>
            Chào mừng bạn đến với <span class="highlight">Trung tâm Gia sư Doremi</span> - nơi hội tụ những người thầy, người cô tận tâm, giàu kinh nghiệm và đam mê trong lĩnh vực giáo dục. Chúng tôi tự hào mang đến một nền giáo dục chất lượng cao, cá nhân hóa cho từng học sinh, từ cấp tiểu học, trung học cơ sở, trung học phổ thông đến ôn luyện thi đại học.
        </p>
        <p>
            Với sứ mệnh <span class="highlight">“Đồng hành cùng thế hệ trẻ vươn tới thành công”</span>, Doremi không chỉ đơn thuần là một trung tâm gia sư, mà còn là cầu nối giữa tri thức và ước mơ.
        </p>
        <p>
            Hãy để Trung tâm Gia sư Doremi trở thành người bạn đồng hành đáng tin cậy trên hành trình chinh phục tri thức của con em bạn.
        </p>
    </section>

    <!-- Tutor Section -->
    <section class="tutor-section">
        <h2>Đội ngũ gia sư của chúng tôi</h2>
        <div class="tutor-list">
            <!-- Tutor Card 1 -->
            <div class="tutor-card">
                <img src="images/gs1.jpg" alt="Gia Sư 1">
                <h3>Ths. Trịnh Văn Chung</h3>
                <p>Gia sư môn CNTT, với hơn 15 năm kinh nghiệm giảng dạy và là cử nhân chuyên ngành Công nghệ thông tin .</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>

            <!-- Tutor Card 2 -->
            <div class="tutor-card">
                <img src="${pageContext.request.contextPath}/images/gs2.jpg" alt="Gia Sư 2">
                <h3>Đinh Thị Thu Hương</h3>
                <p>Gia sư môn Tiếng Anh, tốt nghiệp đại học với điểm TOEFL 105, chuyên dạy giao tiếp và luyện thi IELTS.</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>

            <!-- Tutor Card 3 -->
            <div class="tutor-card">
                <img src="${pageContext.request.contextPath}/images/gs3.jpg" alt="Gia Sư 3">
                <h3>Lê Văn Hoàng</h3>
                <p>Gia sư môn Lý, tốt nghiệp khoa Vật lý, chuyên dạy ôn thi đại học và giúp học sinh phát triển kỹ năng tư duy logic.</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>
        </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>© 2025 Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
        <p>Theo dõi chúng tôi: 
            <a href="https://www.facebook.com/people/Le-V-Hoang/pfbid0UcDPb8dS3FYzihsBBE3WkvGR3aST9gquFkD3Gy2s8MiWVvZo1bq8eXq1sfqvZdUSl/" target="_blank">Facebook</a>
        </p>
    </footer>
</body>
</html>