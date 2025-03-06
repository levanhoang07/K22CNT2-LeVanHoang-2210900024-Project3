package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.QuanTri;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class QuantriDAO {
    private final JdbcTemplate jdbcTemplate;

    public QuantriDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy tất cả quản trị viên
    public List<QuanTri> getAllQuanTri() {
        String sql = "SELECT * FROM LvhQuanTri";
        return jdbcTemplate.query(sql, new QuanTriMapper());
    }

    // Lấy thông tin quản trị viên theo ID
    public QuanTri getQuanTriById(int id) {
        String sql = "SELECT * FROM LvhQuanTri WHERE LvhMaQuanTri = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new QuanTriMapper(), id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm mới quản trị viên
    public int insertQuanTri(QuanTri qt) {
        String sql = "INSERT INTO LvhQuanTri (LvhHoTen, LvhTenDangNhap, LvhMatKhau, LvhEmail, LvhSoDienThoai) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, qt.getLvhHoTen(), qt.getLvhTenDangNhap(), qt.getLvhMatKhau(), qt.getLvhEmail(), qt.getLvhSoDienThoai());
    }

    // Cập nhật thông tin quản trị viên
    public int updateQuanTri(QuanTri qt) {
        String sql = "UPDATE LvhQuanTri SET LvhHoTen=?, LvhTenDangNhap=?, LvhMatKhau=?, LvhEmail=?, LvhSoDienThoai=? WHERE LvhMaQuanTri=?";
        return jdbcTemplate.update(sql, qt.getLvhHoTen(), qt.getLvhTenDangNhap(), qt.getLvhMatKhau(), qt.getLvhEmail(), qt.getLvhSoDienThoai(), qt.getLvhMaQuanTri());
    }

    // Xóa quản trị viên theo ID
    public int deleteQuanTri(int id) {
        String sql = "DELETE FROM LvhQuanTri WHERE LvhMaQuanTri = ?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ ResultSet thành QuanTri
    private static class QuanTriMapper implements RowMapper<QuanTri> {
        @Override
        public QuanTri mapRow(ResultSet rs, int rowNum) throws SQLException {
            return new QuanTri(
                rs.getInt("LvhMaQuanTri"),
                rs.getString("LvhHoTen"),
                rs.getString("LvhTenDangNhap"),
                rs.getString("LvhMatKhau"),
                rs.getString("LvhEmail"),
                rs.getString("LvhSoDienThoai")
            );
        }
    }
}
