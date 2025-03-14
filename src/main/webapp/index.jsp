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
        .register-section {
            display: flex;
            justify-content: space-between;
            max-width: 1000px;
            margin: 0 auto;
            padding: 40px;
            gap: 20px;
        }
        .register-tutor, .register-student {
            flex: 1;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            text-align: justify;
        }
        .intro-section h2, .register-tutor h2, .register-student h2 {
            color: #4a90e2;
            font-size: 1.8em;
            text-align: center;
            margin-bottom: 20px;
        }
        .intro-section p, .register-tutor p, .register-student p {
            font-size: 1.1em;
            margin-bottom: 20px;
        }
        .highlight {
            color: #e94e77;
            font-weight: bold;
        }
        .register-button {
            display: inline-block;
            padding: 15px 30px;
            background-color: #50e3c2;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .register-button:hover {
            background-color: #3cc7a5;
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
            <a href="qladmin">QLAdmin</a>
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
            Chúng tôi cung cấp các chương trình học đa dạng, từ các môn học cơ bản như Toán, Văn, Anh, Lý, Hóa, Sinh đến các lớp kỹ năng mềm như thuyết trình, tư duy sáng tạo, và quản lý thời gian. Mỗi khóa học đều được thiết kế để tối ưu hóa hiệu quả học tập, giúp học sinh không chỉ đạt được kết quả tốt trong các kỳ thi mà còn phát triển toàn diện về nhân cách và kỹ năng sống.
        </p>
        <p>
            Hãy để Trung tâm Gia sư Doremi trở thành người bạn đồng hành đáng tin cậy trên hành trình chinh phục tri thức của con em bạn. Chúng tôi cam kết mang lại <span class="highlight">kết quả vượt trội</span>, giúp các em không chỉ đạt điểm số cao mà còn xây dựng nền tảng vững chắc cho tương lai rực rỡ phía trước!
        </p>
    </section>

    <section class="register-section">
        <div class="register-tutor">
            <h2>Bạn muốn đăng ký làm gia sư?</h2>
            <p>
                Nếu bạn là một giáo viên, sinh viên đại học, hoặc bất kỳ ai có đam mê giảng dạy và mong muốn chia sẻ kiến thức của mình với thế hệ trẻ, <span class="highlight">Trung tâm Gia sư Doremi</span> luôn chào đón bạn gia nhập đội ngũ gia sư của chúng tôi. Chúng tôi tìm kiếm những người nhiệt huyết, có trách nhiệm và sẵn sàng đồng hành cùng học sinh trên con đường học tập.
            </p>
            <p>
                Khi trở thành gia sư tại Doremi, bạn sẽ được hưởng nhiều lợi ích tuyệt vời: linh hoạt về thời gian giảng dạy, mức thu nhập hấp dẫn dựa trên năng lực, cơ hội phát triển kỹ năng sư phạm, và sự hỗ trợ tận tình từ đội ngũ quản lý của trung tâm. Chúng tôi cung cấp các buổi đào tạo định kỳ để giúp bạn nâng cao kỹ năng giảng dạy, cách tiếp cận học sinh, và xây dựng bài giảng hiệu quả.
            </p>
            <p style="text-align: center;">
                <a href="/giasu/" class="register-button">Đăng ký làm gia sư ngay</a>
            </p>
        </div>

        <div class="register-student">
            <h2>Bạn muốn đăng ký học tại Doremi?</h2>
            <p>
                Bạn đang tìm kiếm một môi trường học tập chất lượng, nơi bạn hoặc con em bạn có thể phát triển toàn diện cả về kiến thức lẫn kỹ năng? <span class="highlight">Trung tâm Gia sư Doremi</span> chính là sự lựa chọn hoàn hảo dành cho bạn. Chúng tôi cung cấp các khóa học được thiết kế riêng theo nhu cầu của từng học sinh, từ việc cải thiện điểm số trên lớp, ôn thi chuyển cấp, đến chuẩn bị cho các kỳ thi quan trọng như đại học.
            </p>
            <p>
                Khi đăng ký học tại Doremi, bạn sẽ được làm việc 1-1 với gia sư phù hợp nhất dựa trên môn học, trình độ và mục tiêu cá nhân của bạn. Chúng tôi cam kết mang đến trải nghiệm học tập thú vị, không áp lực, giúp bạn tự tin nắm vững kiến thức và đạt được thành tích cao nhất.
            </p>
            <p style="text-align: center;">
                <a href="lvh_hocvien_form.jsp" class="register-button">Đăng ký học ngay</a>
            </p>
            
        </div>
    </section>

    <footer>
        <p>© 2025 Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
        <p>Theo dõi chúng tôi: <a href="https://www.facebook.com/people/Le-V-Hoang/pfbid0UcDPb8dS3FYzihsBB55FRGMHajBs4LH9MJvPg8LqveAzUBC58crhdsmauoQL1PJDl/" style="color: #50e3c2;">Facebook</a> | <a href="https://www.instagram.com/lev._hoang07?igsh=YnM3ajkyMjZoNHo0&utm_source=qr" style="color: #50e3c2;">Instagram</a> | <a href="#" style="color: #50e3c2;">YouTube</a></p>
    </footer>
</body>
</html>