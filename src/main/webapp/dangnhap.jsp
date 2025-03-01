<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng nhập - Trung tâm Gia sư Doremi</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fa;
            color: #333;
            line-height: 1.6;
        }
        header {
            background: linear-gradient(135deg, #4a90e2, #50e3c2);
            color: white;
            padding: 20px 40px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            font-size: 2.2em;
            margin-bottom: 10px;
            letter-spacing: 1px;
        }
        nav {
            margin-top: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 20px;
            font-weight: bold;
            font-size: 1.1em;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffeb3b;
        }
        section {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            font-size: 1.1em;
            margin-bottom: 8px;
            color: #4a90e2;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"] {
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1em;
            width: 100%;
            transition: border-color 0.3s;
        }
        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #4a90e2;
            outline: none;
        }
        button {
            padding: 12px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 1.1em;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #357abd;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 20px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        footer p {
            margin: 5px 0;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <header>
        <h1>Đăng nhập</h1>
        <nav>
            <a href="index.jsp">Trang chủ</a>
            <a href="dangky.jsp">Đăng ký</a>
        </nav>
    </header>
    
    <section>
        <form action="loginProcess.jsp" method="POST">
            <label for="username">Số điện thoại:</label>
            <input type="text" id="username" name="username" placeholder="Nhập số điện thoại của bạn" required>
            
            <label for="password">Mật khẩu:</label>
            <input type="password" id="password" name="password" placeholder="Nhập mật khẩu" required>
            
            <button type="submit">Đăng nhập</button>
        </form>
    </section>
    
    <footer>
        <p>© 2025 Trung tâm Gia sư Doremi.</p>
        <p>Liên hệ: Hotline: 0982121680 | Email: lvhProject3@doremi.edu.vn | Địa chỉ: 28A Lê Trọng Tấn, Hà Đông, Hà Nội</p>
    </footer>
</body>
</html>