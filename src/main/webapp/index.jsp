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
            padding: 10px;
            max-width: 1000px;
            margin: 0 auto;
            text-align: justify;
        }
        .intro-section h2 {
            color: #4a90e2;
            font-size: 2em;
            text-align: center;
            margin-bottom: 20px;
        }
        .intro-section p {
            font-size: 1.1em;
            margin-bottom: 20px;
        }
        .highlight {
            color: #e94e77;
            font-weight: bold;
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
    </style>
</head>
<body>
    <header>
        <h1>Trung tâm Gia sư Doremi</h1>
        <p style="font-size: 1.2em; margin: 10px 0;">Nơi kiến tạo tương lai - Đồng hành cùng thành công</p>
        <nav>
            <a href="index.jsp">Trang chủ</a>
            <a href="dangnhap.jsp">Đăng nhập</a>
            <a href="dangky.jsp">Đăng ký</a>
            <a href="qladmin.jsp">QLAdmin</a>
        </nav>
    </header>

    <section class="search-section">
        <h2>Tìm kiếm gia sư phù hợp cho bạn</h2>
        <form action="timkiem.jsp" method="GET">
            <input type="text" name="query" placeholder="Nhập môn học, lớp học hoặc khu vực...">
            <button type="submit">Tìm kiếm ngay</button>
        </form>
        <p style="margin-top: 15px; color: #666;">Hàng trăm gia sư chất lượng đang chờ đón bạn!</p>
    </section>

    <section class="intro-section">
        <h2>Giới thiệu về Trung tâm Gia sư Doremi</h2>
        <p>
            Chào mừng bạn đến với <span class="highlight">Trung tâm Gia sư Doremi</span> - nơi hội tụ những người thầy, người cô tận tâm, giàu kinh nghiệm và đam mê trong lĩnh vực giáo dục. Chúng tôi tự hào mang đến một nền giáo dục chất lượng cao, cá nhân hóa cho từng học sinh, từ cấp tiểu học, trung học cơ sở, trung học phổ thông đến ôn luyện thi đại học.
        </p>
        <p>
            Với sứ mệnh <span class="highlight">“Đồng hành cùng thế hệ trẻ vươn tới thành công”</span>, Doremi không chỉ đơn thuần là một trung tâm gia sư, mà còn là cầu nối giữa tri thức và ước mơ. Đội ngũ gia sư của chúng tôi được tuyển chọn kỹ lưỡng, đều là những chuyên gia có kinh nghiệm giảng dạy, hiểu tâm lý học sinh và luôn sẵn sàng thiết kế lộ trình học tập phù hợp nhất cho từng cá nhân.
        </p>
        <p>
            Tại Doremi, chúng tôi tin rằng mỗi học sinh đều có tiềm năng riêng biệt. Vì vậy, chúng tôi không chỉ giúp các em nắm vững kiến thức mà còn khơi dậy niềm đam mê học tập, phát triển tư duy logic, kỹ năng tự học và sự tự tin để chinh phục mọi thử thách trong học tập cũng như cuộc sống.
        </p>
        <p>
            Hãy để Trung tâm Gia sư Doremi trở thành người bạn đồng hành đáng tin cậy trên hành trình chinh phục tri thức của con em bạn. Chúng tôi cam kết mang lại <span class="highlight">kết quả vượt trội</span>, giúp các em không chỉ đạt điểm số cao mà còn xây dựng nền tảng vững chắc cho tương lai rực rỡ phía trước!
        </p>
    </section>

    <footer>
        <p>© 2025 Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
    </footer>
</body>
</html>