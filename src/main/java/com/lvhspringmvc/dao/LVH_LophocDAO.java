package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Lophoc;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_LophocDAO {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    // Lấy tất cả lớp học
    public List<LVH_Lophoc> getAllLopHoc() {
        String sql = "SELECT * FROM LvhLopHoc";
        return jdbcTemplate.query(sql, new LopHocMapper());
    }

    // Lấy thông tin lớp học theo ID
    public LVH_Lophoc getLopHocById(int id) {
        String sql = "SELECT * FROM LvhLopHoc WHERE LvhMaLop = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new LopHocMapper(), id);
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm lớp học mới
    public int insertLopHoc(LVH_Lophoc lopHoc) {
        String sql = "INSERT INTO LvhLopHoc (LvhTenLop, LvhMonHoc, LvhMaGiaSu, LvhMaHocVien, LvhThoiGianHoc, LvhDiaDiemHoc) " +
                     "VALUES (?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                lopHoc.getLvhTenLop(),
                lopHoc.getLvhMonHoc(),
                lopHoc.getLvhMaGiaSu(),
                lopHoc.getLvhMaHocVien(),
                lopHoc.getLvhThoiGianHoc(),
                lopHoc.getLvhDiaDiemHoc());
    }

    // Cập nhật lớp học
    public int updateLopHoc(LVH_Lophoc lopHoc) {
        String sql = "UPDATE LvhLopHoc SET LvhTenLop=?, LvhMonHoc=?, LvhMaGiaSu=?, LvhMaHocVien=?, LvhThoiGianHoc=?, LvhDiaDiemHoc=? WHERE LvhMaLop=?";
        return jdbcTemplate.update(sql,
                lopHoc.getLvhTenLop(),
                lopHoc.getLvhMonHoc(),
                lopHoc.getLvhMaGiaSu(),
                lopHoc.getLvhMaHocVien(),
                lopHoc.getLvhThoiGianHoc(),
                lopHoc.getLvhDiaDiemHoc(),
                lopHoc.getLvhMaLop());
    }

    // Xóa lớp học
    public int deleteLopHoc(int id) {
        String sql = "DELETE FROM LvhLopHoc WHERE LvhMaLop = ?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ ResultSet thành LopHoc
    private static class LopHocMapper implements RowMapper<LVH_Lophoc> {
        @Override
        public LVH_Lophoc mapRow(ResultSet rs, int rowNum) throws SQLException {
        	LVH_Lophoc lopHoc = new LVH_Lophoc();
            lopHoc.setLvhMaLop(rs.getInt("LvhMaLop"));
            lopHoc.setLvhTenLop(rs.getString("LvhTenLop"));
            lopHoc.setLvhMonHoc(rs.getString("LvhMonHoc"));
            lopHoc.setLvhMaGiaSu(rs.getInt("LvhMaGiaSu"));
            lopHoc.setLvhMaHocVien(rs.getInt("LvhMaHocVien"));
            lopHoc.setLvhThoiGianHoc(rs.getString("LvhThoiGianHoc"));
            lopHoc.setLvhDiaDiemHoc(rs.getString("LvhDiaDiemHoc"));
            return lopHoc;
        }
    }
}
