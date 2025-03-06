<%@ page import="java.util.List, com.lvhspringmvc.model.QuanTri" %>
<%
    List<QuanTri> list = (List<QuanTri>) request.getAttribute("list");
%>
<table>
    <tr>
        <th>ID</th>
		<th>Họ và tên</th>
		<th>Tên đăng nhập</th>
		<th>Mật khẩu</th>
		<th>Email</th>
		<th>Số điện thoại</th>
		<th>Hành động</th>
    </tr>
    <% for (QuanTri qt : list) { %>
    <tr>
        <td><%= qt.getLvhMaQuanTri() %></td>
        <td><%= qt.getLvhHoTen() %></td>
        <td><%= qt.getLvhTenDangNhap() %></td>
        <td><%= qt.getLvhMatKhau() %></td>
        <td><%= qt.getLvhEmail() %></td>
        <td><%= qt.getLvhSoDienThoai() %></td>
        
        <td>
            <a href="quantri?action=edit&id=<%= qt.getLvhMaQuanTri() %>">Sua</a> | 
            <a href="quantri?action=delete&id=<%= qt.getLvhMaQuanTri() %>" onclick="return confirm('Báº¡n cÃ³ cháº¯c muá»n xÃ³a?');">XÃ³a</a>
        </td>
    </tr>
    <% } %>
</table>
