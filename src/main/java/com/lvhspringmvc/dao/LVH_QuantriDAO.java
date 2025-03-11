package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_QuanTri;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_QuantriDAO {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public LVH_QuantriDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy tất cả quản trị viên
    public List<LVH_QuanTri> getAllQuanTri() {
        String sql = "SELECT * FROM LvhQuanTri";
        return jdbcTemplate.query(sql, new QuanTriMapper());
    }

    // Lấy quản trị viên theo ID
    public LVH_QuanTri getQuanTriById(int id) {
        String sql = "SELECT * FROM LvhQuanTri WHERE LvhMaQuanTri = ?";
        return jdbcTemplate.queryForObject(sql, new QuanTriMapper(), id);
    }

    // Thêm quản trị viên
    public int insertQuanTri(LVH_QuanTri quanTri) {
        String sql = "INSERT INTO LvhQuanTri (LvhHoTen, LvhTenDangNhap, LvhMatKhau, LvhEmail, LvhSoDienThoai) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql, quanTri.getLvhHoTen(), quanTri.getLvhTenDangNhap(), 
                                   quanTri.getLvhMatKhau(), quanTri.getLvhEmail(), quanTri.getLvhSoDienThoai());
    }

    // Cập nhật quản trị viên
    public int updateQuanTri(LVH_QuanTri quanTri) {
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
    private static class QuanTriMapper implements RowMapper<LVH_QuanTri> {
        @Override
        public LVH_QuanTri mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_QuanTri quanTri = new LVH_QuanTri();
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
