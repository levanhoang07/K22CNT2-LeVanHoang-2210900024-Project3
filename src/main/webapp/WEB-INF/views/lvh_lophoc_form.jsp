<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Form lớp học</title>
</head>
<body>
    <h1>${lopHoc != null ? 'Cập nhật lớp học' : 'Thêm lớp học mới'}</h1>
    <form:form method="POST" action="${lopHoc != null ? '/lophoc/update' : '/lophoc/save'}">
        <form:hidden path="lvhMaLop" value="${lopHoc.lvhMaLop}"/>
        
        <label for="lvhTenLop">Tên lớp:</label>
        <form:input path="lvhTenLop" id="lvhTenLop" value="${lopHoc.lvhTenLop}"/><br/>

        <label for="lvhMonHoc">Môn học:</label>
        <form:input path="lvhMonHoc" id="lvhMonHoc" value="${lopHoc.lvhMonHoc}"/><br/>

        <label for="lvhMaGiaSu">Mã gia sư:</label>
        <form:input path="lvhMaGiaSu" id="lvhMaGiaSu" value="${lopHoc.lvhMaGiaSu}"/><br/>

        <label for="lvhMaHocVien">Mã học viên:</label>
        <form:input path="lvhMaHocVien" id="lvhMaHocVien" value="${lopHoc.lvhMaHocVien}"/><br/>

        <label for="lvhThoiGianHoc">Thời gian học:</label>
        <form:input path="lvhThoiGianHoc" id="lvhThoiGianHoc" value="${lopHoc.lvhThoiGianHoc}"/><br/>

        <label for="lvhDiaDiemHoc">Địa điểm học:</label>
        <form:input path="lvhDiaDiemHoc" id="lvhDiaDiemHoc" value="${lopHoc.lvhDiaDiemHoc}"/><br/>

        <button type="submit">${lopHoc != null ? 'Cập nhật' : 'Thêm'}</button>
    </form:form>
</body>
</html>
