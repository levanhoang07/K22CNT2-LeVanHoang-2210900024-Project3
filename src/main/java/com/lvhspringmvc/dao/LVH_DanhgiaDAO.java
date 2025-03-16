package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Danhgia;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_DanhgiaDAO {

    private final JdbcTemplate jdbcTemplate;

    // Constructor Injection
    public LVH_DanhgiaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy danh sách tất cả đánh giá
    public List<LVH_Danhgia> getAllDanhgia() {
        String sql = "SELECT * FROM LvhDanhGia";
        return jdbcTemplate.query(sql, new DanhgiaMapper());
    }

    // Lấy một đánh giá theo ID
    public LVH_Danhgia getDanhgiaById(int id) {
        String sql = "SELECT * FROM LvhDanhGia WHERE LvhMaDanhGia = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{id}, new DanhgiaMapper());
        } catch (Exception e) {
            return null; // Trả về null nếu không tìm thấy
        }
    }

    // Thêm mới một đánh giá
    public int insertDanhgia(LVH_Danhgia danhgia) {
        String sql = "INSERT INTO LvhDanhGia (LvhHoTen, LvhSoDienThoai, LvhBinhLuan) VALUES (?, ?, ?)";
        return jdbcTemplate.update(sql,
                danhgia.getLvhHoTen(),
                danhgia.getLvhSoDienThoai(),
                danhgia.getLvhBinhLuan());
    }

    // Cập nhật đánh giá
    public int updateDanhgia(LVH_Danhgia danhgia) {
        String sql = "UPDATE LvhDanhGia SET LvhHoTen=?, LvhSoDienThoai=?, LvhBinhLuan=? WHERE LvhMaDanhGia=?";
        return jdbcTemplate.update(sql,
                danhgia.getLvhHoTen(),
                danhgia.getLvhSoDienThoai(),
                danhgia.getLvhBinhLuan(),
                danhgia.getLvhMaDanhGia());
    }

    // Xóa đánh giá
    public int deleteDanhgia(int id) {
        String sql = "DELETE FROM LvhDanhGia WHERE LvhMaDanhGia=?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ dữ liệu từ ResultSet vào đối tượng LVH_Danhgia
    private static class DanhgiaMapper implements RowMapper<LVH_Danhgia> {
        @Override
        public LVH_Danhgia mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_Danhgia danhgia = new LVH_Danhgia();
            danhgia.setLvhMaDanhGia(rs.getInt("LvhMaDanhGia"));
            danhgia.setLvhHoTen(rs.getString("LvhHoTen"));
            danhgia.setLvhSoDienThoai(rs.getString("LvhSoDienThoai"));
            danhgia.setLvhBinhLuan(rs.getString("LvhBinhLuan"));
            return danhgia;
        }
    }
}
