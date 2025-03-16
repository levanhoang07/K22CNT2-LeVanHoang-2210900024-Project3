package com.lvhspringmvc.dao;

import com.lvhspringmvc.model.LVH_Thanhtoan;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class LVH_ThanhtoanDAO {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Lấy danh sách thanh toán
    public List<LVH_Thanhtoan> getAllThanhtoan() {
        String sql = "SELECT * FROM LvhThanhtoan";
        return jdbcTemplate.query(sql, new ThanhtoanMapper());
    }

    // Lấy thông tin thanh toán theo ID
    public LVH_Thanhtoan getThanhtoanById(int id) {
        String sql = "SELECT * FROM LvhThanhtoan WHERE LvhMaThanhtoan = ?";
        return jdbcTemplate.queryForObject(sql, new ThanhtoanMapper(), id);
    }

    // Thêm mới thanh toán
    public int insertThanhtoan(LVH_Thanhtoan thanhtoan) {
        String sql = "INSERT INTO LvhThanhtoan (LvhMaHocVien, LvhMaGiaSu, LvhSoTien, LvhNgayThanhtoan, LvhLoaiThanhtoan) VALUES (?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                thanhtoan.getLvhMaHocVien(),
                thanhtoan.getLvhMaGiaSu(),
                thanhtoan.getLvhSoTien(),
                thanhtoan.getLvhNgayThanhtoan(),
                thanhtoan.getLvhLoaiThanhtoan());
    }

    // Cập nhật thanh toán
    public int updateThanhtoan(LVH_Thanhtoan thanhtoan) {
        String sql = "UPDATE LvhThanhtoan SET LvhMaHocVien=?, LvhMaGiaSu=?, LvhSoTien=?, LvhNgayThanhtoan=?, LvhLoaiThanhtoan=? WHERE LvhMaThanhtoan=?";
        return jdbcTemplate.update(sql,
                thanhtoan.getLvhMaHocVien(),
                thanhtoan.getLvhMaGiaSu(),
                thanhtoan.getLvhSoTien(),
                thanhtoan.getLvhNgayThanhtoan(),
                thanhtoan.getLvhLoaiThanhtoan(),
                thanhtoan.getLvhMaThanhtoan());
    }

    // Xóa thanh toán
    public int deleteThanhtoan(int id) {
        String sql = "DELETE FROM LvhThanhtoan WHERE LvhMaThanhtoan=?";
        return jdbcTemplate.update(sql, id);
    }

    // RowMapper để ánh xạ dữ liệu từ database
    private static class ThanhtoanMapper implements RowMapper<LVH_Thanhtoan> {
        @Override
        public LVH_Thanhtoan mapRow(ResultSet rs, int rowNum) throws SQLException {
            LVH_Thanhtoan thanhtoan = new LVH_Thanhtoan();
            thanhtoan.setLvhMaThanhtoan(rs.getInt("LvhMaThanhtoan"));
            thanhtoan.setLvhMaHocVien(rs.getInt("LvhMaHocVien"));
            thanhtoan.setLvhMaGiaSu(rs.getInt("LvhMaGiaSu"));
            thanhtoan.setLvhSoTien(rs.getDouble("LvhSoTien"));
            thanhtoan.setLvhNgayThanhtoan(rs.getDate("LvhNgayThanhtoan"));
            thanhtoan.setLvhLoaiThanhtoan(rs.getString("LvhLoaiThanhtoan"));
            return thanhtoan;
        }
    }
}
