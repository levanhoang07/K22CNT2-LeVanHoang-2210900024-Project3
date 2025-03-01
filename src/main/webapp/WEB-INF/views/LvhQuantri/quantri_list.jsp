<%@ page import="java.util.List, com.lvhspringmvc.model.QuanTri" %>
<%
    List<QuanTri> list = (List<QuanTri>) request.getAttribute("list");
%>
<table>
    <tr><th>ID</th><th>Họ Tên</th><th>Email</th><th>Hành động</th></tr>
    <% for (QuanTri qt : list) { %>
    <tr>
        <td><%= qt.getMaQuanTri() %></td>
        <td><%= qt.getHoTen() %></td>
        <td><%= qt.getEmail() %></td>
        <td><a href="quantri?action=edit&id=<%= qt.getMaQuanTri() %>">Sửa</a> | 
            <a href="quantri?action=delete&id=<%= qt.getMaQuanTri() %>">Xóa</a></td>
    </tr>
    <% } %>
</table>
