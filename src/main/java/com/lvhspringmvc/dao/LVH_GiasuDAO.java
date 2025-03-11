package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Giasu;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_GiasuDAO {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    // Lấy tất cả gia sư
    public List<LVH_Giasu> getAllGiasu() {
        String sql = "SELECT * FROM LvhGiaSu";
        return jdbcTemplate.query(sql, new GiasuMapper());
    }

    // Lấy gia sư theo ID
    public LVH_Giasu getGiasuById(int id) {
        String sql = "SELECT * FROM LvhGiaSu WHERE LvhMaGiaSu = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new GiasuMapper(), id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm mới gia sư
    public int insertGiasu(LVH_Giasu giasu) {
        String sql = "INSERT INTO LvhGiaSu (LvhHoTen, LvhNgaySinh, LvhGioiTinh, LvhSoDienThoai, LvhEmail, LvhDiaChi, LvhTrinhDo, LvhAnh, LvhMucLuong, LvhMatKhau, LvhTrangThai) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                giasu.getLvhHoTen(),
                giasu.getLvhNgaySinh(),
                giasu.getLvhGioiTinh(),
                giasu.getLvhSoDienThoai(),
                giasu.getLvhEmail(),
                giasu.getLvhDiaChi(),
                giasu.getLvhTrinhDo(),
                giasu.getLvhAnh(),
                giasu.getLvhMucLuong(),
                giasu.getLvhMatKhau(),
                giasu.getLvhTrangThai());
    }

    // Cập nhật gia sư
    public int updateGiasu(LVH_Giasu giasu) {
        if (giasu.getLvhMaGiaSu() == null) {
            return 0; // Nếu ID null thì không update
        }
        String sql = "UPDATE LvhGiaSu SET LvhHoTen=?, LvhNgaySinh=?, LvhGioiTinh=?, LvhSoDienThoai=?, LvhEmail=?, LvhDiaChi=?, LvhTrinhDo=?, LvhAnh=?, LvhMucLuong=?, LvhMatKhau=?, LvhTrangThai=? WHERE LvhMaGiaSu=?";
        return jdbcTemplate.update(sql,
                giasu.getLvhHoTen(),
                giasu.getLvhNgaySinh(),
                giasu.getLvhGioiTinh(),
                giasu.getLvhSoDienThoai(),
                giasu.getLvhEmail(),
                giasu.getLvhDiaChi(),
                giasu.getLvhTrinhDo(),
                giasu.getLvhAnh(),
                giasu.getLvhMucLuong(),
                giasu.getLvhMatKhau(),
                giasu.getLvhTrangThai(),
                giasu.getLvhMaGiaSu());
    }

    // Xóa gia sư
    public int deleteGiasu(int id) {
        String sql = "DELETE FROM LvhGiaSu WHERE LvhMaGiaSu = ?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ ResultSet thành Giasu
    private static class GiasuMapper implements RowMapper<LVH_Giasu> {
        @Override
        public LVH_Giasu mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_Giasu giasu = new LVH_Giasu();
            giasu.setLvhMaGiaSu(rs.getInt("LvhMaGiaSu"));
            giasu.setLvhHoTen(rs.getString("LvhHoTen"));
            giasu.setLvhNgaySinh(rs.getDate("LvhNgaySinh"));
            giasu.setLvhGioiTinh(rs.getString("LvhGioiTinh"));
            giasu.setLvhSoDienThoai(rs.getString("LvhSoDienThoai"));
            giasu.setLvhEmail(rs.getString("LvhEmail"));
            giasu.setLvhDiaChi(rs.getString("LvhDiaChi"));
            giasu.setLvhTrinhDo(rs.getString("LvhTrinhDo"));
            giasu.setLvhAnh(rs.getString("LvhAnh"));
            giasu.setLvhMucLuong(rs.getDouble("LvhMucLuong"));
            giasu.setLvhMatKhau(rs.getString("LvhMatKhau"));
            giasu.setLvhTrangThai(rs.getBoolean("LvhTrangThai"));
            return giasu;
        }
    }
}
