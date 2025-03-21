<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trung tâm Gia sư Doremi - Kiến tạo tương lai</title>
    <style>
        body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    background: #fff;
    color: #333;
}


        header {
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, #4a90e2, #50e3c2);
            color: #fff;
        }
        h1, h2 {
            margin-bottom: 10px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.1em;
            transition: 0.3s;
        }
        nav a:hover {
            text-decoration: underline;
        }
        .search-section, .intro-section, .registration-section, .tutor-section {
            padding: 40px;
            text-align: center;
            background: rgba(255, 255, 255, 0.9);
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .search-section input {
            width: 60%;
            padding: 10px;
            border: 1px solid #4a90e2;
            border-radius: 5px;
            margin-top: 10px;
        }
        .search-section button {
            background: #4a90e2;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: 0.3s;
        }
        .search-section button:hover {
            background: #357ABD;
        }
        
        .tutor-list {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .tutor-card {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 250px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .tutor-card img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }
        .tutor-card a {
            display: inline-block;
            margin-top: 10px;
            color: #4a90e2;
            text-decoration: none;
            padding: 5px 10px;
            border: 1px solid #4a90e2;
            border-radius: 5px;
            transition: 0.3s;
        }
        .tutor-card a:hover {
            background: #4a90e2;
            color: #fff;
        }
        footer {
            text-align: center;
            padding: 20px;
            background: linear-gradient(135deg, #4a90e2, #50e3c2);
            color: #fff;
        }
        .register-button {
            background: #50e3c2;
            color: #fff;
            padding: 10px 15px;
            text-decoration: none;
            border-radius: 5px;
            margin: 5px;
            display: inline-block;
            transition: 0.3s;
        }
        .register-button:hover {
            background: #38c9a6;
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Trung tâm Gia sư Doremi 🎓</h1>
<p style="font-size: 1.2em; margin: 10px 0;">✨ Nơi kiến tạo tương lai - Đồng hành cùng thành công 🏆</p>
        <nav>
            <a href="index.jsp">🏠 Trang chủ</a>
			<a href="dangnhap.jsp">🔑 Đăng nhập</a>
			<a href="dangky.jsp">📝 Đăng ký</a>
			<a href="qladmin">🛠️ QLAdmin</a>
        </nav>
    </header>

    <!-- Search Section -->
    <section class="search-section">
        <h2>🔍 Tìm kiếm gia sư phù hợp cho bạn</h2>

        <form action="timkiem.jsp" method="GET">
            <input type="text" name="query" placeholder="Nhập môn học, lớp học hoặc khu vực...">
            <button type="submit">Tìm kiếm ngay</button>
        </form>
        <p style="margin-top: 15px; color: #666;">Hàng trăm gia sư chất lượng đang chờ đón bạn!</p>
    </section>

    <section class="intro-section">
       <h2>📢 Giới thiệu về Trung tâm Gia sư Doremi 🎓</h2>

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
    <!-- Registration Section -->
<section class="registration-section">
    <h2>🤝 Tham gia cùng Trung tâm Gia sư Doremi ngay hôm nay! 🚀</h2>

    <p>
        Bạn đang tìm kiếm một môi trường học tập chất lượng, phương pháp giảng dạy hiệu quả và lộ trình cá nhân hóa theo năng lực?  
        Hay bạn là một giáo viên, một sinh viên giỏi, đam mê giảng dạy và muốn giúp đỡ thế hệ trẻ vươn xa hơn trên con đường học tập?  
        Trung tâm Gia sư Doremi luôn sẵn sàng chào đón bạn!  
    </p>
    <p>
        Đến với Doremi, học viên sẽ được kết nối với đội ngũ gia sư giỏi, nhiệt huyết và giàu kinh nghiệm, giúp các em đạt được kết quả học tập tốt nhất.  
        Đối với các gia sư, đây là cơ hội tuyệt vời để phát triển sự nghiệp giảng dạy, truyền đạt kiến thức và tạo ra những giá trị tích cực cho cộng đồng.  
    </p>
    <p>
        Hãy đăng ký ngay hôm nay để trở thành một phần của Trung tâm Gia sư Doremi – nơi khởi đầu cho những ước mơ và thành công trong tương lai!
    </p>
    <div class="registration-buttons">
        <a href="/K22CNT2-LVH-2210900024-Project3/hocvien/add" class="register-button">Đăng ký làm học viên</a>
        <a href="/K22CNT2-LVH-2210900024-Project3/giasu/add" class="register-button">Đăng ký làm gia sư</a>
    </div>
</section>

    <!-- Tutor Section -->
    <section class="tutor-section">
        <h2>👩‍🏫 Đội ngũ gia sư của chúng tôi 🎓</h2>

        <div class="tutor-list">
            <!-- Tutor Card 1 -->
            <div class="tutor-card">
                <img src="https://devmaster.edu.vn/images/mr_trinhvanchung.gif" alt="Gia Sư 1">
                <h3>Ths. Trịnh Văn Chung</h3>
                <p>Gia sư môn CNTT, với hơn 15 năm kinh nghiệm giảng dạy và là cử nhân chuyên ngành Công nghệ thông tin .</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>

            <!-- Tutor Card 2 -->
            <div class="tutor-card">
                <img src="https://scontent.fhan14-5.fna.fbcdn.net/v/t39.30808-1/435668494_925138306068763_4082568069497015350_n.jpg?stp=cp6_dst-jpg_s200x200_tt6&_nc_cat=109&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeG8beyTJ708UDEzeF4d0TRQb0r0YWHVnrtvSvRhYdWeu8vGZ-sstaVLJo2tlybHt__GaviTlSFaWhcC7PAqmAeW&_nc_ohc=1tzZk6vIg54Q7kNvgG6Pfzg&_nc_oc=AdkzMroBQKFEGf_zZc17uK9jzU57r6ALydX79koujVM5DacoiYp9jYmSEjhxSESga7w&_nc_zt=24&_nc_ht=scontent.fhan14-5.fna&_nc_gid=Aul4rYIR00fdOSgNH_4f8Q&oh=00_AYEi34JPvXRn1seE-pIZmsd6WJZ9uOsBaaPiHixshuLD5w&oe=67E2B2E9" alt="Gia Sư 3">
                <h3>Lê Văn Hoàng</h3>
                <p>Gia sư môn Lý, tốt nghiệp khoa Vật lý, chuyên dạy ôn thi đại học và giúp học sinh phát triển kỹ năng tư duy logic.</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>

            <!-- Tutor Card 3 -->           
            <div class="tutor-card">
                <img src="https://scontent.fhan14-5.fna.fbcdn.net/v/t39.30808-1/461315758_1165360064562671_3456815912412547585_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=104&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeGLm34sppKEPwLomwG7OaXC0WcJ7S3Qi3zRZwntLdCLfOaPc98MrJBkt09UC-qTO5JanRyL4kGa8YMsu9zKVCAp&_nc_ohc=VkYEhrN1mKAQ7kNvgFzjtQ7&_nc_oc=AdnIcQzPqs9GkdJys6cGinDd9NgnQdjNl5LTOrmUT_-PwhaER6bZU9JGXW8O9u7X_Fg&_nc_zt=24&_nc_ht=scontent.fhan14-5.fna&_nc_gid=8z-Ha4KNw-5YEDSlAaxTRA&oh=00_AYEK4ogC9k6UyvZo_qN5_iE6zC6K8eAunuTcjXesq-h7pQ&oe=67E2A917" alt="Gia Sư 2">
                <h3>Đinh Thị Thu Hương</h3>
                <p>Gia sư môn Tiếng Anh, tốt nghiệp đại học với điểm TOEFL 105, chuyên dạy giao tiếp và luyện thi IELTS.</p>
                <a href="#" class="tutor-link">Xem chi tiết</a>
            </div>
    </section>

    <!-- Footer Section -->
    <footer>
        <p>©Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
        <p>Theo dõi chúng tôi: 
            <a href="https://www.facebook.com/profile.php?id=100057178057506" target="_blank">Facebook</a>
        </p>
    </footer>
</body>
</html>