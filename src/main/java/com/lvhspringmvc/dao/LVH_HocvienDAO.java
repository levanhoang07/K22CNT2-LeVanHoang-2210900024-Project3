package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Hocvien;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_HocvienDAO {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    // Lấy tất cả học viên
    public List<LVH_Hocvien> getAllHocVien() {
        String sql = "SELECT * FROM LvhHocVien";
        return jdbcTemplate.query(sql, new HocvienMapper());
    }

    // Lấy thông tin học viên theo ID
    public LVH_Hocvien getHocVienById(int id) {
        String sql = "SELECT * FROM LvhHocVien WHERE LvhMaHocVien = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new HocvienMapper(), id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm mới học viên
    public int insertHocVien(LVH_Hocvien hv) {
        String sql = "INSERT INTO LvhHocVien (LvhHoTen, LvhNgaySinh, LvhGioiTinh, LvhSoDienThoai, LvhEmail, LvhDiaChi, LvhLopMuonHoc, LvhMatKhau, LvhTrangThai) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                hv.getLvhHoTen(),
                hv.getLvhNgaySinh(),
                hv.getLvhGioiTinh(),
                hv.getLvhSoDienThoai(),
                hv.getLvhEmail(),
                hv.getLvhDiaChi(),
                hv.getLvhLopMuonHoc(),
                hv.getLvhMatKhau(),
                hv.getLvhTrangThai());
    }

    // Cập nhật thông tin học viên
    public int updateHocVien(LVH_Hocvien hv) {
        if (hv.getLvhMaHocVien() == null) {
            return 0; // Nếu ID null thì không update
        }
        String sql = "UPDATE LvhHocVien SET LvhHoTen=?, LvhNgaySinh=?, LvhGioiTinh=?, LvhSoDienThoai=?, LvhEmail=?, LvhDiaChi=?, LvhLopMuonHoc=?, LvhMatKhau=?, LvhTrangThai=? WHERE LvhMaHocVien=?";
        return jdbcTemplate.update(sql,
                hv.getLvhHoTen(),
                hv.getLvhNgaySinh(),
                hv.getLvhGioiTinh(),
                hv.getLvhSoDienThoai(),
                hv.getLvhEmail(),
                hv.getLvhDiaChi(),
                hv.getLvhLopMuonHoc(),
                hv.getLvhMatKhau(),
                hv.getLvhTrangThai(),
                hv.getLvhMaHocVien());
    }

    // Xóa học viên
    public int deleteHocVien(int id) {
        String sql = "DELETE FROM LvhHocVien WHERE LvhMaHocVien = ?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ ResultSet thành HV
    private static class HocvienMapper implements RowMapper<LVH_Hocvien> {
        @Override
        public LVH_Hocvien mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_Hocvien hv = new LVH_Hocvien();
            hv.setLvhMaHocVien(rs.getInt("LvhMaHocVien"));
            hv.setLvhHoTen(rs.getString("LvhHoTen"));
            hv.setLvhNgaySinh(rs.getString("LvhNgaySinh"));
            hv.setLvhGioiTinh(rs.getString("LvhGioiTinh"));
            hv.setLvhSoDienThoai(rs.getString("LvhSoDienThoai"));
            hv.setLvhEmail(rs.getString("LvhEmail"));
            hv.setLvhDiaChi(rs.getString("LvhDiaChi"));
            hv.setLvhLopMuonHoc(rs.getString("LvhLopMuonHoc"));
            hv.setLvhMatKhau(rs.getString("LvhMatKhau"));
            hv.setLvhTrangThai(rs.getBoolean("LvhTrangThai"));
            return hv;
        }
    }
}
