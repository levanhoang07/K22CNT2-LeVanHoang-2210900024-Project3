package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Quantri;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_QuantriDAO {
    private JdbcTemplate jdbcTemplate;

    // Setter hợp lệ cho jdbcTemplate
    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Getter cho jdbcTemplate
    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    // Lấy tất cả quản trị viên
    public List<LVH_Quantri> getAllQuanTri() {
        String sql = "SELECT * FROM LvhQuanTri";
        return jdbcTemplate.query(sql, new QuanTriMapper());
        
    }

    // Lấy quản trị viên theo ID
    public LVH_Quantri getQuanTriById(int id) {
        String sql = "SELECT * FROM LvhQuanTri WHERE LvhMaQuanTri = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new QuanTriMapper(), id);
        } catch (Exception e) {
            return null; // Không tìm thấy quản trị viên với ID này
        }
    }

    // Thêm quản trị viên
    public int insertQuanTri(LVH_Quantri quanTri) {
        if (quanTri == null || quanTri.getLvhHoTen() == null || quanTri.getLvhTenDangNhap() == null) {
            throw new IllegalArgumentException("Tên quản trị viên và tên đăng nhập không thể để trống");
        }
        String sql = "INSERT INTO LvhQuanTri (LvhHoTen, LvhTenDangNhap, LvhMatKhau, LvhEmail, LvhSoDienThoai) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, quanTri.getLvhHoTen(), quanTri.getLvhTenDangNhap(), 
                                   quanTri.getLvhMatKhau(), quanTri.getLvhEmail(), quanTri.getLvhSoDienThoai());
    }

    // Cập nhật quản trị viên
    public int updateQuanTri(LVH_Quantri quanTri) {
        if (quanTri == null || quanTri.getLvhMaQuanTri() <= 0) {
            throw new IllegalArgumentException("ID của quản trị viên không hợp lệ");
        }
        String sql = "UPDATE LvhQuanTri SET LvhHoTen = ?, LvhTenDangNhap = ?, LvhMatKhau = ?, LvhEmail = ?, LvhSoDienThoai = ? WHERE LvhMaQuanTri = ?";
        return jdbcTemplate.update(sql, quanTri.getLvhHoTen(), quanTri.getLvhTenDangNhap(), 
                                   quanTri.getLvhMatKhau(), quanTri.getLvhEmail(), quanTri.getLvhSoDienThoai(), 
                                   quanTri.getLvhMaQuanTri());
    }

    // Xóa quản trị viên
    public int deleteQuanTri(int id) {
        String sql = "DELETE FROM LvhQuanTri WHERE LvhMaQuanTri = ?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ ResultSet thành đối tượng LVH_QuanTri
    private static class QuanTriMapper implements RowMapper<LVH_Quantri> {
        @Override
        public LVH_Quantri mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_Quantri quanTri = new LVH_Quantri();
            quanTri.setLvhMaQuanTri(rs.getInt("LvhMaQuanTri"));
            quanTri.setLvhHoTen(rs.getString("LvhHoTen"));
            quanTri.setLvhTenDangNhap(rs.getString("LvhTenDangNhap"));
            quanTri.setLvhMatKhau(rs.getString("LvhMatKhau"));
            quanTri.setLvhEmail(rs.getString("LvhEmail"));
            quanTri.setLvhSoDienThoai(rs.getString("LvhSoDienThoai"));
            return quanTri;
        }
    }
}
