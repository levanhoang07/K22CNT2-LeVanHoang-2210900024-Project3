package com.lvhspringmvc.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import com.lvhspringmvc.model.QuanTri;

public class QuantriDAO {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/K22CNT3_LeVanHoang_2210900024_Project3";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "Hoang@123";

    private static final String INSERT_SQL = "INSERT INTO QuanTri (LvhHoTen, LvhTenDangNhap, LvhMatKhau, LvhEmail, LvhSoDienThoai) VALUES (?, ?, ?, ?, ?)";
    private static final String SELECT_ALL = "SELECT * FROM QuanTri";
    private static final String SELECT_BY_ID = "SELECT * FROM QuanTri WHERE LvhMaQuanTri=?";
    private static final String UPDATE_SQL = "UPDATE QuanTri SET LvhHoTen=?, LvhTenDangNhap=?, LvhMatKhau=?, LvhEmail=?, LvhSoDienThoai=? WHERE LvhMaQuanTri=?";
    private static final String DELETE_SQL = "DELETE FROM QuanTri WHERE LvhMaQuanTri=?";

    // Lấy kết nối đến database
    protected Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);
    }

    // Lấy tất cả quản trị viên
    public List<QuanTri> getAllQuanTri() {
        List<QuanTri> list = new ArrayList<>();
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_ALL);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                list.add(new QuanTri(
                        rs.getInt("LvhMaQuanTri"),
                        rs.getString("LvhHoTen"),
                        rs.getString("LvhTenDangNhap"),
                        rs.getString("LvhMatKhau"),
                        rs.getString("LvhEmail"),
                        rs.getString("LvhSoDienThoai")));
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy danh sách quản trị: " + e.getMessage());
        }
        return list;
    }

    // Lấy thông tin quản trị viên theo ID
    public QuanTri getQuanTriById(int id) {
        QuanTri quanTri = null;
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(SELECT_BY_ID)) {
            ps.setInt(1, id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    quanTri = new QuanTri(
                            rs.getInt("LvhMaQuanTri"),
                            rs.getString("LvhHoTen"),
                            rs.getString("LvhTenDangNhap"),
                            rs.getString("LvhMatKhau"),
                            rs.getString("LvhEmail"),
                            rs.getString("LvhSoDienThoai"));
                }
            }
        } catch (SQLException e) {
            System.err.println("Lỗi khi lấy quản trị viên có ID " + id + ": " + e.getMessage());
        }
        return quanTri;
    }

    // Thêm mới quản trị viên
    public boolean insertQuanTri(QuanTri qt) {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(INSERT_SQL)) {
            ps.setString(1, qt.getHoTen());
            ps.setString(2, qt.getTenDangNhap());
            ps.setString(3, qt.getMatKhau());
            ps.setString(4, qt.getEmail());
            ps.setString(5, qt.getSoDienThoai());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi thêm quản trị viên: " + e.getMessage());
        }
        return false;
    }

    // Cập nhật thông tin quản trị viên
    public boolean updateQuanTri(QuanTri qt) {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(UPDATE_SQL)) {
            ps.setString(1, qt.getHoTen());
            ps.setString(2, qt.getTenDangNhap());
            ps.setString(3, qt.getMatKhau());
            ps.setString(4, qt.getEmail());
            ps.setString(5, qt.getSoDienThoai());
            ps.setInt(6, qt.getMaQuanTri());
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi cập nhật quản trị viên có ID " + qt.getMaQuanTri() + ": " + e.getMessage());
        }
        return false;
    }

    // Xóa quản trị viên theo ID
    public boolean deleteQuanTri(int id) {
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(DELETE_SQL)) {
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.err.println("Lỗi khi xóa quản trị viên có ID " + id + ": " + e.getMessage());
        }
        return false;
    }
}
